local keystrokes = {}

function keystrokes:Clear()
    for i,v in pairs(game.CoreGui:GetChildren()) do
        if v.Name == "MainUI" and v:FindFirstChild("Holder") then
            v:Destroy()
        end
    end
end

function keystrokes:Create(font, textcolor)
    for i,v in pairs(game.CoreGui:GetChildren()) do
        if v.Name == "MainUI" and v:FindFirstChild("Holder") then
            v:Destroy()
        end
    end

    local LCPS = 0
    local RCPS = 0
    local MainUI = Instance.new("ScreenGui")
    local Holder = Instance.new("Frame")
    local LeftUI = Instance.new("TextLabel")
    local RightUI = Instance.new("TextLabel")
    local UICornerW = Instance.new("UICorner")
    local UICornerA = Instance.new("UICorner")
    local UICornerS = Instance.new("UICorner")
    local UICornerD = Instance.new("UICorner")
    local UICornerL = Instance.new("UICorner")
    local UICornerR = Instance.new("UICorner")
    local UICornerSpace = Instance.new("UICorner")

    local Keys = {
        ["W"] = Instance.new("TextLabel");
        ["A"] = Instance.new("TextLabel");
        ["S"] = Instance.new("TextLabel");
        ["D"] = Instance.new("TextLabel");
        ["Space"] = Instance.new("TextLabel");
    }

    local W = Keys.W
    local A = Keys.A
    local S = Keys.S
    local D = Keys.D
    local Space = Keys.Space

    MainUI.Name = "MainUI"
    MainUI.Parent = game.CoreGui
    MainUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Holder.Name = "Holder"
    Holder.Parent = MainUI
    Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Holder.BackgroundTransparency = 1
    Holder.Size = UDim2.new(0, 195, 0, 187)

    W.Name = "W"
    W.Parent = Holder
    W.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    W.BackgroundTransparency = .4
    W.Position = UDim2.new(0.296000004, 0, 0.45750012, 0)
    W.Size = UDim2.new(0, 50, 0, 50)
    W.Font = font or Enum.Font.GothamSemibold
    W.Text = "W"
    W.TextColor3 = Color3.fromRGB(245, 245, 245)
    W.TextSize = 15

    A.Name = "A"
    A.Parent = Holder
    A.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    A.BackgroundTransparency = .4
    A.Position = UDim2.new(0.0358974375, 0, 0.730000006, 0)
    A.Size = UDim2.new(0, 50, 0, 50)
    A.Font = font or Enum.Font.GothamSemibold
    A.Text = "A"
    A.TextColor3 = Color3.fromRGB(245, 245, 245)
    A.TextSize = 15

    S.Name = "S"
    S.Parent = Holder
    S.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    S.BackgroundTransparency = .4
    S.Position = UDim2.new(0.297000004, 0, 0.730000006, 0)
    S.Size = UDim2.new(0, 50, 0, 50)
    S.Font = font or Enum.Font.GothamSemibold
    S.Text = "S"
    S.TextColor3 = Color3.fromRGB(245, 245, 245)
    S.TextSize = 15

    D.Name = "D"
    D.Parent = Holder
    D.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    D.BackgroundTransparency = .4
    D.Position = UDim2.new(0.558000028, 0, 0.730000006, 0)
    D.Size = UDim2.new(0, 50, 0, 50)
    D.Font = font or Enum.Font.GothamSemibold
    D.Text = "D"
    D.TextColor3 = Color3.fromRGB(245, 245, 245)
    D.TextSize = 15

    Space.Name = "Space"
    Space.Parent = Holder
    Space.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Space.BackgroundTransparency = .4
    Space.Position = UDim2.new(0.0350000039, 0, 1.24, 0)
    Space.Size = UDim2.new(0, 152, 0, 21)
    Space.Font = font or Enum.Font.GothamSemibold
    Space.Text = "_____"
    Space.TextColor3 = Color3.fromRGB(245, 245, 245)
    Space.TextSize = 15

    LeftUI.Name = "LeftUI"
    LeftUI.Parent = Holder
    LeftUI.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    LeftUI.BackgroundTransparency = .4
    LeftUI.Position = UDim2.new(0.0350000039, 0, 1.00999999, 0)
    LeftUI.Size = UDim2.new(0, 75, 0, 41)
    LeftUI.Font = font or Enum.Font.GothamSemibold
    LeftUI.RichText = true
    LeftUI.Text = "<b>LMB</b>\n<i>0 CPS</i>"
    LeftUI.TextColor3 = Color3.fromRGB(245, 245, 245)
    LeftUI.TextSize = 14

    RightUI.Name = "RightUI"
    RightUI.Parent = Holder
    RightUI.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    RightUI.BackgroundTransparency = .4
    RightUI.Position = UDim2.new(0.42899999, 0, 1.00999999, 0)
    RightUI.Size = UDim2.new(0, 75, 0, 41)
    RightUI.Font = font or Enum.Font.GothamSemibold
    RightUI.RichText = true
    RightUI.Text = "<b>RMB</b>\n<i>0 CPS</i>"
    RightUI.TextColor3 = Color3.fromRGB(245, 245, 245)
    RightUI.TextSize = 14

    --// Adding Smooth Corners

    UICornerW.CornerRadius = UDim.new(0, 4)
    UICornerW.Parent = W
    UICornerA.CornerRadius = UDim.new(0, 4)
    UICornerA.Parent = A
    UICornerS.CornerRadius = UDim.new(0, 4)
    UICornerS.Parent = S
    UICornerD.CornerRadius = UDim.new(0, 4)
    UICornerD.Parent = D
    UICornerL.CornerRadius = UDim.new(0, 4)
    UICornerL.Parent = LeftUI
    UICornerR.CornerRadius = UDim.new(0, 4)
    UICornerR.Parent = RightUI
    UICornerSpace.CornerRadius = UDim.new(0, 4)
    UICornerSpace.Parent = Space

    --// Smooth Dragging Animation
    function dragify(Frame)
        local dragToggle = nil
        local dragSpeed = 0.50
        local dragInput = nil
        local dragStart = nil
        local dragPos = nil
        function updateInput(input)
            local Delta = input.Position - dragStart
            local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
            game.TweenService:Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
        end
        Frame.InputBegan:Connect(function(input)
            if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and game.UserInputService:GetFocusedTextBox() == nil then
                dragToggle = true
                dragStart = input.Position
                startPos = Frame.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragToggle = false
                    end
                end)
            end
        end)
        Frame.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)
        game.UserInputService.InputChanged:Connect(function(input)
            if input == dragInput and dragToggle then
                updateInput(input)
            end
        end)
    end
    for i,v in pairs(game.CoreGui:GetChildren()) do
        if v.Name == "MainUI" and v:FindFirstChild("Holder") then
            dragify(v.Holder)
        end
    end

    --// Easier way of doing Highlighting for the WASD Keys
    for i, v in pairs(Keys) do
        game.UserInputService.InputEnded:connect(function(Key)
            if Key.KeyCode == Enum.KeyCode[i] then
                v.BackgroundTransparency = 0.4
            end
        end)
        game.UserInputService.InputBegan:connect(function(Key)
            if Key.KeyCode == Enum.KeyCode[i] then
                v.BackgroundTransparency = 0.2
            end
        end)
    end


    --// Left CPS Counter
    game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
        LCPS = LCPS + 1
        LeftUI.Text = "<b>LMB</b>\n<i>".. LCPS.. " CPS</i>"
        LeftUI.BackgroundTransparency = .2
        wait(1)
        LCPS = LCPS - 1
        LeftUI.Text = "<b>LMB</b>\n<i>".. LCPS.. " CPS</i>"
    end)

    --// Right CPS Counter
    game.Players.LocalPlayer:GetMouse().Button2Down:Connect(function()
        RCPS = RCPS + 1
        RightUI.Text = "<b>RMB</b>\n<i>".. RCPS.. " CPS</i>"
        RightUI.BackgroundTransparency = .2
        wait(1)
        RCPS = RCPS - 1
        RightUI.Text = "<b>RMB</b>\n<i>".. RCPS.. " CPS</i>"
    end)

    --// Simple Fix for LMB and RMB Highlighting
    game.Players.LocalPlayer:GetMouse().Button1Up:Connect(function()
        LeftUI.BackgroundTransparency = .4
    end)

    game.Players.LocalPlayer:GetMouse().Button2Up:Connect(function()
        RightUI.BackgroundTransparency = .4
    end)

    if syn then syn.protect_gui(MainUI) end
end

return keystrokes
