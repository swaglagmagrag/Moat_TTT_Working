local EagleSounds = {
	["Eagle Aim"] = "/headshot/surreal-headshot-kill.wav",
	["Eagle Kill"] = "/headshot/surreal-killshot.wav",
	["Eagle Clack"] = "/headshot/metallic-headshot.wav",
	["Arcade Tap"] = "/headshot/arcade-bodyshot.wav",
	["Arcade Headshot"] = "/headshot/arcade-headshot.wav",
	["Arcade Kill"] = "/headshot/arcade-headshot-kill.wav",
	["Arcade Missed"] = "/headshot/arcade-killshot.wav",
	["FPS Hitmarker"] = "/headshot/fps-bodyshot.wav",
	["FPS Headshot"] = "/headshot/fps-headshot.wav",
	["Rusty Aim"] = "/headshot/metallic-headshot.wav"
}

hook("Moat.Headshot", function()
	local snd = GetConVar("moat_headshot_sound"):GetString()
	if (not EagleSounds[snd]) then
		snd = "Eagle Aim"
	end

	cdn.PlayURL(EagleSounds[snd])
end)

net.Receive("Moat.Headshot.Sound", function()
	local vol = GetConVar("moat_headshot_sounds"):GetFloat()
	if (vol <= 0) then
		return
	end

	hook.Run "Moat.Headshot"

	-- cdn.PlayURL "55aLKs6xUXfnMseoc0eWDkcyWdMAJ9yF.mp3"
	-- cdn.PlayURL "55aLKs6xUXfnMseoc0eWDkcyWdMAJ9yF.mp3"
	-- cdn.PlayURL "55aLKs6xUXfnMseoc0eWDkcyWdMAJ9yF.mp3"
	-- cdn.PlayURL "55aLKs6xUXfnMseoc0eWDkcyWdMAJ9yF.mp3"
	-- cdn.PlayURL "55aLKs6xUXfnMseoc0eWDkcyWdMAJ9yF.mp3"
	-- cdn.PlayURL "55aLKs6xUXfnMseoc0eWDkcyWdMAJ9yF.mp3"
	-- cdn.PlayURL "55aLKs6xUXfnMseoc0eWDkcyWdMAJ9yF.mp3"
	-- cdn.PlayURL "55aLKs6xUXfnMseoc0eWDkcyWdMAJ9yF.mp3"
end)