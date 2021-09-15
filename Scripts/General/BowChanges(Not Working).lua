function events.CalcStatBonusBySkills(t)

    if t.Stat == const.Stats.RangedDamageBase then
      
        skill, mastery = SplitSkill(t.Player.Skills[const.Skills.Bow])
        
        if mastery >= 2 then
            t.Result = t.Result + skill
        end
    end
end