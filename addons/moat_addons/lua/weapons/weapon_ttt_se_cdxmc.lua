AddCSLuaFile()

SWEP.HoldType			= "ar2"
SWEP.PrintName			= "CDX-MC"

if CLIENT then
   SWEP.Slot				= 2

   SWEP.ViewModelFlip		= false

   SWEP.Icon = "vgui/hud/tfa_ins2_warface_cdxmc_kraken"
   SWEP.IconLetter = "z"
end

SWEP.Base				= "weapon_tttbase"

SWEP.Spawnable = true

SWEP.Kind = WEAPON_HEAVY
SWEP.WeaponID = AMMO_CDXMC
SWEP.ENUM = 1

SWEP.Primary.Damage         = 55
SWEP.Primary.Delay = 0.7
SWEP.Primary.Cone           = 0.0001
SWEP.Primary.ClipSize = 10
SWEP.Primary.ClipMax = 30
SWEP.Primary.DefaultClip	= 10
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "357"
SWEP.AutoSpawnable      = false
SWEP.Primary.Recoil			= 8
SWEP.Primary.Sound			= Sound("TFA_INS2.Warface_CDXMC_Kraken.Fire")
SWEP.Primary.Range          = 1100
SWEP.AmmoEnt = "item_ammo_357_ttt"

SWEP.UseHands			= true
SWEP.ViewModelFlip		= false
SWEP.ViewModelFOV		= 70
SWEP.ViewModel			= "models/weapons/c_ins2_warface_cdxmc_kraken.mdl"
SWEP.WorldModel			= "models/weapons/w_ins2_warface_cdxmc_kraken.mdl"

SWEP.HeadshotMultiplier = 5

SWEP.IronSightsPos = Vector(-3.6, -4, 1)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.DeploySpeed = 1.4
SWEP.ReloadSpeed = 1.2
SWEP.ReloadAnim = {
	DefaultReload = {
		Anim = "base_reload",
		Time = 3.3,
	},
	ReloadEmpty = {
		Anim = "base_reloadempty",
		Time = 5.3,
	}
}

SWEP.Offset = {
    Pos = {
        Up = -.5,
        Right = 1,
        Forward = 3,
    },
    Ang = {
        Up = 0,
        Right = 354,
        Forward = 180,
    }
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

function SWEP:PrimaryAttack(worldsnd)
    if (not self:CanPrimaryAttack()) then return end
    local delay = self:GetCurrentDelay()
    -- self:SetNextSecondaryFire(CurTime() + self.Primary.Delay)
    self:SetNextPrimaryFire(CurTime() + delay)
    self:SetReloadTimer(CurTime() + delay)

    -- self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
    if (not worldsnd) then
        self:EmitSound(self.Primary.Sound, self.Primary.SoundLevel)
    elseif (SERVER) then
        sound.Play(self.Primary.Sound, self:GetPos(), self.Primary.SoundLevel)
    end

    self:ShootBullet(self.Primary.Damage, self.Primary.Recoil, self.Primary.NumShots, self:GetPrimaryCone(), self:GetPrimaryConeY())
    self:TakePrimaryAmmo(1)
    if self:Clip1() <= 0 then
        self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_EMPTY)
        if (SERVER) then
            sound.Play("blast_m1garand.clipout", self:GetPos(), self.Primary.SoundLevel)
        end
    end
    if (not IsValid(self.Owner)) then return end

    if (self.ViewPunch) then
        self:ViewPunch(worldsnd)
    elseif (self.Owner.ViewPunch) then
        self:GetOwner():ViewPunch(Angle(util.SharedRandom(self:GetClass(), -0.2, -0.1, 0) * self.Primary.Recoil, util.SharedRandom(self:GetClass(), -0.1, 0.1, 1) * self.Primary.Recoil, 0))
    end
end