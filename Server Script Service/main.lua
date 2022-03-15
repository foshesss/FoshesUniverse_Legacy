-- Services
local PS = game:GetService("Players");
local RS = game:GetService("ReplicatedStorage");

-- Modules
local inv_mod = require(RS:WaitForChild("Player"):WaitForChild("inv_module"));

function playerAdded(plr)
    inv_mod:AddInventory(plr);
end

function playerRemoved(plr)
    inv_mod:RemoveInventory(plr);
end

PS.PlayerAdded:Connect(playerAdded);
PS.PlayerRemoving:Connect(playerRemoved);