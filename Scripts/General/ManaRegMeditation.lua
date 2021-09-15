function events.AfterLoadMap()

    local function ManaReg()
        
        for i=0,Party.Players.length-1,1 do
        
            local skill, mastery = SplitSkill(Party.Players[i].Skills[const.Skills.Meditation])
            
            if mastery == 1 then
                Party.Players[i].SP = math.min(Party.Players[i].SP + math.ceil(Party.Players[i]:GetFullSP()/100), Party.Players[i]:GetFullSP())
            elseif mastery == 2 then
                Party.Players[i].SP = math.min(Party.Players[i].SP + math.ceil(2 * Party.Players[i]:GetFullSP()/100), Party.Players[i]:GetFullSP())
            elseif mastery == 3 then
                Party.Players[i].SP = math.min(Party.Players[i].SP + math.ceil(3 * Party.Players[i]:GetFullSP()/100), Party.Players[i]:GetFullSP())
            end
        end
    end

    Timer(ManaReg,const.Minute*5,Party.LastRegenerationTime + const.Minute*5)  
end