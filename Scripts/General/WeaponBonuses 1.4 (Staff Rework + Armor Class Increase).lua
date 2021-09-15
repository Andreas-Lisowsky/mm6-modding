function events.CalcStatBonusBySkills(t)
    
    local NumMain, NumExtra = 0, 0
    
    if t.Player.ItemMainHand ~= 0 then
        if (not t.Player.Items[t.Player.ItemMainHand].Broken) then
            NumMain = t.Player.Items[t.Player.ItemMainHand].Number
        end
    end
    
    if t.Player.ItemExtraHand ~= 0 then
        if (not t.Player.Items[t.Player.ItemExtraHand].Broken) then
            NumExtra = t.Player.Items[t.Player.ItemExtraHand].Number
        end
    end
    
    if (t.Stat == const.Stats.RangedAttack) then
    
        local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Bow])
        
        if mastery == 1 then
            t.Result = t.Result + skill
        else
            t.Result = t.Result + skill*3
        end
    end
    
    if t.Stat == const.Stats.ArmorClass then
    
        if IsItemType("Spear",NumMain) or IsItemType("Trident",NumMain) or IsItemType("Halberd",NumMain) then
        
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Spear])
            if mastery == 2 then
                t.Result = t.Result + skill
            elseif mastery == 3 then
                t.Result = t.Result + skill*3
            end
        elseif IsItemType("Mace",NumMain) then
        
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Mace])
            if mastery >= 2 then
                t.Result = t.Result + skill*2
            end
        elseif IsItemType("Staff",NumMain) then
        
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Staff]) --Remove Old Bonus
            if mastery >= 2 then
                t.Result = t.Result - skill
            end
        end
    end
    
    if t.Stat == const.Stats.MeleeDamageBase then
    
        if IsItemType("Sword",NumMain) then
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Sword])
            if mastery == 2 then 
                t.Result = t.Result + skill
            end
            if mastery == 3 then
                t.Result = t.Result + skill*2
            end
        end
    
        if IsItemType("Spear",NumMain) or IsItemType("Trident",NumMain) or IsItemType("Halberd",NumMain) then
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Spear])
            if mastery >= 2 then
                t.Result = t.Result + skill
            end
        end
        
        if IsItemType("Axe",NumMain) then
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Axe])
            if mastery == 2 then
                t.Result = t.Result + skill
            elseif mastery == 3 then
                t.Result = t.Result + skill
            end
        end
        
        if IsItemType("Mace",NumMain) then
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Mace])
            if mastery == 3 then
                t.Result = t.Result + skill
            end
        end
    end
    
    if t.Stat == const.Stats.MeleeAttack then
    
        if IsItemType("Axe",NumMain) and (not (IsItemType("Dagger",NumExtra) or IsItemType("Sword",NumExtra))) then
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Axe])

            t.Result = t.Result + skill
        end
        
        if IsItemType("Sword",NumMain) and (not (IsItemType("Dagger",NumExtra) or IsItemType("Sword",NumExtra))) then
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Sword])

            t.Result = t.Result + skill
        elseif IsItemType("Sword",NumExtra) then
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Sword])

            t.Result = t.Result + skill
        end
        
        if (IsItemType("Spear",NumMain) or IsItemType("Trident",NumMain) or IsItemType("Halberd",NumMain)) and (not (IsItemType("Dagger",NumExtra) or IsItemType("Sword",NumExtra))) then
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Spear])

            t.Result = t.Result + skill
        end
        
        if IsItemType("Mace",NumMain) and (not (IsItemType("Dagger",NumExtra) or IsItemType("Sword",NumExtra))) then
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Mace])

            t.Result = t.Result + skill
        end
        
        if IsItemType("Dagger",NumMain) and (not (IsItemType("Dagger",NumExtra) or IsItemType("Sword",NumExtra))) then
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Dagger])

            t.Result = t.Result + skill
        elseif IsItemType("Dagger",NumExtra) then
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Dagger])

            t.Result = t.Result + skill
        end
        
        if IsItemType("Staff",NumMain) then
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Staff]) --Remove Old Bonus
            t.Result = t.Result - skill
        end
    end
    
    if t.Stat == const.Stats.SpellPoints then   
    
        if IsItemType("Staff",NumMain) then
        
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Staff])
            if mastery == 1 then
                t.Result = t.Result + skill*2
            elseif mastery == 2 then
                t.Result = t.Result + skill*4
            elseif mastery == 3 then
                t.Result = t.Result + skill*6                 
            end
        end 
    end
end

function events.CalcStatBonusByItems(t)

    local NumMain, NumExtra = 0, 0
    
    if t.Player.ItemMainHand ~= 0 then
        if (not t.Player.Items[t.Player.ItemMainHand].Broken) then
            NumMain = t.Player.Items[t.Player.ItemMainHand].Number
        end
    end
    
    if t.Player.ItemExtraHand ~= 0 then
        if (not t.Player.Items[t.Player.ItemExtraHand].Broken) then
            NumExtra = t.Player.Items[t.Player.ItemExtraHand].Number
        end
    end

    if (t.Stat == const.Stats.FireResistance) or (t.Stat == const.Stats.ElecResistance) or (t.Stat == const.Stats.ColdResistance)
    or (t.Stat == const.Stats.PoisonResistance) or (t.Stat == const.Stats.MagicResistance) then
       
        if IsItemType("Staff",NumMain) then
        
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Staff])
            if mastery == 1 then
                t.Result = t.Result + skill*1
            elseif mastery == 2 then
                t.Result = t.Result + skill*2
            elseif mastery == 3 then
                t.Result = t.Result + skill*3                 
            end
        end 
       
    end
end