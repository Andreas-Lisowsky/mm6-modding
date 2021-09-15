function events.CalcStatBonusBySkills(t)
    
    --This script reduces offhand sword damage and hit by 50%
    
    local NumExtra = 0
    
    if (t.Player.ItemExtraHand ~= 0) then
        if not t.Player.Items[t.Player.ItemExtraHand].Broken then
            NumExtra = t.Player.Items[t.Player.ItemExtraHand].Number
        end
    end
    
    
    if NumExtra == 1 then -- +0 Sword
        if t.Stat == const.Stats.MeleeDamageBase then
            t.Result = t.Result - 3
        end
    end
    
    if NumExtra == 2 then -- +3 Sword
        if t.Stat == const.Stats.MeleeDamageBase then
            t.Result = t.Result - 5
        elseif t.Stat == const.Stats.MeleeAttack then
        t.Result = t.Result - 2
        end
    end
    
    if NumExtra == 3 then -- +6 Sword
        if t.Stat == const.Stats.MeleeDamageBase then
            t.Result = t.Result - 6
        elseif t.Stat == const.Stats.MeleeAttack then
        t.Result = t.Result - 3
        end
    end
    
    if NumExtra == 4 then -- +9 Sword
        if t.Stat == const.Stats.MeleeDamageBase then
            t.Result = t.Result - 8
        elseif t.Stat == const.Stats.MeleeAttack then
        t.Result = t.Result - 5
        end
    end
    
    if NumExtra == 5 then -- +12 Sword
        if t.Stat == const.Stats.MeleeDamageBase then
            t.Result = t.Result - 9
        elseif t.Stat == const.Stats.MeleeAttack then
        t.Result = t.Result - 6
        end
    end
    
    if NumExtra == 9 then -- +0 Broadsword
        if t.Stat == const.Stats.MeleeDamageBase then
            t.Result = t.Result - 4
        end
    end
    
    if NumExtra == 10 then -- +4 Broadsword
        if t.Stat == const.Stats.MeleeDamageBase then
            t.Result = t.Result - 6
        elseif t.Stat == const.Stats.MeleeAttack then
        t.Result = t.Result - 2
        end
    end
    
    if NumExtra == 11 then -- +11 Broadsword
        if t.Stat == const.Stats.MeleeDamageBase then
            t.Result = t.Result - 10
        elseif t.Stat == const.Stats.MeleeAttack then
        t.Result = t.Result - 6
        end
    end
    
    if NumExtra == 12 then -- +0 Sabre
        if t.Stat == const.Stats.MeleeDamageBase then
            t.Result = t.Result - 3
        end
    end
    
    if NumExtra == 13 then -- +5 Sabre
        if t.Stat == const.Stats.MeleeDamageBase then
            t.Result = t.Result - 5
        elseif t.Stat == const.Stats.MeleeAttack then
        t.Result = t.Result - 3
        end
    end
    
    if NumExtra == 14 then -- +13 Sabre
        if t.Stat == const.Stats.MeleeDamageBase then
            t.Result = t.Result - 9
        elseif t.Stat == const.Stats.MeleeAttack then
        t.Result = t.Result - 7
        end
    end
    
    if NumExtra == 403 then -- Excalibur
        if t.Stat == const.Stats.MeleeDamageBase then
            t.Result = t.Result - 14
        elseif t.Stat == const.Stats.MeleeAttack then
        t.Result = t.Result - 10
        end
    end
    
    if NumExtra == 415 then -- Hades
        if t.Stat == const.Stats.MeleeDamageBase then
            t.Result = t.Result - 11
        elseif t.Stat == const.Stats.MeleeAttack then
        t.Result = t.Result - 8
        end
    end
end