function events.AfterLoadMap()

    local function ManaReg()
    
        for i=0,Party.Players.length-1,1 do
        
            Party.Players[i].SP = math.min(Party.Players[i].SP + math.ceil(Party.Players[i]:GetBaseLevel()/10), Party.Players[i]:GetFullSP())
        
        end
    end

    Timer(ManaReg,const.Minute*5,Party.LastRegenerationTime + const.Minute*5)  
end