AddCSLuaFile()

SWEP.HoldType			= "duel"
SWEP.PrintName			= "Force Lightning"
if CLIENT then
   SWEP.Slot				= 0

   SWEP.Icon = "vgui/sv_forcelightning"
   SWEP.IconLetter = "w"
end
SWEP.Base				= "weapon_tttbase"
SWEP.Spawnable = true

SWEP.Kind = WEAPON_MELEE
SWEP.WeaponID = AMMO_CROWBAR
SWEP.ENUM = 12

SWEP.Primary.Delay			= 3
SWEP.Primary.Recoil			= 1.04
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "SMG1"
SWEP.Primary.Cone = 0.02
SWEP.Primary.Damage = 80
SWEP.Primary.ClipSize = 1
SWEP.ChargeSpeed = 1.5
SWEP.Primary.ClipMax = 1
SWEP.Primary.DefaultClip = 1
SWEP.HeadshotMultiplier = 1
SWEP.AutoSpawnable      = true
SWEP.AmmoEnt = "item_ammo_smg1_ttt"
SWEP.Scope = true
SWEP.PushForce = 2
SWEP.Secondary.Delay = 3

SWEP.UseHands			= true
SWEP.ViewModelFlip		= false
SWEP.ViewModelFOV		= 60
SWEP.ViewModel			= "models/weapons/c_357.mdl"
SWEP.WorldModel			= "models/weapons/w_rif_aug.mdl"

SWEP.Primary.Sound = Sound( "hand_zap" )

SWEP.IronSightsPos = Vector( 5, -15, -2 )
SWEP.IronSightsAng = Vector( 2.6, 1.37, 3.5 )
SWEP.AllowDrop = false

SWEP.DeploySpeed = 1.4
SWEP.ReloadSpeed = 1.5 
SWEP.ReloadAnim = {
	DefaultReload = {
		Anim = "reload",
		Time = 3.8,
	}
}
SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 18.75, 0) },
	["Bullet3"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0.03, 0.09), angle = Angle(-1.208, -21.73, 12.937) },
	["Bullet6"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-25, 20, 0) },
	["ValveBiped.Bip01_R_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 5, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-50, -95, 150) },
	["ValveBiped.Bip01_R_Finger32"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 20.068, 0) },
	["ValveBiped.Bip01_R_Finger42"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 51.05, 0) },
	["Python"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -25, 0) },
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 9.807, 0) },
	["Bullet1"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(41.911, 44.84, 23.868) },
	["Bullet4"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(12.008, 16.745, 0) },
	["ValveBiped.Bip01_R_Finger21"] = { scale = Vector(0.933, 0.933, 0.933), pos = Vector(0, 0, 0), angle = Angle(-5.646, 21.253, 0) },
	["ValveBiped.Bip01_R_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(-0.21, 0, 0), angle = Angle(-30, 38.041, 0) },
	["ValveBiped.Bip01_R_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -20, 0) },
	["Cylinder"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Bullet5"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Finger22"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 27.802, 0) },
	["ValveBiped.Bip01_R_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0.505, 58.675, 0) },
	["Cylinder_release"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Bullet2"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(-0.26, -0.152, 0), angle = Angle(-18.764, 51.015, -14.695) },
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, -70) }
}

