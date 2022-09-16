AddCSLuaFile()

SWEP.HoldType			= "pistol"
SWEP.PrintName			= "MP9"

if CLIENT then
   SWEP.Slot				= 1

   SWEP.ViewModelFlip		= false

   SWEP.Icon = "vgui/entities/cw_tr09_mp9"
   SWEP.IconLetter = "z"
end

SWEP.Base				= "weapon_tttbase"

SWEP.Spawnable = true

SWEP.Kind = WEAPON_PISTOL
SWEP.WeaponID = AMMO_MP9
SWEP.ENUM = 1

SWEP.Primary.Damage         = 12.5
SWEP.Primary.Delay = 0.07
SWEP.Primary.Cone           = 0.03
SWEP.Primary.ClipSize = 15
SWEP.Primary.ClipMax = 45
SWEP.Primary.DefaultClip	= 15
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "SMG1"
SWEP.AutoSpawnable      = false
SWEP.Primary.Recoil			= 1.7
SWEP.Primary.Sound			= Sound("Weapon_TMP.Shoot")
SWEP.Primary.Range          = 1100
SWEP.AmmoEnt = "item_ammo_smg1_ttt"

SWEP.UseHands			= true
SWEP.ViewModelFlip		= false
SWEP.ViewModelFOV		= 70
SWEP.ViewModel			= "models/weapons/therambotnic09/v_cw2_mp9.mdl"
SWEP.WorldModel			= "models/weapons/therambotnic09/w_cw2_mp9.mdl"

SWEP.HeadshotMultiplier = 2.2
SWEP.LimbMultiplier     = 0.7

SWEP.IronSightsPos = Vector(-1.85, -1, 0.6)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.DeploySpeed = 1.4
SWEP.ReloadSpeed = 1
SWEP.ReloadAnim = {
	DefaultReload = {
		Anim = "reload",
		Time = 2.4,
	}
}

SWEP.Offset = {
    Pos = {
        Up = 2.5,
        Right = 1,
        Forward = -1.7,
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