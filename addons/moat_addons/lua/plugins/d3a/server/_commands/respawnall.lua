COMMAND.Name = "Respawnall"

COMMAND.Flag = D3A.Config.Commands.Return
COMMAND.AdminMode = true
COMMAND.CheckRankWeight = true

COMMAND.Args = {}

COMMAND.Run = function(pl, args, supp)
  for k, v in ipairs(ents.GetAll()) do 
    if v and v:IsRagdoll() or v:IsWeapon() and v:GetOwner() == NULL then
      v:Remove()
    elseif v:IsPlayer() and !v:Alive() then
      v:SpawnForRound()
    end
  end
  D3A.Chat.Broadcast2(pl, moat_cyan, D3A.Commands.NameID(pl), moat_white, "  has respawned all dead players.")
end