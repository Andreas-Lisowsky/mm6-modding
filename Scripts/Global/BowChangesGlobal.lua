    for i=0,Party.Players.length-1,1 do
        
        skill, mastery = SplitSkill(Party.Players[i].Skills[const.Skills.Bow])
        
        if mastery >= 2 then
            Party.Players[i].RangedDamageBonus = Party.Players[i].RangedDamageBonus + skill
        end
    end