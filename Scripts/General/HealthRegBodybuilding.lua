function events.AfterLoadMap()

    local function HealthReg()
        
        for i=0,Party.Players.length-1,1 do
        
            local skill, mastery = SplitSkill(Party.Players[i].Skills[const.Skills.Bodybuilding])
            
            if mastery == 1 then
                Party.Players[i].HP = math.min(Party.Players[i].HP + math.ceil(Party.Players[i]:GetFullHP()/100), Party.Players[i]:GetFullHP())
            elseif mastery == 2 then
                Party.Players[i].HP = math.min(Party.Players[i].HP + 2 * math.ceil(Party.Players[i]:GetFullHP()/100), Party.Players[i]:GetFullHP())
            elseif mastery == 3 then
                Party.Players[i].HP = math.min(Party.Players[i].HP + 3 * math.ceil(Party.Players[i]:GetFullHP()/100), Party.Players[i]:GetFullHP())
            end
        end
    end

    Timer(HealthReg,const.Minute*5,Party.LastRegenerationTime + const.Minute*5)  
end