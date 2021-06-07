local label = {}

label.Create = function(data)
    if typeof(data) ~= 'table' then
        data = {}
    end
    local primary = (typeof(data.PrimaryColor) == 'userdata') and data.PrimaryColor or Color3.fromRGB(45, 45, 45)
    local secondary = (typeof(data.SecondaryColor) == 'userdata') and data.SecondaryColor or Color3.fromRGB(255, 0, 0)
    local texts = (typeof(data.Texts) == 'table') and data.Texts or {{Text = "sup", Delay = 2}}
    local GUI = Instance.new("ScreenGui", game.CoreGui)
    wait(0.9)
    local Frame1 = Instance.new("Frame", GUI)
    Frame1.Name = "MainFrame"
    Frame1.BackgroundColor3 = primary
    Frame1.BorderSizePixel = 0
    Frame1.Position = UDim2.new(0.5, -175, 0, 50)
    Frame1.Size = UDim2.new(0, 0, 0, 80)
    local Label = Instance.new("TextLabel", Frame1)
    Label.Name = "TextLabel"
    Label.BackgroundTransparency = 1
    Label.Position = UDim2.new(0, 0, 0.5, -15)
    Label.Size = UDim2.new(1, 0, 0, 30)
    Label.Font = Enum.Font.SourceSansLight
    Label.Text = ""
    Label.TextColor3 = Color3.fromRGB(236, 240, 241)
    Label.TextScaled = true
    local Frame2 = Instance.new("Frame", Frame1)
    Frame2.Name = "Bar"
    Frame2.BorderSizePixel = 0
    Frame2.Position = UDim2.new(0, 0, 1, 0)
    Frame2.Size = UDim2.new(1, 0, 0, 0)
    Frame2.BackgroundColor3 = secondary
    Frame1:TweenSize(UDim2.new(0, 350, 0, 80), "Out", "Sine", 0.5)
    wait(1)
    Frame2:TweenSizeAndPosition(UDim2.new(1, 0, 0, 5), UDim2.new(0, 0, 1, -5), "Out", "Sine", 0.1)
    for _,text in next, texts do
        for i = 1, string.len(text.Text) do
            Label.Text = string.sub(text.Text, 1, i)
            wait()
        end
        wait(text.Delay)
        for i = 1, string.len(text.Text) do
            Label.Text = Label.Text:sub(1, -2)
            wait()
        end
    end
    for i=0,1,0.09 do
        Frame1.Transparency = i
        Frame2.Transparency = i
        wait()
    end
    GUI:Destroy()
end

return label