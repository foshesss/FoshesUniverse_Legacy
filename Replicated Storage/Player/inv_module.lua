local Inventory = {}
local inventories = {};

local item_mod = require(game:GetService("ReplicatedStorage"):WaitForChild("Info"):WaitForChild("item_module"));

local function checkForSet() -- this will be how to check for sets.

end

function Inventory:AddInventory(plr, inv)
	if inv then
		inventories[plr] = inv;
		return;
	end
	inventories[plr] = {};
	return;
end

function Inventory:RemoveInventory(plr)
	if inventories[plr] then
		inventories[plr] = nil;
		return;
	end
end

function Inventory:AddToInventory(plr, itemName)
	inventories[plr][#inventories[plr] + 1] = item_mod:GetItem(itemName);
end

return Inventory;