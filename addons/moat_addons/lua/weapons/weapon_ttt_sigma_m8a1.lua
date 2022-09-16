AddCSLuaFile()

SWEP.HoldType			= "ar2"
SWEP.PrintName			= "Sigma M8A1"
if CLIENT then
   SWEP.Slot				= 2

   SWEP.Icon = "vgui/hud/weapon_xm8b"
end
SWEP.Base				= "weapon_tttbase"
DEFINE_BASECLASS("weapon_tttbase")
SWEP.Spawnable = true

SWEP.Kind = WEAPON_HEAVY
SWEP.WeaponID = AMMO_AK47

SWEP.Primary.Delay			= 0.095
SWEP.Primary.Recoil			= 0.8
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "SMG1"
SWEP.Primary.Cone = 0.025
SWEP.Primary.Damage = 18
SWEP.Primary.ClipSize = 30
SWEP.Primary.ClipMax = 90
SWEP.Primary.DefaultClip = 30
SWEP.AutoSpawnable      = false
SWEP.AmmoEnt = "item_ammo_smg1_ttt"

SWEP.UseHands			= true
SWEP.ViewModelFOV   = 70
SWEP.ViewModelFlip			= true
SWEP.ViewModel				= "models/weapons/v_pvp_xm8.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_pvp_xm8.mdl"	-- Weapon world model

SWEP.ShowWorldModel                     = false

SWEP.Primary.Sound = Sound( "Weapon_XM.fire" )
SWEP.Secondary.Sound = Sound( "Default.Zoom" )
SWEP.DeploySpeed = 1.4
SWEP.ReloadSpeed = 1.4
SWEP.ReloadAnim = {
	DefaultReload = {
		Anim = "reload",
		Time = 3.4,
	},
}

--- burst function

function SWEP:SetupDataTables()
	self:NetworkVar("Float", 1, "NextBurstFire")
	self:NetworkVar("Int", 1, "BurstRound")

	return BaseClass.SetupDataTables(self)
end

function SWEP:Initialize()
	BaseClass.Initialize(self)
	self:SetBurstRound(-1)
end

function SWEP:Holster()
	self:SetBurstRound(-1)

	return BaseClass.Holster(self)
end

function SWEP:Think()
	BaseClass.Think(self)

	if (self:GetBurstRound() >= 0 and self:GetBurstRound() < 2 and self:GetNextBurstFire() <= CurTime()) then
		if (not self.Owner:KeyDown(IN_ATTACK)) then
			self:SetBurstRound(-1)
			self:SetNextPrimaryFire(CurTime() + self.Primary.Delay * 1.5)
			return
		end

		self:FireABullet()
		self:SetBurstRound(self:GetBurstRound() + 1)
		self:SetNextBurstFire(CurTime() + self.Primary.Delay)
	end
end

function SWEP:FireABullet()
	if (not self:CanPrimaryAttack()) then
		return
	end

	self:EmitSound(self.Primary.Sound, self.Primary.SoundLevel)

	self:ShootBullet(self.Primary.Damage, self.Primary.Recoil, self.Primary.NumShots, self:GetPrimaryCone())
	self:TakePrimaryAmmo(1)

	if (not IsValid(self.Owner) or not self.Owner.ViewPunch) then
		return
	end

	self.Owner:ViewPunch(Angle(-self.Primary.Recoil, 0, 0))
end

function SWEP:PrimaryAttack()
	if (not self:CanPrimaryAttack()) then
		return
	end

	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay * 4)

	self:SetBurstRound(0)
	self:SetNextBurstFire(CurTime() + self.Primary.Delay)

	self:FireABullet()
end

--- End of burst function

function SWEP:SetZoom(state)
   	if (not (IsValid(self.Owner) and self.Owner:IsPlayer())) then return end
   	if (state) then
      	self.Owner:SetFOV(20, 0.3)
   	else
      	self.Owner:SetFOV(0, 0.2)
   	end
end

SWEP.IronSightsPos = Vector( 5, -15, -2 )
SWEP.IronSightsAng = Vector( 2.6, 1.37, 3.5 )
SWEP.Scope = true

SWEP.Offset = {
        Pos = {
        Up = 4,
        Right = 0.8,
        Forward = -6,
        },
        Ang = {
        Up = 0,
        Right = -9,
        Forward = 180,
        },
		Scale = 1.0
}

function SWEP:DrawWorldModel()
    local hand, offset, rotate
    local pl = self:GetOwner()

    if IsValid(pl) and pl.SetupBones then
        pl:SetupBones()
        pl:InvalidateBoneCache()
        self:InvalidateBoneCache()
    end

    if IsValid(pl) then
        local boneIndex = pl:LookupBone("ValveBiped.Bip01_R_Hand")

        if boneIndex then
            local pos, ang

            local mat = pl:GetBoneMatrix(boneIndex)
            if mat then
                pos, ang = mat:GetTranslation(), mat:GetAngles()
            else
                pos, ang = pl:GetBonePosition( handBone )
            end

            pos = pos + ang:Forward() * self.Offset.Pos.Forward + ang:Right() * self.Offset.Pos.Right + ang:Up() * self.Offset.Pos.Up
            ang:RotateAroundAxis(ang:Up(), self.Offset.Ang.Up)
            ang:RotateAroundAxis(ang:Right(), self.Offset.Ang.Right)
            ang:RotateAroundAxis(ang:Forward(), self.Offset.Ang.Forward)
            self:SetRenderOrigin(pos)
            self:SetRenderAngles(ang)
            self:DrawModel()
        end
    else
        self:SetRenderOrigin(nil)
        self:SetRenderAngles(nil)
        self:DrawModel()
    end
end

if CLIENT then
   local scope = surface.GetTextureID( "sprites/scope" )
   function SWEP:DrawHUD()
      if self:GetIronsights() then
         surface.SetDrawColor( 0, 0, 0, 255 )

         local scrW = ScrW()
         local scrH = ScrH()

         local x = scrW / 2.0
         local y = scrH / 2.0
         local scope_size = scrH

         -- Crosshair
         local gap = 80
         local length = scope_size
         surface.DrawLine( x - length, y, x - gap, y )
         surface.DrawLine( x + length, y, x + gap, y )
         surface.DrawLine( x, y - length, x, y - gap )
         surface.DrawLine( x, y + length, x, y + gap )

         gap = 0
         length = 50
         surface.DrawLine( x - length, y, x - gap, y )
         surface.DrawLine( x + length, y, x + gap, y )
         surface.DrawLine( x, y - length, x, y - gap )
         surface.DrawLine( x, y + length, x, y + gap )

         -- Cover edges
         local sh = scope_size / 2
         local w = ( x - sh ) + 2
         surface.DrawRect( 0, 0, w, scope_size )
         surface.DrawRect( x + sh - 2, 0, w, scope_size )

         -- Cover gaps on top and bottom of screen
         surface.DrawLine( 0, 0, scrW, 0 )
         surface.DrawLine( 0, scrH - 1, scrW, scrH - 1 )

         surface.SetDrawColor( 255, 0, 0, 255 )
         surface.DrawLine( x, y, x + 1, y + 1 )

         -- Scope
         surface.SetTexture( scope )
         surface.SetDrawColor( 255, 255, 255, 255 )

         surface.DrawTexturedRectRotated( x, y, scope_size, scope_size, 0 )
      else
         return self.BaseClass.DrawHUD( self )
      end
   end

   function SWEP:AdjustMouseSensitivity()
      return ( self:GetIronsights() and 0.2 ) or nil
   end
end