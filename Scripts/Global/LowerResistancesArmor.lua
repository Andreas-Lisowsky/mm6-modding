    function events.CalcStatBonusByMagic(t) 

        if t.Stat == const.Stats.FireResistance or t.Stat == const.Stats.ColdResistance or t.Stat == const.Stats.ElecResistance
        or t.Stat == const.Stats.PoisonResistance or t.Stat == const.Stats.MagicResistance or t.Stat == const.Stats.ArmorClass then
        
            t.Result = math.floor(t.Result/2)
        end
    end

    function events.CalcStatBonusBySkills(t)

        if t.Stat == const.Stats.FireResistance or t.Stat == const.Stats.ColdResistance or t.Stat == const.Stats.ElecResistance
        or t.Stat == const.Stats.PoisonResistance or t.Stat == const.Stats.MagicResistance or t.Stat == const.Stats.ArmorClass then
        
            t.Result = math.floor(t.Result/2)
        end
    end

    function events.CalcStatBonusByItems(t)

        if t.Stat == const.Stats.FireResistance or t.Stat == const.Stats.ColdResistance or t.Stat == const.Stats.ElecResistance
        or t.Stat == const.Stats.PoisonResistance or t.Stat == const.Stats.MagicResistance or t.Stat == const.Stats.ArmorClass then
        
            t.Result = math.floor(t.Result/2)
        end
    end
    
    for i=0,Party.Players.length-1,1 do
        
            Party.Players[i].FireResistanceBase = math.floor(Party.Players[i].FireResistanceBase/2)
            Party.Players[i].FireResistanceBonus = math.floor(Party.Players[i].FireResistanceBonus/2)
            Party.Players[i].ElecResistanceBase = math.floor(Party.Players[i].ElecResistanceBase/2)
            Party.Players[i].ElecResistanceBonus = math.floor(Party.Players[i].ElecResistanceBonus/2)
            Party.Players[i].ColdResistanceBase = math.floor(Party.Players[i].ColdResistanceBase/2)
            Party.Players[i].ColdResistanceBonus = math.floor(Party.Players[i].ColdResistanceBonus/2)
            Party.Players[i].PoisonResistanceBase = math.floor(Party.Players[i].PoisonResistanceBase/2)
            Party.Players[i].PoisonResistanceBonus = math.floor(Party.Players[i].PoisonResistanceBonus/2)
            Party.Players[i].MagicResistanceBase = math.floor(Party.Players[i].MagicResistanceBase/2)
            Party.Players[i].MagicResistanceBonus = math.floor(Party.Players[i].MagicResistanceBonus/2)
            
            Party.Players[i].ArmorClassBonus = math.floor(Party.Players[i].ArmorClassBonus/2)
    end