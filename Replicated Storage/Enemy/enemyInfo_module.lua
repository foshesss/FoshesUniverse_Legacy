local Enemy = {}
local enemies = {
    {
        Name = "Nya-lite";
        Level = {1};
        Health = {2};
        Description = "Annoying piece of shit";
        Class = "Light"; -- Light, Medium, Heavy, Mini-Boss, Boss
        Type = "Melee"; -- Melee, Ranged, Mixed
        Drops = {"Linked Sword"};
    }
};

local function deepCopy(original) 
    local copy = {};
    for k, v in pairs(original) do
        if type(v) == "table" then
            v = deepCopy(v);
        end
        copy[k] = v;
    end
    return copy;
end

function Enemy:GetEnemy(name)
    for _, v in pairs(enemies) do
        if v.Name == name then
            return deepCopy(v);
        end
    end
end

return Enemy;