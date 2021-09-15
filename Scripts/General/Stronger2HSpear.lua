function events.CalcStatBonusByItems(t)
    
    local NumMain = 0
    
    if (t.Player.ItemMainHand ~= 0) then
        if not t.Player.Items[t.Player.ItemMainHand].Broken then
            NumMain = t.Player.Items[t.Player.ItemMainHand].Number
        end
    else
        NumMain = 0
    end
    
    --Delete old 2H bonus for spears
    if IsItemType("Spear",NumMain) and (t.Player.ItemExtraHand == 0) then --Spear mainhand, empty offhand 
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result - 1
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result - 7
        end 
    end
    
    --Delete old 2H bonus for tridents
    if IsItemType("Trident",NumMain) and (t.Player.ItemExtraHand == 0) then --Spear mainhand, empty offhand
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result - 1
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result - 4
        end
    end
    
    --Delete old 2H bonus for halberds
    if IsItemType("Halberd",NumMain) and (t.Player.ItemExtraHand == 0) then --Spear mainhand, empty offhand
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result - 1
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result - 5
        end
    end
    
    if NumMain == 31 and (t.Player.ItemExtraHand == 0) then -- +0 Spear
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result + 2
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result + 2
        end
    end
    
    if NumMain == 32 and (t.Player.ItemExtraHand == 0) then -- +3 Spear
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result + 2 + 2
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result + 2 + 2
        elseif t.Stat == const.Stats.MeleeAttack then
            t.Result = t.Result + 2
        end
    end
    
    if NumMain == 33 and (t.Player.ItemExtraHand == 0) then -- +6 Spear
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result + 2 + 3
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result + 2 + 3
        elseif t.Stat == const.Stats.MeleeAttack then
            t.Result = t.Result + 3    
        end
    end
    
    if NumMain == 34 and (t.Player.ItemExtraHand == 0) then -- +9 Spear
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result + 2 + 5
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result + 2 + 5
        elseif t.Stat == const.Stats.MeleeAttack then
            t.Result = t.Result + 5             
        end
    end
    
    if NumMain == 35 and (t.Player.ItemExtraHand == 0) then -- +12 Spear
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result + 2 + 6
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result + 2 + 6
        elseif t.Stat == const.Stats.MeleeAttack then
            t.Result = t.Result + 6             
        end
    end
    
    if NumMain == 36 and (t.Player.ItemExtraHand == 0) then -- +0 Halberd
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result + 3
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result + 3
        end
    end
    
    if NumMain == 37 and (t.Player.ItemExtraHand == 0) then -- +4 Halberd
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result + 3 + 2
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result + 3 + 2
        elseif t.Stat == const.Stats.MeleeAttack then
            t.Result = t.Result + 2
        end
    end
    
    if NumMain == 38 and (t.Player.ItemExtraHand == 0) then -- +10 Halberd
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result + 3 + 5
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result + 3 + 5
        elseif t.Stat == const.Stats.MeleeAttack then
            t.Result = t.Result + 5    
        end
    end
    
    if NumMain == 39 and (t.Player.ItemExtraHand == 0) then -- +0 Trident
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result + 3
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result + 3
        end
    end
    
    if NumMain == 40 and (t.Player.ItemExtraHand == 0) then -- +5  Trident
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result + 3 + 3
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result + 3 + 3
        elseif t.Stat == const.Stats.MeleeAttack then
            t.Result = t.Result + 3
        end
    end
    
    if NumMain == 41 and (t.Player.ItemExtraHand == 0) then -- +11 Trident
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result + 3 + 6
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result + 3 + 6
        elseif t.Stat == const.Stats.MeleeAttack then
            t.Result = t.Result + 6
        end
    end
    
    if NumMain == 417 and (t.Player.ItemExtraHand == 0) then -- Poseidon
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result + 3 + 15
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result + 3 + 15
        elseif t.Stat == const.Stats.MeleeAttack then
            t.Result = t.Result + 15
        end
    end
end