SWEP.VElements = {
    ["muzzleflare2"] = { type = "Sprite", sprite = "effects/electric1", bone = "ValveBiped.Bip01_L_Clavicle", rel = "muzzleflare", pos = Vector(0, 0, 10.923), angle = Angle(0,0,0), size = { x = 16, y = 16 }, color = Color(0, 85, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
    ["muzzleflare3"] = { type = "Sprite", sprite = "effects/electric1", bone = "ValveBiped.Bip01_L_Clavicle", rel = "muzzleflare", pos = Vector(0, 0, 10.923), angle = Angle(0,0,0), size = { x = 15, y = 15 }, color = Color(0, 0, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
    ["muzzleflare"] = { type = "Sprite", sprite = "effects/rollerglow", bone = "ValveBiped.Bip01_L_Clavicle", rel = "body", pos = Vector(0, 0, 20.319), angle = Angle(0,0,0), size = { x = 14, y = 14 }, color = Color(84, 94, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
}

SWEP.WElements = {
    ["muzzleflare"] = { type = "Sprite", sprite = "effects/rollerglow", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 0, 20.319), angle = Angle(0,0,0), size = { x = 14, y = 14 }, color = Color(0, 0, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
    ["muzzleflare2"] = { type = "Sprite", sprite = "effects/electric1", bone = "ValveBiped.Bip01_R_Hand", rel = "muzzleflare", pos = Vector(0, 0, -0.245), angle = Angle(0,0,0), size = { x = 16, y = 16 }, color = Color(0, 0, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
    ["muzzleflare3"] = { type = "Sprite", sprite = "effects/electric1", bone = "ValveBiped.Bip01_R_Hand", rel = "muzzleflare", pos = Vector(0, 0, -0.245), angle = Angle(0,0,0), size = { x = 15, y = 15 }, color = Color(0, 0, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false}
}


function OverTheShoulder( ply, pos, angles, fov )
	if !ply:IsValid() then return end
	if !ply:GetActiveWeapon():IsValid() then return end
	if ply:GetActiveWeapon():GetClass() == "st_forcelightning" then
		local view = {}

		view.origin = pos-( angles:Forward()*35 + angles:Right()*-20 )
		view.angles = angles
		view.fov = fov
		view.drawviewer = true
 
		return view
	end
end

function SWEP:PrimaryAttack()

	
	if IsFirstTimePredicted() then
	
		self.VElements["muzzleflare"].size.x = 20
		self.VElements["muzzleflare"].size.y = 20
		self.VElements["muzzleflare"].color.a = 255
		self.VElements["muzzleflare2"].color.a = 255
		self.VElements["muzzleflare3"].color.a = 255
		self.WElements["muzzleflare"].size.x = 20
		self.WElements["muzzleflare"].size.y = 20
		self.WElements["muzzleflare"].color.a = 255
		self.WElements["muzzleflare2"].color.a = 255
		self.WElements["muzzleflare3"].color.a = 255
	end

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
    if (not IsValid(self.Owner)) then return end

    if (self.ViewPunch) then
        self:ViewPunch(worldsnd)
    elseif (self.Owner.ViewPunch) then
        self:GetOwner():ViewPunch(Angle(util.SharedRandom(self:GetClass(), -0.2, -0.1, 0) * self.Primary.Recoil, util.SharedRandom(self:GetClass(), -0.1, 0.1, 1) * self.Primary.Recoil, 0))
    end
	local dist = 800
	local ed = EffectData()
	ed:SetEntity(self)
	ed:SetAttachment(1)
	ed:SetStart( self.Owner:GetPos() + Vector(0,0,30) )
	ed:SetOrigin( self.Owner:GetPos() + Vector(0,0,30) + self.Owner:GetForward() * math.random(dist - 50,dist + 50) + self.Owner:GetRight() * math.random(-80,80) + self.Owner:GetUp() * math.random(-20,20))
	ed:SetFlags(0x0002)
	util.Effect( "effect_arc_tracer", ed, true, true )
end

function SWEP:Initialize()
	self.BaseClass.Initialize(self)

	if CLIENT then

		self:SendWeaponAnim(ACT_DO_NOT_DISTURB)
		self.VElements = table.FullCopy( self.VElements )
		self.WElements = table.FullCopy( self.WElements )
		self.ViewModelBoneMods = table.FullCopy( self.ViewModelBoneMods )
		self:CreateModels(self.VElements)
		self:CreateModels(self.WElements)

		if IsValid(self.Owner) then
			local vm = self.Owner:GetViewModel()
			if IsValid(vm) then
				self:ResetBonePositions(vm)
				if (self.ShowViewModel == nil or self.ShowViewModel) then
					vm:SetColor(Color(255,255,255,255))
				else
					vm:SetColor(Color(255,255,255,1))
					vm:SetMaterial("Debug/hsv")			
				end
			end
		end
	end
end



function SWEP:Holster()
	self.BaseClass.Holster(self)
	if CLIENT and IsValid(self.Owner) then
		local vm = self.Owner:GetViewModel()
		if IsValid(vm) then
			self:ResetBonePositions(vm)
		end
	end
	if CLIENT then return end
	return true
end



function SWEP:OnRemove()
	self.BaseClass.OnRemove(self)
	if CLIENT and IsValid(self.Owner) then
		local vm = self.Owner:GetViewModel()
		if IsValid(vm) then
			self:ResetBonePositions(vm)
		end
	end
end

function SWEP:GetCharge()
	return math.Clamp(((CurTime() - self:GetHoldTime()) * self.ChargeSpeed) / self.MaxHoldTime, .1, 1)
end


if CLIENT then
	SWEP.vRenderOrder = nil
	function SWEP:ViewModelDrawn()
		local vm = self.Owner:GetViewModel()
		if !IsValid(vm) then return end
		vm:GetAttachment(1)
		if (!self.VElements) then return end
		self:UpdateBonePositions(vm)
		if (!self.vRenderOrder) then
			self.vRenderOrder = {}
			for k, v in pairs( self.VElements ) do

				if (v.type == "Model") then

					table.insert(self.vRenderOrder, 1, k)

				elseif (v.type == "Sprite" or v.type == "Quad") then

					table.insert(self.vRenderOrder, k)

				end

			end

			

		end



		for k, name in ipairs( self.vRenderOrder ) do

		

			local v = self.VElements[name]

			if (!v) then self.vRenderOrder = nil break end

			if (v.hide) then continue end

			

			local model = v.modelEnt

			local sprite = v.spriteMaterial

			

			if (!v.bone) then continue end

			

			local pos, ang = self:GetBoneOrientation( self.VElements, v, vm )

			

			if (!pos) then continue end

			

			if (v.type == "Model" and IsValid(model)) then



				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )

				ang:RotateAroundAxis(ang:Up(), v.angle.y)

				ang:RotateAroundAxis(ang:Right(), v.angle.p)

				ang:RotateAroundAxis(ang:Forward(), v.angle.r)



				model:SetAngles(ang)

				//model:SetModelScale(v.size)

				local matrix = Matrix()

				matrix:Scale(v.size)

				model:EnableMatrix( "RenderMultiply", matrix )

				

				if (v.material == "") then

					model:SetMaterial("")

				elseif (model:GetMaterial() != v.material) then

					model:SetMaterial( v.material )

				end

				

				if (v.skin and v.skin != model:GetSkin()) then

					model:SetSkin(v.skin)

				end

				

				if (v.bodygroup) then

					for k, v in pairs( v.bodygroup ) do

						if (model:GetBodygroup(k) != v) then

							model:SetBodygroup(k, v)

						end

					end

				end

				

				if (v.surpresslightning) then

					render.SuppressEngineLighting(true)

				end

				

				render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)

				render.SetBlend(v.color.a/255)

				model:DrawModel()

				render.SetBlend(1)

				render.SetColorModulation(1, 1, 1)

				

				if (v.surpresslightning) then

					render.SuppressEngineLighting(false)

				end

				

			elseif (v.type == "Sprite" and sprite) then

				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z

				render.SetMaterial(sprite)

				render.DrawSprite(drawpos, v.size.x, v.size.y, v.color)

			elseif (v.type == "Quad" and v.draw_func) then

				

				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z

				ang:RotateAroundAxis(ang:Up(), v.angle.y)

				ang:RotateAroundAxis(ang:Right(), v.angle.p)

				ang:RotateAroundAxis(ang:Forward(), v.angle.r)

				

				cam.Start3D2D(drawpos, ang, v.size)

					v.draw_func( self )

				cam.End3D2D()



			end

			

		end

		

	end



	SWEP.wRenderOrder = nil

	function SWEP:DrawWorldModel()

		if self.ShowWorldModel == nil or self.ShowWorldModel == true then

			self:DrawModel()

		end

		

		if (!self.WElements) then return end

		

		if (!self.wRenderOrder) then



			self.wRenderOrder = {}



			for k, v in pairs( self.WElements ) do

				if (v.type == "Model") then

					table.insert(self.wRenderOrder, 1, k)

				elseif (v.type == "Sprite" or v.type == "Quad") then

					table.insert(self.wRenderOrder, k)

				end

			end



		end

		

		if (IsValid(self.Owner)) then

			bone_ent = self.Owner

		else

			// when the weapon is dropped

			bone_ent = self

		end

		

		for k, name in pairs( self.wRenderOrder ) do

		

			local v = self.WElements[name]

			if (!v) then self.wRenderOrder = nil break end

			if (v.hide) then continue end

			

			local pos, ang

			

			if (v.bone) then

				pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent )

			else

				pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent, "ValveBiped.Bip01_R_Hand" )

			end

			

			if (!pos) then continue end

			

			local model = v.modelEnt

			local sprite = v.spriteMaterial

			

			if (v.type == "Model" and IsValid(model)) then



				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )

				ang:RotateAroundAxis(ang:Up(), v.angle.y)

				ang:RotateAroundAxis(ang:Right(), v.angle.p)

				ang:RotateAroundAxis(ang:Forward(), v.angle.r)



				model:SetAngles(ang)

				//model:SetModelScale(v.size)

				local matrix = Matrix()

				matrix:Scale(v.size)

				model:EnableMatrix( "RenderMultiply", matrix )

				

				if (v.material == "") then

					model:SetMaterial("")

				elseif (model:GetMaterial() != v.material) then

					model:SetMaterial( v.material )

				end

				

				if (v.skin and v.skin != model:GetSkin()) then

					model:SetSkin(v.skin)

				end

				

				if (v.bodygroup) then

					for k, v in pairs( v.bodygroup ) do

						if (model:GetBodygroup(k) != v) then

							model:SetBodygroup(k, v)

						end

					end

				end

				

				if (v.surpresslightning) then

					render.SuppressEngineLighting(true)

				end

				

				render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)

				render.SetBlend(v.color.a/255)

				model:DrawModel()

				render.SetBlend(1)

				render.SetColorModulation(1, 1, 1)

				

				if (v.surpresslightning) then

					render.SuppressEngineLighting(false)

				end

				

			elseif (v.type == "Sprite" and sprite) then

				

				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z

				render.SetMaterial(sprite)

				render.DrawSprite(drawpos, v.size.x, v.size.y, v.color)

				

			elseif (v.type == "Quad" and v.draw_func) then

				

				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z

				ang:RotateAroundAxis(ang:Up(), v.angle.y)

				ang:RotateAroundAxis(ang:Right(), v.angle.p)

				ang:RotateAroundAxis(ang:Forward(), v.angle.r)

				

				cam.Start3D2D(drawpos, ang, v.size)

					v.draw_func( self )

				cam.End3D2D()



			end

			

		end

		

	end



	function SWEP:GetBoneOrientation( basetab, tab, ent, bone_override )

		

		local bone, pos, ang

		if (tab.rel and tab.rel != "") then

			

			local v = basetab[tab.rel]

			

			if (!v) then return end

			

			// Technically, if there exists an element with the same name as a bone

			// you can get in an infinite loop. Let's just hope nobody's that stupid.

			pos, ang = self:GetBoneOrientation( basetab, v, ent )

			

			if (!pos) then return end

			

			pos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z

			v.angle = v.angle or Angle(0,0,0)

			ang:RotateAroundAxis(ang:Up(), v.angle.y)

			ang:RotateAroundAxis(ang:Right(), v.angle.p)

			ang:RotateAroundAxis(ang:Forward(), v.angle.r)

				

		else

		

			bone = ent:LookupBone(bone_override or tab.bone)



			if (!bone) then return end

			

			pos, ang = Vector(0,0,0), Angle(0,0,0)

			local m = ent:GetBoneMatrix(bone)

			if (m) then

				pos, ang = m:GetTranslation(), m:GetAngles()

			end

			

			if (IsValid(self.Owner) and self.Owner:IsPlayer() and 

				ent == self.Owner:GetViewModel() and self.ViewModelFlip) then

				ang.r = -ang.r // Fixes mirrored models

			end

		

		end

		

		return pos, ang

	end



	function SWEP:CreateModels( tab )



		if (!tab) then return end



		// Create the clientside models here because Garry says we can't do it in the render hook

		for k, v in pairs( tab ) do

			if (v.type == "Model" and v.model and v.model != "" and (!IsValid(v.modelEnt) or v.createdModel != v.model) and 

					string.find(v.model, ".mdl") and file.Exists (v.model, "GAME") ) then

				

				v.modelEnt = ClientsideModel(v.model, RENDER_GROUP_VIEW_MODEL_OPAQUE)

				if (IsValid(v.modelEnt)) then

					v.modelEnt:SetPos(self:GetPos())

					v.modelEnt:SetAngles(self:GetAngles())

					v.modelEnt:SetParent(self)

					v.modelEnt:SetNoDraw(true)

					v.createdModel = v.model

				else

					v.modelEnt = nil

				end

				

			elseif (v.type == "Sprite" and v.sprite and v.sprite != "" and (!v.spriteMaterial or v.createdSprite != v.sprite) 

				and file.Exists ("materials/"..v.sprite..".vmt", "GAME")) then

				

				local name = v.sprite.."-"

				local params = { ["$basetexture"] = v.sprite }

				// make sure we create a unique name based on the selected options

				local tocheck = { "nocull", "additive", "vertexalpha", "vertexcolor", "ignorez" }

				for i, j in pairs( tocheck ) do

					if (v[j]) then

						params["$"..j] = 1

						name = name.."1"

					else

						name = name.."0"

					end

				end



				v.createdSprite = v.sprite

				v.spriteMaterial = CreateMaterial(name,"UnlitGeneric",params)

				

			end

		end

		

	end

	

	local allbones

	local hasGarryFixedBoneScalingYet = false



	function SWEP:UpdateBonePositions(vm)

		

		if self.ViewModelBoneMods then

			

			if (!vm:GetBoneCount()) then return end

			

			// !! WORKAROUND !! //

			// We need to check all model names :/

			local loopthrough = self.ViewModelBoneMods

			if (!hasGarryFixedBoneScalingYet) then

				allbones = {}

				for i=0, vm:GetBoneCount() do

					local bonename = vm:GetBoneName(i)

					if (self.ViewModelBoneMods[bonename]) then 

						allbones[bonename] = self.ViewModelBoneMods[bonename]

					else

						allbones[bonename] = { 

							scale = Vector(1,1,1),

							pos = Vector(0,0,0),

							angle = Angle(0,0,0)

						}

					end

				end

				

				loopthrough = allbones

			end

			// !! ----------- !! //

			

			for k, v in pairs( loopthrough ) do

				local bone = vm:LookupBone(k)

				if (!bone) then continue end

				

				// !! WORKAROUND !! //

				local s = Vector(v.scale.x,v.scale.y,v.scale.z)

				local p = Vector(v.pos.x,v.pos.y,v.pos.z)

				local ms = Vector(1,1,1)

				if (!hasGarryFixedBoneScalingYet) then

					local cur = vm:GetBoneParent(bone)

					while(cur >= 0) do

						local pscale = loopthrough[vm:GetBoneName(cur)].scale

						ms = ms * pscale

						cur = vm:GetBoneParent(cur)

					end

				end

				

				s = s * ms

				// !! ----------- !! //

				

				if vm:GetManipulateBoneScale(bone) != s then

					vm:ManipulateBoneScale( bone, s )

				end

				if vm:GetManipulateBoneAngles(bone) != v.angle then

					vm:ManipulateBoneAngles( bone, v.angle )

				end

				if vm:GetManipulateBonePosition(bone) != p then

					vm:ManipulateBonePosition( bone, p )

				end

			end

		else

			self:ResetBonePositions(vm)

		end

		   

	end

	 

	function SWEP:ResetBonePositions(vm)

		

		if (!vm:GetBoneCount()) then return end

		for i=0, vm:GetBoneCount() do

			vm:ManipulateBoneScale( i, Vector(1, 1, 1) )

			vm:ManipulateBoneAngles( i, Angle(0, 0, 0) )

			vm:ManipulateBonePosition( i, Vector(0, 0, 0) )

		end

		

	end



	/**************************

		Global utility code

	**************************/



	// Fully copies the table, meaning all tables inside this table are copied too and so on (normal table.Copy copies only their reference).

	// Does not copy entities of course, only copies their reference.

	// WARNING: do not use on tables that contain themselves somewhere down the line or you'll get an infinite loop

	function table.FullCopy( tab )



		if (!tab) then return nil end

		

		local res = {}

		for k, v in pairs( tab ) do

			if (type(v) == "table") then

				res[k] = table.FullCopy(v) // recursion ho!

			elseif (type(v) == "Vector") then

				res[k] = Vector(v.x, v.y, v.z)

			elseif (type(v) == "Angle") then

				res[k] = Angle(v.p, v.y, v.r)

			else

				res[k] = v

			end

		end

		

		return res

		

	end

	

end

function SWEP:SecondaryAttack()
	self.Weapon:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
	self.Weapon:SetNextSecondaryFire( CurTime() + 0.1 )
 
	if self.Owner.LagCompensation then
	   self.Owner:LagCompensation(true)
	end
 
	local tr = self.Owner:GetEyeTrace(MASK_SHOT)
 
	if tr.Hit and IsValid(tr.Entity) and tr.Entity:IsPlayer() and (self.Owner:EyePos() - tr.HitPos):Length() < 100 then
	   local ply = tr.Entity
 
	   if SERVER and (not ply:IsFrozen()) then
		  local pushvel = tr.Normal * GetConVar("ttt_crowbar_pushforce"):GetFloat()
 
		  -- limit the upward force to prevent launching
		  pushvel.z = math.Clamp(pushvel.z, 50, 100) * self.PushForce
 
		  ply:SetVelocity(ply:GetVelocity() + pushvel)
		  self.Owner:SetAnimation( PLAYER_ATTACK1 )
 
		  ply.was_pushed = {att=self.Owner, t=CurTime(), wep=self:GetClass()} --, infl=self}
	   end
 
	   self.Weapon:EmitSound(Sound("Weapon_Crowbar.Single"))      
	   self.Weapon:SendWeaponAnim( ACT_VM_HITCENTER )
 
	   self.Weapon:SetNextSecondaryFire( CurTime() + self.Secondary.Delay )
	end
	
	if self.Owner.LagCompensation then
	   self.Owner:LagCompensation(false)
	end
 end