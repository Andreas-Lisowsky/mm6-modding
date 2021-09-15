local function Randoms(min, max, count)
    local r = 0
    for i = 1, count do
        r = r + math.random(min, max)
    end
    return r
end

function events.CalcSpellDamage(t)
    if t.Spell == 8 then -- Feuerwelle
        t.Result = 2 + Randoms(1, 2, t.Skill)
    end
    if t.Spell == 15 then -- Funkenflug
        t.Result = 1 + Randoms(0, 1, t.Skill)
    end
    if t.Spell == 26 then -- Giftnebel
        t.Result = 1 + Randoms(1, 1, t.Skill)
    end
    if t.Spell == 30 then -- Säurestrahl
        t.Result = 9 + Randoms(1, 9, t.Skill)
    end
    if t.Spell == 32 then -- Eisbombe
        t.Result = 6 + Randoms(1, 6, t.Skill)
    end
    if t.Spell == 39 then -- Klinge
        t.Result = Randoms(1, 8, t.Skill)
    end
    if t.Spell == 43 then -- TodesblÃ¼te
        t.Result = 100 + Randoms(1, 15, t.Skill)
    end
    if t.Spell == 76 then -- Fliegende Faust
        t.Result = 30 + Randoms(1, 10, t.Skill)
    end
    if t.Spell == 82 then -- Untote Vernichten
        t.Result = 40 + Randoms(1, 40, t.Skill)
    end
    if t.Spell == 84 then -- Prismenfeuer
        t.Result = 25 + Randoms(1, 2, t.Skill)
    end
    if t.Spell == 87 then -- Solarstrahl
        t.Result = 50 + Randoms(1, 50, t.Skill)
    end
    if t.Spell == 90 then -- Giftwolke
        t.Result = 25 + Randoms(1, 13, t.Skill)
    end
    if t.Spell == 92 then -- Schrapnell
        t.Result = 4 + Randoms(1, 4, t.Skill)
    end
end