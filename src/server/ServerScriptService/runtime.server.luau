--!strict

-- Services
local Players = game:GetService("Players");
local ServerStorage = game:GetService("ServerStorage");

-- Setup:
Players.CharacterAutoLoads = false;
local Player = require(ServerStorage:FindFirstChild("Modules"):FindFirstChild("Player"));



local CombatComponent = require(ServerStorage:FindFirstChild("Modules"):FindFirstChild("Components"):FindFirstChild("CombatComponent"));

local BlockTarget = workspace:FindFirstChild("BlockTarget");
local BlockTargetClass = CombatComponent.new(BlockTarget, "BasicSword");
BlockTargetClass:onBlock();

local AttackTarget = workspace:FindFirstChild("AttackTarget");
local AttackTargetClass = CombatComponent.new(AttackTarget, "BasicSword");
while true do
    AttackTargetClass:onAttack();
    task.wait(1);
end