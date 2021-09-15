function events.CalcStatBonusBySkills(t)

    local WearsLeather,WearsChain,WearsPlate = false
    local IsNotBroken = false
        
    if t.Player.ItemArmor ~= 0 then
        if (not t.Player.Items[t.Player.ItemArmor].Broken) then
            IsNotBroken = true
        end
            
        if (t.Player.Items[t.Player.ItemArmor].Number >= 66) and (t.Player.Items[t.Player.ItemArmor].Number <= 70) then
            WearsLeather = true
        elseif (((t.Player.Items[t.Player.ItemArmor].Number >= 71) and (t.Player.Items[t.Player.ItemArmor].Number <= 75)) or (t.Player.Items[t.Player.ItemArmor].Number == 406)
                   or (t.Player.Items[t.Player.ItemArmor].Number == 421)) then
            WearsChain = true
        else WearsPlate = true
        end
    end
        
    local skill = 0
    local mastery = 1
        
    if WearsLeather == true then
        skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Leather])
    elseif WearsChain == true then
        skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Chain])
    elseif WearsPlate == true then
        skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Plate])
    end
   
    if IsNotBroken and t.Stat == const.Stats.ArmorClass then
        if mastery == 1 then
            t.Result = t.Result + skill
        elseif mastery >= 2 then
            t.Result = t.Result + skill*3
        end
    end
end

function events.CalcStatBonusByItems(t)

    local WearsLeather,WearsChain,WearsPlate = false
    local IsNotBroken = false
        
    if t.Player.ItemArmor ~= 0 then
        if (not t.Player.Items[t.Player.ItemArmor].Broken) then
            IsNotBroken = true
        end
            
        if (t.Player.Items[t.Player.ItemArmor].Number >= 66) and (t.Player.Items[t.Player.ItemArmor].Number <= 70) then
            WearsLeather = true
        elseif (((t.Player.Items[t.Player.ItemArmor].Number >= 71) and (t.Player.Items[t.Player.ItemArmor].Number <= 75)) or (t.Player.Items[t.Player.ItemArmor].Number == 406)
                   or (t.Player.Items[t.Player.ItemArmor].Number == 421)) then
            WearsChain = true
        else WearsPlate = true
        end
    end
        
    local skill = 0
    local mastery = 1
        
    if WearsLeather == true then
        skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Leather])
    elseif WearsChain == true then
        skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Chain])
    elseif WearsPlate == true then
        skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Plate])
    end
    
    if IsNotBroken and mastery == 3 and ((t.Stat == const.Stats.FireResistance) or (t.Stat == const.Stats.ElecResistance) or (t.Stat == const.Stats.ColdResistance)
       or (t.Stat == const.Stats.PoisonResistance) or (t.Stat == const.Stats.MagicResistance)) then
       
        t.Result = t.Result + skill*2
    end
end