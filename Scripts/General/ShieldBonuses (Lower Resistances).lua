function events.CalcStatBonusByItems(t)

    local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Shield])
    
    local NumExtra = 0
    
    if t.Player.ItemExtraHand ~= 0 then
        if (not t.Player.Items[t.Player.ItemExtraHand].Broken) then
            NumExtra = t.Player.Items[t.Player.ItemExtraHand].Number
        end
    end
    
    --Overwrite old AC bonuses
    if IsItemType("Shield",NumExtra) and (t.Stat == const.Stats.ArmorClass)then 
        if mastery == 1 then
            t.Result = t.Result + skill
        elseif mastery == 3 then
            t.Result = t.Result - skill
        end
    end
    
    --New resistance bonuses
    if IsItemType("Shield",NumExtra) and ((t.Stat == const.Stats.FireResistance) or (t.Stat == const.Stats.ElecResistance) or (t.Stat == const.Stats.ColdResistance)
       or (t.Stat == const.Stats.PoisonResistance) or (t.Stat == const.Stats.MagicResistance)) then
        if mastery == 2 then
            t.Result = t.Result + math.floor((skill*2)/2)
        elseif mastery == 3 then  
            t.Result = t.Result + math.floor((skill*4)/2)
        end
    end
end