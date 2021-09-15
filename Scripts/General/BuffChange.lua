function events.CalcStatBonusByMagic(t)
    if t.Stat == const.Stats.MeleeAttack or t.Stat == const.Stats.RangedAttack then --Bless
        if t.Player.SpellBuffs[0].Power ~= 0 then
            if t.Player.SpellBuffs[0].Skill < 3 then --Normal/Expert
                t.Result = 5
            else --Master
                t.Result = 7
            end
        end
    end
    
    if t.Stat == const.Stats.MeleeDamageBase then --Heroism
        if t.Player.SpellBuffs[1].Power ~= 0 then
            if t.Player.SpellBuffs[1].Skill < 3 then --Normal/Expert
                t.Result = 5
            else --Master
                t.Result = 7
            end
        end
    end
    
    if t.Stat == const.Stats.ArmorClass then --Stoneskin
        if t.Player.SpellBuffs[4].Power ~= 0 then
            if t.Player.SpellBuffs[4].Skill < 3 then --Normal/Expert
                t.Result = 10
            else --Master
                t.Result = 15
            end
        end
    end
    
    if t.Stat == const.Stats.FireResistance then
        if Party.SpellBuffs[0].Power ~= 0 then
            if Party.SpellBuffs[0].Skill == 1 then --Normal
                t.Result = 10
            elseif Party.SpellBuffs[0].Skill == 2 then --Expert
                t.Result = 20
            elseif Party.SpellBuffs[0].Skill == 3 then --Master
                t.Result = 40
            end
        end
    end
    
    if t.Stat == const.Stats.ColdResistance then
        if Party.SpellBuffs[1].Power ~= 0 then
            if Party.SpellBuffs[1].Skill == 1 then --Normal
                t.Result = 10
            elseif Party.SpellBuffs[1].Skill == 2 then --Expert
                t.Result = 20
            elseif Party.SpellBuffs[1].Skill == 3 then --Master
                t.Result = 40
            end
        end
    end
    
    if t.Stat == const.Stats.ElecResistance then
        if Party.SpellBuffs[2].Power ~= 0 then
            if Party.SpellBuffs[2].Skill == 1 then --Normal
                t.Result = 10
            elseif Party.SpellBuffs[2].Skill == 2 then --Expert
                t.Result = 20
            elseif Party.SpellBuffs[2].Skill == 3 then --Master
                t.Result = 40
            end
        end
    end
    
    if t.Stat == const.Stats.MagicResistance then
        if Party.SpellBuffs[3].Power ~= 0 then
            if Party.SpellBuffs[3].Skill == 1 then --Normal
                t.Result = 10
            elseif Party.SpellBuffs[3].Skill == 2 then --Expert
                t.Result = 20
            elseif Party.SpellBuffs[3].Skill == 3 then --Master
                t.Result = 40
            end
        end
    end
    
    if t.Stat == const.Stats.PoisonResistance then
        if Party.SpellBuffs[4].Power ~= 0 then
            if Party.SpellBuffs[4].Skill == 1 then --Normal
                t.Result = 10
            elseif Party.SpellBuffs[4].Skill == 2 then --Expert
                t.Result = 20
            elseif Party.SpellBuffs[4].Skill == 3 then --Master
                t.Result = 40
            end
        end
    end
end