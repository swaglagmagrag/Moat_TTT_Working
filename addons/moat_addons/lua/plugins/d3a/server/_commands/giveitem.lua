COMMAND.Name = "giveitem"
COMMAND.Flag = D3A.Config.Commands.GiveItem

COMMAND.Args = {{"string", "Name/SteamID"}, {"string", "Weapon"}, {"string", "Prefix"}, {"string", "Talent"}, {"string", "Talent"}, {"string", "Talent"}, {"string", "Talent"}}

COMMAND.Run = function(pl, args, supp)
    local rarities = {
        [0] = "Stock",
        [1] = "Worn",
        [2] = "Standard",
        [3] = "Superior",
        [4] = "High-End",
        [5] = "Ascended",
        [6] = "Cosmic",
        [7] = "Extinct",
        [8] = "Planetary"
    }
    local tals = {}
    local args = 0
    local ply = ""
    if not args[1] then
        id = pl:UserID()
    else
        local ply = supp[1]:GetBySteamID()
        local id = ply:UserID()
    end
    args = args + 1
    local wep = ""
    if not args[2] then
        local weps = {"weapon_ttt_mp5", "weapon_ttt_glock", "weapon_zm_huge", "weapon_ttt_aug"}
        wep = weps[math.random(#weps)]
    else
        wep = args[2]
    end
    args = args + 1
    local prefix = ""
    if not args[3] then
        pres = {"Warm", "Stock", "Insomnious"}
        prefix = pres[math.random(#pres)]
    else
        prefix = args[3]
    end
    local talents = {}
    for i = 4, 7 do
        if not args[i] then
            local a = "[[Trigger finger]],"
            table.insert(talents, a)
        else
            local a = "[[" .. args[i] .. "]]"
            table.insert(talents, a)
        end
    end
    for k, v in pairs(talents) do
        print(v)
    end
    print("test")
    print("mga lua Player(" .. id .. "):m_DropInventoryItem([[" .. wep .. "]], [[" .. prefix .. "]],nil,nil,nil,{" .. talents .. "})")
    D3A.Chat.Broadcast2(moat_cyan, D3A.Commands.Name(pl), moat_white, " has given ", moat_green, supp[1]:Name(), moat_white, " a " .. args[2] .. " " .. args[3] .. ".")
end