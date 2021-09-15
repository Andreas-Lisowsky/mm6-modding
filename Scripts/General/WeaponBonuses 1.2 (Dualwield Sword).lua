function events.CalcStatBonusBySkills(t)
    
    local NumMain, NumExtra = 0
    
    if t.Player.ItemMainHand ~= 0 then
        if (not t.Player.Items[t.Player.ItemMainHand].Broken) then
            NumMain = t.Player.Items[t.Player.ItemMainHand].Number
        end
    end
    
    if (t.Player.ItemExtraHand ~= 0) then
        if not t.Player.Items[t.Player.ItemExtraHand].Broken then
            NumExtra = t.Player.Items[t.Player.ItemExtraHand].Number
        end
    end
    
    if (t.Stat == const.Stats.MeleeAttack) then
        t.Result = t.Result*2
    end
    
    if (t.Stat == const.Stats.RangedAttack) then
    
        local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Bow])
        
        if mastery == 1 then
            t.Result = t.Result*2
        else
            t.Result = t.Result*4
        end
    end
    
    if t.Stat == const.Stats.ArmorClass then
    
        if IsItemType("Spear",NumMain) or IsItemType("Trident",NumMain) or IsItemType("Halberd",NumMain) then
        
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Spear])
            if mastery == 3 then
                t.Result = t.Result + skill
            end
        elseif IsItemType("Mace",NumMain) then
        
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Mace])
            if mastery >= 2 then
                t.Result = t.Result + skill
            end
        elseif IsItemType("Staff",NumMain) then
        
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Staff])
            if mastery >= 2 then
                t.Result = t.Result + skill
            end
        end
    end
    
    if t.Stat == const.Stats.MeleeDamageBase then
    
        if IsItemType("Sword",NumMain) then --Sword bonus
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
        
        if IsItemType("Staff",NumMain) then
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Staff])
            if mastery == 2 then
                t.Result = t.Result + skill
            elseif mastery == 3 then
                t.Result = t.Result + skill*2
            end
        end
        
        if IsItemType("Mace",NumMain) then
            local skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Mace])
            if mastery == 3 then
                t.Result = t.Result + skill
            end
        end
    end
end