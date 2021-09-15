function IsItemType(type, number)

    if type == "Spear" and number >= 31 and number <= 35 then
        return true
    elseif type == "Trident" and ((number >= 39 and number <= 41) or number == 417) then
        return true
    elseif type == "Halberd" and number >= 36 and number <= 38 then
        return true
    elseif type == "Sword" and ((number >= 1 and number <= 14) or number == 403 or number == 415 or number == 419) then
        return true
    elseif type == "Axe" and ((number >= 23 and number <= 30) or number == 402 or number == 418 or number == 498) then
        return true
    elseif type == "Mace" and ((number >= 50 and number <= 57) or number == 401 or number == 416) then
        return true
    elseif type == "Staff" and ((number >= 61 and number <= 63) or number == 404) then
        return true
    elseif type == "Dagger" and ((number >= 15 and number <= 22) or number == 400) then
        return true
    elseif type == "Shield" and ((number >= 79 and number <= 88) or number == 408 or number == 423 or number == 499) then
        return true
    else return false
    end
end