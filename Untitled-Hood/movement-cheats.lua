-- init 
local GetService, IsLoaded, Loaded = game.GetService, game.IsLoaded, game.Loaded; do 
    if not IsLoaded(game) then 
        Loaded.Wait(Loaded);
    end
end

-- variables
local client = game.GetService(game, "Players").LocalPlayer;
local FindFirstChild, WaitForChild, NewInstance = game.FindFirstChild, game.WaitForChild, Instance.new

-- checking to make sure the game has loaded everything (all of these da hood remakes are super unoptimized, hence why this is so overcomplicated)
local Character = client.Character or client.CharacterAdded.Wait(Client.CharacterAdded);
if not Character then return end 

local BodyEffects = WaitForChild(Character, "BodyEffects");
if not BodyEffects then return end 

local Movement = FindFirstChild(BodyEffects, "Movement");
if not Movement then return end 

-- this game literally checks if a NumberValue inside your character is a certain name lmfao
local SuperSpeed = NewInstance("NumberValue");
SuperSpeed.Name = "SuperSpeed"
SuperSpeed.Parent = Movement

local FastSprint = NewInstance("NumberValue");
FastSprint.Name = "FastSprint"
FastSprint.Parent = Movement

local HulkJump = NewInstance("NumberValue");
HulkJump.Name = "HulkJump"
HulkJump.Parent = Movement
