local Item = {}
local items = {
    {
        -- General
        Name = "Linked Sword";
        Rarity = "Common";
        Description = "A sword once wielded by the great Telamon. A shame they just give them out now.";
        ItemType = "Weapon";
        dropRate = nil; -- correlates to 15% chance

        -- Unique Stats
        Damage = {1,1,1};
        Effect = function(target) 
            if target and target.Humanoid.Health > 0 then -- checks if target is still alive and can be stunned
                print("ACTIVATED");
            end
        end;
        Set = "Total Noob"; -- maybe the noob set
        --[[
            some abstract code
            if bodyColors = noob colors then
                BOOST
            end
        ]]

        -- Shop Info
        buyPrice = nil;
        sellPrice = 15;

         -- Handling Info
         Equipped = false;
         Bindable = false;
         Equippable = true;
         Tradeable = true;
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

function Item:GetItem(name)
    for _, v in pairs(items) do
        if v.Name == name then
            return deepCopy(v);
        end
    end
end


return Item;