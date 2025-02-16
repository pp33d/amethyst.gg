local UserInputService = game:GetService("UserInputService")

local plr = game.Players.LocalPlayer
local char = plr.Character
local hrp = char:WaitForChild("HumanoidRootPart")

local notiModule = require(game.ReplicatedStorage.Modules:WaitForChild("NotificationModule"))
			notiModule.Create(plr,{Message="amethyst.gg - the only bss99 script 😭😭",Type="Default"})
            notiModule.Create(plr,{Message="",Type="Default"})
notiModule.Create(plr,{Message="",Type="Default"})

local convert = workspace.AdminRoom.Convert
convert.Transparency = 1

local adminroomtools = game.Workspace.AdminRoom:GetChildren()

local allitemsalt = workspace.AdminRoom["All Items"]
allitemsalt.Transparency = 1

local buffs = workspace.AdminRoom["Super buffs"]
buffs.Transparency = 1

local bestbackpack = workspace.AdminRoom["Blackhole"]
bestbackpack.Transparency = 1

local besttool = workspace.AdminRoom["Saturn Staff"]
besttool.Transparency = 1

local bestmask = workspace.AdminRoom["Honey Mask"]
bestmask.Transparency = 1

local beelevel = workspace.AdminRoom["Max Level Bee"]
beelevel.Transparency = 1

local completequest = workspace.AdminRoom["Complete Quest"]
completequest.Transparency = 1

local infhoneypart = workspace.AdminRoom["Max Honey"]
infhoneypart.Transparency = 1

    function belt()
for i,v in pairs(adminroomtools) do
    if v:IsA("Part") and v.Name == "Robo Popper" and v.SurfaceGui.TextLabel.Text == "Equip Mondo Belt Bag" then
        v.CFrame = hrp.CFrame
        task.wait()
        v.Position = Vector3.new(50, 1000, 50)
        end
    end
end


    function guard1()
for i,v in pairs(adminroomtools) do
    if v:IsA("Part") and v.Name == "Robo Popper" and v.SurfaceGui.TextLabel.Text == "Equip Crimson Guard(dk whic one tho)" then
        v.CFrame = hrp.CFrame
        task.wait()
        v.Position = Vector3.new(50, 1000, 50)
        end
    end
end


    function guard2()
for i,v in pairs(adminroomtools) do
    if v:IsA("Part") and v.Name == "Robo Popper" and v.SurfaceGui.TextLabel.Text == "Equip Cobalt Guard(obama last name is-" then
        v.CFrame = hrp.CFrame
        task.wait()
        v.Position = Vector3.new(50, 1000, 50)
        end
    end
end

    function mask()
        bestmask.CFrame = hrp.CFrame
        task.wait()
        bestmask.Position = Vector3.new(50, 1000, 50)
end


    function backpack()
        bestbackpack.CFrame = hrp.CFrame
        task.wait()
        bestbackpack.Position = Vector3.new(50, 1000, 50)
end

    function tool()
        besttool.CFrame = hrp.CFrame
        task.wait()
        besttool.Position = Vector3.new(50, 1000, 50)
end

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
   Icon = 87136479005455, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "amethyst.gg - loading",
   LoadingSubtitle = "fuck bss 99",
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
      Invite = "v83wdMRhDp", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
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
      Key = {"nigger"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local HomeTab = Window:CreateTab("Home", "armchair")
local Sectiona = HomeTab:CreateSection("Information")
local texto = HomeTab:CreateLabel("UPD: Added Inf Honey Back")
local texto2 = HomeTab:CreateLabel("UPD: Added More OP Features")
local texto3 = HomeTab:CreateLabel("UPD: Added Get All Items (2 methods)")
local Sectione = HomeTab:CreateSection("")
local Section = HomeTab:CreateSection("idk where to put ts")

local natashakartinova = HomeTab:CreateButton({
   Name = "Inf Honey",
   Callback = function()
        infhoneypart.CFrame = hrp.CFrame
        wait(1)
        infhoneypart.Position = Vector3.new(50, 1000, 50)
   end,
})

local Buttonereeu = HomeTab:CreateButton({
   Name = "Give All Items",
   Callback = function()
local amount = 9999999 -- item amount
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Items:GetChildren())
 do
    if v:IsA("Frame") then
        game.ReplicatedStorage.Remotes.ModifyItemData:FireServer(v.Name,amount)
    else
        print("hi")
    end
end
end
})

local Buttonererureo = HomeTab:CreateButton({
   Name = "Give All Items (ALT)",
   Callback = function()
    allitemsalt.CFrame = hrp.CFrame
    task.wait()
    allitemsalt.Position = Vector3.new(50, 1000, 50)
end
})

local Buttonererureuo = HomeTab:CreateButton({
   Name = "Complete Quests",
   Callback = function()
    completequest.CFrame = hrp.CFrame
    task.wait()
    completequest.Position = Vector3.new(50, 1000, 50)
end
})

local Buttoneruro = HomeTab:CreateButton({
   Name = "Get Science Power X100",
   Callback = function()
    buffs.CFrame = hrp.CFrame
    task.wait()
    buffs.Position = Vector3.new(50, 1000, 50)
end
})

local Buttonerue = HomeTab:CreateButton({
   Name = "Max Level Bees",
   Callback = function()
        beelevel.CFrame = hrp.CFrame
        task.wait()
        beelevel.Position = Vector3.new(50, 1000, 50)
        end
})

local Buttone = HomeTab:CreateButton({
   Name = "Redeem All Codes",
   Callback = function()
        for i,v in pairs(game:GetService("Players").LocalPlayer.Codes:GetChildren())
 do
    if v:IsA("IntValue") then
        game.ReplicatedStorage.Remotes.RedeemCode:FireServer(v.Name)
    else
        print("nigga")
    end
end
   end,
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
local Section = Tab2:CreateSection("FIX IN PROGRESS")



local Buttoner = Tab2:CreateButton({
   Name = "Delete Area Barriers",
   Callback = function()
        	local folder = game.Workspace.AreaBarriers
for i,v in pairs(folder:GetChildren()) do
     v:Destroy()
end
   end,
})

