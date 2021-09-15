function events.CalcStatBonusByItems(t)
    
    --This script reduces offhand sword damage and hit by 50%
    
    local NumExtra = 0
    
    if (t.Player.ItemExtraHand ~= 0) then
        if not t.Player.Items[t.Player.ItemExtraHand].Broken then
            NumExtra = t.Player.Items[t.Player.ItemExtraHand].Number
        end
    end
    
    
    if NumExtra == 1 then -- +0 Sword
         if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result - 2
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result - 5
        end
    elseif NumExtra == 2 then -- +3 Sword
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result - 3
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result - 6
        elseif t.Stat == const.Stats.MeleeAttack then
            t.Result = t.Result - 2
        end
    elseif NumExtra == 3 then -- +6 Sword
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result - 5
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result - 8
        elseif t.Stat == const.Stats.MeleeAttack then
            t.Result = t.Result - 3
        end
    elseif NumExtra == 4 then -- +9 Sword
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result - 6
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result - 9
        elseif t.Stat == const.Stats.MeleeAttack then
            t.Result = t.Result - 5
        end
    elseif NumExtra == 5 then -- +12 Sword
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result - 8
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result - 11
        elseif t.Stat == const.Stats.MeleeAttack then
            t.Result = t.Result - 6
        end
    elseif NumExtra == 9 then -- +0 Broadsword
         if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result - 2
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result - 6
        end
    elseif NumExtra == 10 then -- +4 Broadsword
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result - 4
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result - 8
        elseif t.Stat == const.Stats.MeleeAttack then
            t.Result = t.Result - 2
        end
    elseif NumExtra == 11 then -- +11 Broadsword
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result - 7
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result - 12
        elseif t.Stat == const.Stats.MeleeAttack then
            t.Result = t.Result - 6
        end
    elseif NumExtra == 12 then -- +0 Sabre
         if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result - 1
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result - 4
        end
    elseif NumExtra == 13 then -- +5 Sabre
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result - 4
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result - 7
        elseif t.Stat == const.Stats.MeleeAttack then
            t.Result = t.Result - 3
        end
    elseif NumExtra == 14 then -- +13 Sabre
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result - 8
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result - 11
        elseif t.Stat == const.Stats.MeleeAttack then
            t.Result = t.Result - 7
        end
    elseif NumExtra == 403 then -- Excalibur
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result - 12
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result - 16
        elseif t.Stat == const.Stats.MeleeAttack then
            t.Result = t.Result - 10
        end
    elseif NumExtra == 415 then -- Hades
        if t.Stat == const.Stats.MeleeDamageMin then
            t.Result = t.Result - 9
        elseif t.Stat == const.Stats.MeleeDamageMax then
            t.Result = t.Result - 12
        elseif t.Stat == const.Stats.MeleeAttack then
            t.Result = t.Result - 8
        end
    end
end