

AddCSLuaFile()



SWEP.HoldType = "normal"





if CLIENT then

   SWEP.Slot = 6



   SWEP.ViewModelFOV = 0



   SWEP.EquipMenuData = {

      type = "item_weapon",

      desc = [[Allows people to catch fire when placed when a player attempts to use it. It appears as a regular detective health station. 

      Slow recharge. Anyone can use it, and it can be damaged. Can be checked for DNA samples of its users.]]

   };



   SWEP.Icon = "vgui/ttt/icon_health"

end



SWEP.Base = "weapon_tttbase"

SWEP.PrintName = "Ignite Station"

SWEP.ViewModel          = "models/weapons/v_crowbar.mdl"

SWEP.WorldModel         = "models/props/cs_office/microwave.mdl"



SWEP.DrawCrosshair	= false

SWEP.Primary.ClipSize       = -1

SWEP.Primary.DefaultClip    = -1

SWEP.Primary.Automatic      = true

SWEP.Primary.Ammo       = "none"

SWEP.Primary.Delay = 1.0



SWEP.Secondary.ClipSize     = -1

SWEP.Secondary.DefaultClip  = -1

SWEP.Secondary.Automatic    = true

SWEP.Secondary.Ammo     = "none"

SWEP.Secondary.Delay = 1.0



-- This is special equipment





SWEP.Kind = WEAPON_EQUIP

SWEP.CanBuy = {ROLE_TRAITOR} -- only traitors can buy

SWEP.LimitedStock = true -- only buyable once

SWEP.WeaponID = AMMO_HEALTHSTATION



SWEP.AllowDrop = false



SWEP.NoSights = true



function SWEP:OnDrop()

   self:Remove()

end



function SWEP:PrimaryAttack()

   self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )

   self:IgniteDrop()

end

function SWEP:SecondaryAttack()

   self:SetNextSecondaryFire( CurTime() + self.Secondary.Delay )

   self:IgniteDrop()

end



local throwsound = Sound( "Weapon_SLAM.SatchelThrow" )



-- ye olde droppe code

function SWEP:IgniteDrop()

   if SERVER then

      local ply = self.Owner

      if not IsValid(ply) then return end



      if self.Planted then return end



      local vsrc = ply:GetShootPos()

      local vang = ply:GetAimVector()

      local vvel = ply:GetVelocity()

      

      local vthrow = vvel + vang * 200



      local ignite = ents.Create("ttt_ignite_station")

      if IsValid(ignite) then

         ignite:SetPos(vsrc + vang * 10)

         ignite:Spawn()



         ignite:SetPlacer(ply)



         ignite:PhysWake()

         local phys = ignite:GetPhysicsObject()

         if IsValid(phys) then

            phys:SetVelocity(vthrow)

         end   

         self:Remove()



         self.Planted = true

      end

   end



   self:EmitSound(throwsound)

end





function SWEP:Reload()

   return false

end



function SWEP:OnRemove()

   if CLIENT and IsValid(self.Owner) and self.Owner == LocalPlayer() and self.Owner:Alive() then

      RunConsoleCommand("lastinv")

   end

end



if CLIENT then

   function SWEP:Initialize()

      self:AddHUDHelp("hstation_help", nil, true)



      return self.BaseClass.Initialize(self)

   end

end



function SWEP:Deploy()

   if SERVER and IsValid(self.Owner) then

      self.Owner:DrawViewModel(false)

   end

   return true

end



function SWEP:DrawWorldModel()

end



function SWEP:DrawWorldModelTranslucent()

end


