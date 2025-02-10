local UserInputService = game:GetService("UserInputService")

local plr = game.Players.LocalPlayer
local char = plr.Character
local hrp = char:WaitForChild("HumanoidRootPart")

local convert = game.Workspace.Platform:FindFirstChild("Convert")
convert.Transparency = 1

local getFields = game.Workspace.Fields

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
   Icon = 135300817749879, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
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

local HomeTab = Window:CreateTab("Home", "armchair")
local Sectiona = HomeTab:CreateSection("Information")
local texto = HomeTab:CreateLabel("UPD: Added Get All Items")
local texto2 = HomeTab:CreateLabel("UPD: Added Redeem All Codes")
local texto3 = HomeTab:CreateLabel("UPD: Added Open Shop")
local Sectione = HomeTab:CreateSection("")
local Buttone = HomeTab:CreateButton({
   Name = "Redeem All Codes",
   Callback = function()
        local args = {
    [1] = "100kvisits",
    [2] = "100members",
    [3] = "250dcmembers",
    [4] = "300gmembers",
    [5] = "300likes",
    [6] = "99startercode",
    [7] = "diamondsandsilver",
    [8] = "honeycoins",
    [9] = "santee's-special-testing-code",
    [10] = "test",
    [11] = "test2",
    [12] = "tornadoegg",
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RedeemCode"):FireServer(args[1])
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RedeemCode"):FireServer(args[2])
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RedeemCode"):FireServer(args[3])
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RedeemCode"):FireServer(args[4])
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RedeemCode"):FireServer(args[5])
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RedeemCode"):FireServer(args[6])
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RedeemCode"):FireServer(args[7])
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RedeemCode"):FireServer(args[8])
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RedeemCode"):FireServer(args[9])
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RedeemCode"):FireServer(args[10])
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RedeemCode"):FireServer(args[11])
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RedeemCode"):FireServer(args[12])

   end,
})

local Buttonere = HomeTab:CreateButton({
   Name = "Give All Items",
   Callback = function()
local amount = 9999999 -- item amount
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Items:GetChildren())
 do
    if v:IsA("Frame") then
        game.ReplicatedStorage.Remotes.ModifyItemData:FireServer(v.Name,amount)
    else
        continue
    end
end
end
})

local Tab = Window:CreateTab("Main", "code")
local Section = Tab:CreateSection("Auto Farm")

local Toggle = Tab:CreateToggle({
   Name = "Auto Dig",
   CurrentValue = false,
   Flag = "autodig", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    if AutoDigV == false and plr.Character:FindFirstChildOfClass("Tool") then
            AutoDigV = true

            while AutoDigV == true  do
                if MultiDigV == true then
                    wait(multiDigSpeed)
                    for i = 30, 0, -1 do
                        plr.Character:FindFirstChildOfClass("Tool").ToolRemote:FireServer(unpack(args))
                    end
                else
                    wait(digSpeed)
                    plr.Character:FindFirstChildOfClass("Tool").ToolRemote:FireServer(unpack(args))
        end
            
            
            end
        elseif plr.Backpack:FindFirstChildOfClass("Tool") then
                    local theTool = plr.Backpack:FindFirstChildOfClass("Tool") 
                    theTool.Parent = char
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


local Tab2 = Window:CreateTab("Misc", "circle-ellipsis")
local Section = Tab2:CreateSection("Teleports")

local Dropdown = Tab2:CreateDropdown({
   Name = "Teleport to Field",
   Options = {"Apple Field","Bamboo Field","Banana Field","Clover Field","Grape Field","Hacker Field","Orange Field","Pear Field","Pepper Field","Pineapple Field","Pumpkin Field","Raspberry Field","Seashell Field","Seaweed Field","Secret Field","Spider Field","Star Field","Ticket Field"},
   CurrentOption = {"Apple Field"},
   MultipleOptions = false,
   Flag = "fieldtp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
		for i,v in pairs(game.Workspace.Fields:GetChildren()) do
                if v.Name == Options[1] then
                    plr.Character.PrimaryPart.CFrame = v.FieldBox.CFrame
                end
            end
   end,
})

local Section = Tab2:CreateSection("Other")

local shopthing = Tab2:CreateDropdown({
   Name = "Open Shop",
   Options = {"10 Shop","20 Shop","25 Shop","40 Shop","5 Shop","Aqua Shop","Basic Egg","Blue Shop","Cloud","Gum Shop","Gumdrops","Hack Shop","LadyBug Shop","LimitedShop","Needs Shop","Pixel Bee Egg","Pixel Shop","Pixel Ticket","Red Shop","S","Sprinkler Shop","Star Shop","Starter Shop","Ticket","Tornado Bee Egg","Tornado Shop","Toxic Shop",},
   CurrentOption = {"10 Shop"},
   MultipleOptions = false,
   Flag = "openshop", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
        local args = {
    [1] = Options[1],
    [2] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("OpenShop"):FireServer(unpack(args))

   end,
})

local Buttoner = Tab2:CreateButton({
   Name = "Delete Area Barriers",
   Callback = function()
        	local folder = game.Workspace.AreaBarriers
for i,v in pairs(folder:GetChildren()) do
     v:Destroy()
end
   end,
})


Rayfield:LoadConfiguration()

