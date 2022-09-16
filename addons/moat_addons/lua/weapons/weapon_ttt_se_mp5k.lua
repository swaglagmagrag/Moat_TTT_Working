AddCSLuaFile()

SWEP.HoldType			= "smg"
SWEP.PrintName			= "MP5K SE"

if CLIENT then
   SWEP.Slot				= 2

   SWEP.ViewModelFlip		= false

   SWEP.Icon = "vgui/hud/tfa_ins2_mp5k"
   SWEP.IconLetter = "z"
end

SWEP.Base				= "weapon_tttbase"

SWEP.Spawnable = true

SWEP.Kind = WEAPON_HEAVY
SWEP.WeaponID = AMMO_MP5KSE
SWEP.ENUM = 1

SWEP.Primary.Damage         = 21
SWEP.Primary.Delay = 0.085
SWEP.Primary.Cone           = 0.02
SWEP.Primary.ClipSize = 30
SWEP.Primary.ClipMax = 90
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "SMG1"
SWEP.AutoSpawnable      = false
SWEP.Primary.Recoil			= 1.6
SWEP.Primary.Sound			= Sound("TFA_INS2.MP5K.Shoot")
SWEP.Primary.Range          = 1100
SWEP.AmmoEnt = "item_ammo_smg1_ttt"

SWEP.UseHands			= true
SWEP.ViewModelFlip		= false
SWEP.ViewModelFOV		= 70
SWEP.ViewModel			= "models/weapons/tfa_ins2/c_mp5k.mdl"
SWEP.WorldModel			= "models/weapons/tfa_ins2/w_mp5k.mdl"

SWEP.HeadshotMultiplier = 1.8

SWEP.IronSightsPos = Vector(-2.9, -1, 0.6)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.DeploySpeed = 1.4
SWEP.ReloadSpeed = 1.2
SWEP.ReloadAnim = {
	DefaultReload = {
		Anim = "base_reload",
		Time = 3,
	},
	ReloadEmpty = {
		Anim = "base_reload_empty",
		Time = 4.3,
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