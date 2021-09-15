local function Randoms(min, max, count)
    local r = 0
    for i = 1, count do
        r = r + math.random(min, max)
    end
    return r
end

function events.CalcSpellDamage(t)
    if t.Spell == 2 then -- Flammenpfeil
        t.Result = Randoms(4, 8, 1) + Randoms(1, 1, t.Skill)
    end
    if t.Spell == 4 then -- Feuerstrahl
        t.Result = 13 + Randoms(1, 6, t.Skill)
    end
    if t.Spell == 6 then -- Feuerball
        t.Result = 8 + Randoms(1, 3, t.Skill)
    end
    if t.Spell == 7 then -- Feuerring
        t.Result = 6 + Randoms(1, 2, t.Skill)
    end
    if t.Spell == 8 then -- Feuerwelle
        t.Result = 6 + Randoms(1, 2, t.Skill)
    end
    if t.Spell == 10 then -- Inferno
        t.Result = 8 + Randoms(1, 3, t.Skill)
    end
    if t.Spell == 11 then -- Verbrennen
        t.Result = 48 + Randoms(1, 23, t.Skill)
    end
    if t.Spell == 13 then -- Elektroschock
        t.Result = Randoms(2, 6, 1) + Randoms(1, 1, t.Skill)
    end
    if t.Spell == 15 then -- Funkenflug
        t.Result = 3 + Randoms(1, 1, t.Skill)
    end
    if t.Spell == 18 then -- Blitzstrahl
        t.Result = 26 + Randoms(1, 12, t.Skill)
    end
    if t.Spell == 20 then -- Implosion
        t.Result = 40 + Randoms(1, 19, t.Skill)
    end
    if t.Spell == 24 then -- Kältestrahl
        t.Result = Randoms(2, 6, 1) + Randoms(1, 1, t.Skill)
    end
    if t.Spell == 26 then -- Giftnebel
        t.Result = 5 + Randoms(1, 2, t.Skill)
    end
    if t.Spell == 28 then -- Eisstrahl
        t.Result = 22 + Randoms(1, 10, t.Skill)
    end
    if t.Spell == 30 then -- Säurestrahl
        t.Result = 30 + Randoms(1, 14, t.Skill)
    end
    if t.Spell == 32 then -- Eisbombe
        t.Result = 32 + Randoms(1, 15, t.Skill)
    end
    if t.Spell == 35 then -- Magischer Pfeil
        t.Result = Randoms(4, 8, 1) + Randoms(1, 1, t.Skill)
    end
    if t.Spell == 37 then -- Todesschwarm
        t.Result = 13 + Randoms(2, 5, t.Skill)
    end
    if t.Spell == 39 then -- Klinge
        t.Result = 22 + Randoms(1, 10, t.Skill)
    end
    if t.Spell == 41 then -- Felsenattacke
        t.Result = 8 + Randoms(14, 1-6, t.Skill)
    end
    if t.Spell == 43 then -- Todesblüte
        t.Result = 224 + Randoms(1, 30, t.Skill)
    end
    if t.Spell == 45 then -- Spiritueller Pfeil
        t.Result = Randoms(4, 8, 1) + Randoms(1, 1, t.Skill)
    end
    if t.Spell == 58 then -- Nervenschock
        t.Result = 10 + Randoms(1, 4, t.Skill)
    end
    if t.Spell == 65 then -- Hirnschlag
        t.Result = 44 + Randoms(1, 21, t.Skill)
    end
    if t.Spell == 70 then -- Bolzen
        t.Result = 13 + Randoms(1, 6, t.Skill)
    end
    if t.Spell == 76 then -- Fliegende Faust
        t.Result = 44 + Randoms(1, 21, t.Skill)
    end
    if t.Spell == 82 then -- Untote Vernichten
        t.Result = 64 + Randoms(1, 30, t.Skill)
    end
    if t.Spell == 84 then -- Prismenfeuer
        t.Result = 14 + Randoms(1, 6, t.Skill)
    end
    if t.Spell == 87 then -- Solarstrahl
        t.Result = 88 + Randoms(1, 43, t.Skill)
    end
    if t.Spell == 90 then -- Giftwolke
        t.Result = 48 + Randoms(1, 23, t.Skill)
    end
    if t.Spell == 92 then -- Schrapnell
        t.Result = 14 + Randoms(1, 6, t.Skill)
    end
    if t.Spell == 97 then -- Drachenhauch
        t.Result = 44 + Randoms(1, 20, t.Skill)
    end
end