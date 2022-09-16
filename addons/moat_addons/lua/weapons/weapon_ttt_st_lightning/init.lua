AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include('shared.lua')

sound.Add( {
	name = "lighting_hands",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 100,
	pitch = 100,
	sound = "weapons/starwars/force_lightning1.wav"
} )

sound.Add( {
	name = "godon_snd",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 100,
	pitch = 125,
	sound = "beams/beamstart5.wav"
} )

function SWEP:Think()
	if !self.Owner:GetActiveWeapon():GetClass() == "st_forcelightning" then
		self.Owner:GodDisable()
	end
	if self.Owner:KeyPressed(IN_RELOAD) then
		if self.Owner:HasGodMode() == false then
			self:StopSound("lighting_hands")
			self.Owner:GodEnable()
			self:EmitSound("godon_snd")
		else
			self.Owner:GodDisable()
			self:EmitSound("friends/friend_online.wav")
		end
	end
	
	if !self.Owner:HasGodMode() then
		if self.Owner:KeyDown(IN_ATTACK2) then
			self:EmitSound("lighting_hands")
		else
			self:StopSound("lighting_hands")
		end
	else return end
	
	self.BaseClass.Think(self)
	self.VElements["muzzleflare"].color.a = math.max(0,self.VElements["muzzleflare"].color.a - 10 * FrameTime() * 60)
	self.VElements["muzzleflare"].size.x = math.max(0,self.VElements["muzzleflare"].size.x - 0.5 * FrameTime() * 60)
	self.VElements["muzzleflare"].size.y = math.max(0,self.VElements["muzzleflare"].size.y - 0.5 * FrameTime() * 60)
	self.VElements["muzzleflare2"].color.a = math.max(0,self.VElements["muzzleflare2"].color.a - 10 * FrameTime() * 60)
	self.VElements["muzzleflare3"].color.a = math.max(0,self.VElements["muzzleflare3"].color.a - 10 * FrameTime() * 60)
	self.WElements["muzzleflare"].color.a = math.max(0,self.WElements["muzzleflare"].color.a - 10 * FrameTime() * 60)
	self.WElements["muzzleflare"].size.x = math.max(0,self.WElements["muzzleflare"].size.x - 0.5 * FrameTime() * 60)
	self.WElements["muzzleflare"].size.y = math.max(0,self.WElements["muzzleflare"].size.y - 0.5 * FrameTime() * 60)
	self.WElements["muzzleflare2"].color.a = math.max(0,self.WElements["muzzleflare2"].color.a - 10 * FrameTime() * 60)
	self.WElements["muzzleflare3"].color.a = math.max(0,self.WElements["muzzleflare3"].color.a - 10 * FrameTime() * 60)
end