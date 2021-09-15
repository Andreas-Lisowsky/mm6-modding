function events.CalcStatBonusBySkills(t)
    
    if t.Stat == const.Stats.RangedDamageBase then
        if t.Player.ItemBow ~= 0 then
        
            if (t.Player:GetAccuracy() < 3) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result - 6
            elseif (t.Player:GetAccuracy() < 5) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result - 5
            elseif (t.Player:GetAccuracy() < 7) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result - 4
            elseif (t.Player:GetAccuracy() < 9) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result - 3
            elseif (t.Player:GetAccuracy() < 11) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result - 2
            elseif (t.Player:GetAccuracy() < 13) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result - 1
            elseif (t.Player:GetAccuracy() < 17) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 1
            elseif (t.Player:GetAccuracy() < 19) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 2
            elseif (t.Player:GetAccuracy() < 21) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 3
            elseif (t.Player:GetAccuracy() < 25) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 4
            elseif (t.Player:GetAccuracy() < 30) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 5
            elseif (t.Player:GetAccuracy() < 35) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 6
            elseif (t.Player:GetAccuracy() < 40) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 7
            elseif (t.Player:GetAccuracy() < 50) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 8
            elseif (t.Player:GetAccuracy() < 75) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 9
            elseif (t.Player:GetAccuracy() < 100) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 10
            elseif (t.Player:GetAccuracy() < 125) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 11
            elseif (t.Player:GetAccuracy() < 150) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 12
            elseif (t.Player:GetAccuracy() < 175) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 13
            elseif (t.Player:GetAccuracy() < 200) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 14
            elseif (t.Player:GetAccuracy() < 225) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 15
            elseif (t.Player:GetAccuracy() < 250) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 16
            elseif (t.Player:GetAccuracy() < 275) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 17
            elseif (t.Player:GetAccuracy() < 300) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 18
            elseif (t.Player:GetAccuracy() < 350) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 19
            elseif (t.Player:GetAccuracy() < 400) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 20
            elseif (t.Player:GetAccuracy() < 500) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 25
            elseif (t.Player:GetAccuracy() >= 500) and (not t.Player.ItemBow.Broken) then
                t.Result = t.Result + 30  
            end
        end
    end
end