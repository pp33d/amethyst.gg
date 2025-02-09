local UserInputService = game:GetService("UserInputService")

local player = game:GetService("Players").LocalPlayer
local character = player.Character

local convert = game.Workspace.Platform:FindFirstChild("Convert")
convert.Transparency = 1

for _, v in ipairs(workspace.Hives:GetChildren()) do
    if v:FindFirstChild("Claimed").Value == false and noHive == true then
        local claimHandler = v.Platform.Top.Proxy.Handler
        local proxy = claimHandler.Parent.Parent:WaitForChild("Proxy")

        game:GetService("ReplicatedStorage").Remotes.ClaimHive:FireServer(proxy.Parent.Parent.Parent)
        noHive = false
    else
        noHive = false
    end
end

local AutoDigV = false
local MultiDigV = false
local AutoFarmV = false
local autoFarming = false
local digSpeed = 0.01
local multiDigSpeed = 1

local args = {
    [1] = false
}


local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "amethyst.gg - BSS99",
   Icon = "crown", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "amethyst.gg - loading",
   LoadingSubtitle = "guacamole nigga penis",
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = true, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = "amethyst.gg", -- Create a custom folder for your hub/game
      FileName = "amethystConfig"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "U7Uvr6zHWd", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "amethyst.gg",
      Subtitle = "key system",
      Note = "private", -- Use this to tell the user how to get a key
      FileName = "amethystggkey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"guacamole nigga penis"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Main", "code")
local Section = Tab:CreateSection("Auto Farm")

local Toggle = Tab:CreateToggle({
   Name = "Auto Dig",
   CurrentValue = false,
   Flag = "autodig", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    if AutoDigV == false and player.Character:FindFirstChildOfClass("Tool") then
            AutoDigV = true

            while AutoDigV == true  do
                if MultiDigV == true then
                    wait(multiDigSpeed)
                    for i = 30, 0, -1 do
                        player.Character:FindFirstChildOfClass("Tool").ToolRemote:FireServer(unpack(args))
                    end
                else
                    wait(digSpeed)
                    player.Character:FindFirstChildOfClass("Tool").ToolRemote:FireServer(unpack(args))
        end
            
            
            end
        elseif player.Backpack:FindFirstChildOfClass("Tool") then
                    local theTool = player.Backpack:FindFirstChildOfClass("Tool") 
                    theTool.Parent = character
                    wait(0.5)
        else
            AutoDigV = Value
        end
   end,
})

local Toggle2 = Tab:CreateToggle({
   Name = "Auto Convert",
   CurrentValue = false,
   Flag = "autoconvert", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        if AutoConvertV == false then
            AutoConvertV = Value
            while AutoConvertV == true do
                convert.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                wait(0.03)
                convert.Position = Vector3.new(50, 1000, 50)
            end
        else
            AutoConvertV = false
        end
    end,
})
local Section2 = Tab:CreateSection("Misc")

local Button = Tab:CreateButton({
   Name = "Delete Area Barriers",
   Callback = function()
        	local folder = game.Workspace.AreaBarriers
for i,v in pairs(folder:GetChildren()) do
     v:Destroy()
end
   end,
})

local Tab2 = Window:CreateTab("Main", "circle-ellipsis")
local Section = Tab2:CreateSection("Teleports")


Rayfield:LoadConfiguration()
