local function Randoms(min, max, count)
    local r = 0
    for i = 1, count do
        r = r + math.random(min, max)
    end
    return r
end

function events.CalcSpellDamage(t)
    if t.Spell == 2 then -- Feuerpfeil
        t.Result = 2 + Randoms(1, 2, t.Skill)
    end
    if t.Spell == 4 then -- Feuerstrahl
        t.Result = 4 + Randoms(1, 4, t.Skill)
    end
    if t.Spell == 6 then -- Feuerball
        t.Result = 3 + Randoms(1, 3, t.Skill)
    end
    if t.Spell == 7 then -- Feuerring
        t.Result = 2 + Randoms(1, 2, t.Skill)
    end
    if t.Spell == 8 then -- Feuerwelle
        t.Result = 2 + Randoms(1, 2, t.Skill)
    end
    if t.Spell == 10 then -- Inferno
        t.Result = 4 + Randoms(1, 4, t.Skill)
    end
    if t.Spell == 13 then -- Elektroschock
        t.Result = 2 + Randoms(1, 2, t.Skill)
    end
    if t.Spell == 15 then -- Funkenflug
        t.Result = 1 + Randoms(0, 1, t.Skill)
    end
    if t.Spell == 18 then -- Blitzstrahl
        t.Result = 8 + Randoms(1, 8, t.Skill)
    end
    if t.Spell == 20 then -- Implosion
        t.Result = 12 + Randoms(1, 12, t.Skill)
    end
    if t.Spell == 24 then -- Kältestrahl
        t.Result = 2 + Randoms(1, 2, t.Skill)
    end
    if t.Spell == 26 then -- Giftnebel
        t.Result = 1 + Randoms(1, 1, t.Skill)
    end
    if t.Spell == 28 then -- Eisstrahl
        t.Result = 7 + Randoms(1, 7, t.Skill)
    end
    if t.Spell == 30 then -- Säurestrahl
        t.Result = 10 + Randoms(1, 10, t.Skill)
    end
    if t.Spell == 32 then -- Eisbombe
        t.Result = 6 + Randoms(1, 6, t.Skill)
    end
    if t.Spell == 35 then -- Magischer Pfeil
        t.Result = 2 + Randoms(1, 2, t.Skill)
    end
    if t.Spell == 37 then -- Todesschwarm
        t.Result = 4 + Randoms(1, 4, t.Skill)
    end
    if t.Spell == 39 then -- Klinge
        t.Result = 8 + Randoms(1, 8, t.Skill)
    end
    if t.Spell == 41 then -- Felsenattacke
        t.Result = 5 + Randoms(1, 5, t.Skill)
    end
    if t.Spell == 43 then -- Todesblüte
        t.Result = 100 + Randoms(1, 15, t.Skill)
    end
    if t.Spell == 44 then -- Mass Distortion
        t.Result = 8 + Randoms(1, 8, t.Skill) + math.floor(t.HP*(0.01*t.Skill))
    end
    if t.Spell == 45 then -- Spiritueller Pfeil
        t.Result = 2 + Randoms(1, 2, t.Skill)
    end
    if t.Spell == 58 then -- Nervenschock
        t.Result = 3 + Randoms(1, 3, t.Skill)
    end
    if t.Spell == 65 then -- Hirnschlag
        t.Result = 14 + Randoms(1, 14, t.Skill)
    end
    if t.Spell == 70 then -- Bolzen
        t.Result = 4 + Randoms(1, 4, t.Skill)
    end
    if t.Spell == 76 then -- Fliegende Faust
        t.Result = 14 + Randoms(1, 14, t.Skill)
    end
    if t.Spell == 82 then -- Untote Vernichten
        t.Result = 40 + Randoms(1, 40, t.Skill)
    end
    if t.Spell == 84 then -- Prismenfeuer
        t.Result = 7 + Randoms(1, 7, t.Skill)
    end
    if t.Spell == 87 then -- Solarstrahl
        t.Result = 50 + Randoms(1, 50, t.Skill)
    end
    if t.Spell == 90 then -- Giftwolke
        t.Result = 15 + Randoms(1, 15, t.Skill)
    end
    if t.Spell == 92 then -- Schrapnell
        t.Result = 5 + Randoms(1, 5, t.Skill)
    end
    if t.Spell == 97 then -- Drachenhauch
        t.Result = 20 + Randoms(1, 20, t.Skill)
    end
end