--Settings--
local ESP = {
    Enabled = false,
    Boxes = false,
    BoxShift = CFrame.new(0,0,0),
	BoxSize = Vector3.new(4,6,0),
    Color = Color3.fromRGB(255, 255, 255),
    FaceCamera = false,
    Names = true,
    TeamColor = true,
    Thickness = 1,
    Font = 3,
    AttachShift = 1,
    TeamMates = true,
    Players = true,
    Health = true,
    PrimaryPart = "HumanoidRootPart",
    
    CharacterList = {},
    Objects = setmetatable({}, {__mode="kv"}),
    Overrides = {}
}

--Declarations--
local cam = workspace.CurrentCamera
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local mouse = plr:GetMouse()

local V3new = Vector3.new
local WorldToViewportPoint = cam.WorldToViewportPoint
local GBB = workspace.GetBoundingBox

--Functions--
local function round(num, bracket) 
		if typeof(num) == "Vector2" then
			return Vector2.new(round(num.X), round(num.Y))
		elseif typeof(num) == "Vector3" then
			return Vector3.new(round(num.X), round(num.Y), round(num.Z))
		elseif typeof(num) == "Color3" then
			return round(num.r * 255), round(num.g * 255), round(num.b * 255)
		else
			return num - num % (bracket or 1);
		end
	end


local function Draw(obj, props)
	local new = Drawing.new(obj)
	
	props = props or {}
	for i,v in pairs(props) do
		new[i] = v
	end
	return new
end

function ESP:GetTeam(p)
	local ov = self.Overrides.GetTeam
	if ov then
		return ov(p)
	end
	
	return p and p.Team
end

function ESP:IsTeamMate(p)
    local ov = self.Overrides.IsTeamMate
	if ov then
		return ov(p)
    end
    
    return self:GetTeam(p) == self:GetTeam(plr)
end

function ESP:GetColor(obj)
	local ov = self.Overrides.GetColor
	if ov then
		return ov(obj)
    end
    local p = self:GetPlrFromChar(obj)
	return p and self.TeamColor and p.TeamColor.Color or self.Color
end

function ESP:GetPlrFromChar(char)
	local ov = self.Overrides.GetPlrFromChar
	if ov then
		return ov(char)
	end
	
	return plrs:GetPlayerFromCharacter(char)
end

function ESP:Toggle(bool)
    self.Enabled = bool
    if not bool then
        for i,v in pairs(self.Objects) do
            for i,part in pairs(v.PrimaryPart.Parent:GetChildren()) do
                if part:IsA("BasePart") then
                    local a = part:FindFirstChild("BoxHandleAdornment")
                    if a then a:Destroy() end
                end
            end
            if v.Type == "Box" then --fov circle etc
                if v.Temporary then
                    v:Remove()
                else
                    for i,v in pairs(v.Components) do
                        v.Visible = false
                    end
                end
            end
        end
    end
end

function ESP:GetBox(obj)
    return self.Objects[obj]
end

function ESP:AddObjectListener(parent, options)
    local function NewListener(c)
        if type(options.Type) == "string" and c:IsA(options.Type) or options.Type == nil then
            if type(options.Name) == "string" and c.Name == options.Name or options.Name == nil then
                if not options.Validator or options.Validator(c) then
                    local box = ESP:Add(c, {
                        PrimaryPart = type(options.PrimaryPart) == "string" and c:WaitForChild(options.PrimaryPart) or type(options.PrimaryPart) == "function" and options.PrimaryPart(c),
                        Color = type(options.Color) == "function" and options.Color(c) or options.Color,
                        ColorDynamic = options.ColorDynamic,
                        Name = type(options.CustomName) == "function" and options.CustomName(c) or options.CustomName,
                        IsEnabled = options.IsEnabled,
                        RenderInNil = options.RenderInNil
                    })
                    --TODO: add a better way of passing options
                    if options.OnAdded then
                        coroutine.wrap(options.OnAdded)(box)
                    end
                end
            end
        end
    end

    if options.Recursive then
        parent.DescendantAdded:Connect(NewListener)
        for i,v in pairs(parent:GetDescendants()) do
            coroutine.wrap(NewListener)(v)
        end
    else
        parent.ChildAdded:Connect(NewListener)
        for i,v in pairs(parent:GetChildren()) do
            coroutine.wrap(NewListener)(v)
        end
    end
end

local boxBase = {}
boxBase.__index = boxBase

function boxBase:Remove()
    ESP.Objects[self.Object] = nil
    for i,v in pairs(self.Components) do
		v.Visible = false
		v:Remove()
		self.Components[i] = nil
    end
end

function boxBase:Update()
    if not self.PrimaryPart then
        --warn("not supposed to print", self.Object)
        return self:Remove()
    end

    local color
    if ESP.Highlighted == self.Object then
       color = ESP.HighlightColor
    else
        color = self.Color or self.ColorDynamic and self:ColorDynamic() or ESP:GetColor(self.Object) or ESP.Color
    end

    local allow = true
    if ESP.Overrides.UpdateAllow and not ESP.Overrides.UpdateAllow(self) then
        allow = false
    end
    if self.Player and not ESP.TeamMates and ESP:IsTeamMate(self.Player) then
        allow = false
    end
    if self.Player and not ESP.Players then
        allow = false
    end
    if self.IsEnabled and (type(self.IsEnabled) == "string" and not ESP[self.IsEnabled] or type(self.IsEnabled) == "function" and not self:IsEnabled()) then
        allow = false
    end
    if not workspace:IsAncestorOf(self.PrimaryPart) and not self.RenderInNil then
        allow = false
    end

    if not allow then
        for i,v in pairs(self.Components) do
            v.Visible = false
        end
        return
    end

    if ESP.Highlighted == self.Object then
        color = ESP.HighlightColor
    end

    --calculations--
    local cf = self.PrimaryPart.CFrame
    if ESP.FaceCamera then
        cf = CFrame.new(cf.p, cam.CFrame.p)
    end
    local size = self.Size
    local locs = {
        TopLeft = cf * ESP.BoxShift * CFrame.new(size.X/2,size.Y/2,0),
        TopRight = cf * ESP.BoxShift * CFrame.new(-size.X/2,size.Y/2,0),
        BottomLeft = cf * ESP.BoxShift * CFrame.new(size.X/2,-size.Y/2,0),
        BottomRight = cf * ESP.BoxShift * CFrame.new(-size.X/2,-size.Y/2,0),
        TagPos = cf * ESP.BoxShift * CFrame.new(0,size.Y/2,0),
        Torso = cf * ESP.BoxShift
    }

    if ESP.Boxes then
        local TopLeft, Vis1 = WorldToViewportPoint(cam, locs.TopLeft.p)
        local TopRight, Vis2 = WorldToViewportPoint(cam, locs.TopRight.p)
        local BottomLeft, Vis3 = WorldToViewportPoint(cam, locs.BottomLeft.p)
        local BottomRight, Vis4 = WorldToViewportPoint(cam, locs.BottomRight.p)

        if self.Components.Quad and self.Components.QuadOutline then
            if Vis1 or Vis2 or Vis3 or Vis4 then
                self.Components.Quad.Visible = true
                self.Components.Quad.PointA = Vector2.new(TopRight.X, TopRight.Y)
                self.Components.Quad.PointB = Vector2.new(TopLeft.X, TopLeft.Y)
                self.Components.Quad.PointC = Vector2.new(BottomLeft.X, BottomLeft.Y)
                self.Components.Quad.PointD = Vector2.new(BottomRight.X, BottomRight.Y)
                self.Components.Quad.Color = color
                
                self.Components.QuadOutline.Visible = true
                self.Components.QuadOutline.PointA = Vector2.new(TopRight.X, TopRight.Y)
                self.Components.QuadOutline.PointB = Vector2.new(TopLeft.X, TopLeft.Y)
                self.Components.QuadOutline.PointC = Vector2.new(BottomLeft.X, BottomLeft.Y)
                self.Components.QuadOutline.PointD = Vector2.new(BottomRight.X, BottomRight.Y)
                self.Components.QuadOutline.Color = Color3.new(0,0,0)
            else
                self.Components.Quad.Visible = false
                self.Components.QuadOutline.Visible = false
            end
        end
    else
        self.Components.Quad.Visible = false
    end
    
    
    local Pos, Size = GBB(self.Object)
    local ScreenPosition, OnScreen = WorldToViewportPoint(cam, self.PrimaryPart.Position)
        
    local Height = (cam.CFrame - cam.CFrame.p) * Vector3.new(0, (math.clamp(Size.Y, 1, 10) + 0.5) / 2, 0)
	Height = math.abs(WorldToViewportPoint(cam, Pos.Position + Height).Y - WorldToViewportPoint(cam, Pos.Position - Height).Y)
	Size = round(Vector2.new(Height / 2, Height))
	local Position = round(Vector2.new(ScreenPosition.X, ScreenPosition.Y) - (Size / 2))

	
    if ESP.Names then
        local TagPos, Vis5 = WorldToViewportPoint(cam, Vector3.new(locs.TagPos.p.x,locs.TagPos.p.y + 2,locs.TagPos.p.z))
        
        if self.PrimaryPart.Parent:FindFirstChildOfClass("Humanoid") then
            self.PrimaryPart.Parent:FindFirstChildOfClass("Humanoid").DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
        end
        
        if Vis5 then
            self.Components.Name.Visible = true
            self.Components.Name.Position = Position + Vector2.new(Size.X / 2, -self.Components.Name.TextBounds.Y - 1)
            self.Components.Name.Text = self.Name
            self.Components.Name.Font = ESP.Font
            self.Components.Name.Color = color
            
            self.Components.Distance.Visible = true
            self.Components.Distance.Font = ESP.Font
            self.Components.Distance.Position = Position + Vector2.new(Size.X / 2, Size.Y + 3)--Vector2.new(TagPos.X, TagPos.Y + 14)
            self.Components.Distance.Text = "[".. math.floor((cam.CFrame.p - cf.p).magnitude).. "m]"
            self.Components.Distance.Color = Color3.fromRGB(255,255,255)
                
            if ESP.Health and self.PrimaryPart.Parent:FindFirstChildOfClass("Humanoid") then
                local Health = self.PrimaryPart.Parent:FindFirstChildOfClass("Humanoid").Health
                local MaxHealth = self.PrimaryPart.Parent:FindFirstChildOfClass("Humanoid").MaxHealth
                
                self.Components.Health.Visible = true
                self.Components.Health.Color = Color3.fromRGB(255 - 255 / (MaxHealth / Health), 255 / (MaxHealth / Health), 0)
                self.Components.Health.Font = ESP.Font
                self.Components.Health.Position = Position + Vector2.new(Size.X / 2, -self.Components.Health.TextBounds.Y - 10)--Vector2.new(TagPos.X, TagPos.Y + 14)
                
                if self.PrimaryPart.Parent:FindFirstChildOfClass("Humanoid") then 
                    self.Components.Health.Text = "[".. tostring(math.round(Health)).. "%]"
                else
                    self.Components.Health.Visible = false   
                end
            else
                self.Components.Health.Visible = false
            end
        else
            self.Components.Name.Visible = false
            self.Components.Distance.Visible = false
            self.Components.Health.Visible = false
        end
    else
        if self.PrimaryPart.Parent:FindFirstChildOfClass("Humanoid") then
            self.PrimaryPart.Parent:FindFirstChildOfClass("Humanoid").DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Viewer
        end
    
        self.Components.Name.Visible = false
        self.Components.Distance.Visible = false
        self.Components.Health.Visible = false
    end
    
    if ESP.Tracers then
        local TorsoPos, Vis6 = WorldToViewportPoint(cam, locs.Torso.p)

        if Vis6 then
            self.Components.Tracer.Visible = true
            self.Components.Tracer.From = Vector2.new(TorsoPos.X, TorsoPos.Y)
            self.Components.Tracer.To = Vector2.new(cam.ViewportSize.X/2,cam.ViewportSize.Y/ESP.AttachShift)
            self.Components.Tracer.Color = color
        else
            self.Components.Tracer.Visible = false
        end
    else
        self.Components.Tracer.Visible = false
    end
end

function ESP:Add(obj, options)
    if not obj.Parent and not options.RenderInNil then
        return warn(obj, "has no parent")
    end

    local box = setmetatable({
        Name = options.Name or obj.Name,
        Type = "Box",
        Color = options.Color --[[or self:GetColor(obj)]],
        Size = options.Size or self.BoxSize,
        Object = obj,
        Player = options.Player or plrs:GetPlayerFromCharacter(obj),
        PrimaryPart = options.PrimaryPart or obj.ClassName == "Model" and obj:FindFirstChild(ESP.PrimaryPart) or (obj.PrimaryPart or obj:FindFirstChild("HumanoidRootPart") or obj:FindFirstChildWhichIsA("BasePart")) or obj:IsA("BasePart") and obj,
        Components = {},
        IsEnabled = options.IsEnabled,
        Temporary = options.Temporary,
        ColorDynamic = options.ColorDynamic,
        RenderInNil = options.RenderInNil
    }, boxBase)

    if self:GetBox(obj) then
        self:GetBox(obj):Remove()
    end
    

    box.Components["QuadOutline"] = Draw("Quad", {
        Thickness = self.Thickness + 3,
        Color = color,
        Transparency = 1,
        Filled = false,
        Visible = self.Enabled and self.Boxes
    })

    box.Components["Quad"] = Draw("Quad", {
        Thickness = self.Thickness,
        Color = color,
        Transparency = 1,
        Filled = false,
        Visible = self.Enabled and self.Boxes
    })


    box.Components["Name"] = Draw("Text", {
		Text = box.Name,
		Color = box.Color,
		Center = true,
		Outline = true,
        Size = 15,
        Visible = self.Enabled and self.Names
	})
	
	box.Components["Distance"] = Draw("Text", {
		Color = box.Color,
		Center = true,
		Outline = true,
        Size = 15,
        Visible = self.Enabled and self.Names
	})
	
	box.Components["Health"] = Draw("Text", {
		Color = box.Color,
		Center = true,
		Outline = true,
        Size = 15,
        Visible = self.Enabled and self.Names
	})
	
	box.Components["Tracer"] = Draw("Line", {
		Thickness = ESP.Thickness,
		Color = box.Color,
        Transparency = 1,
        Visible = self.Enabled and self.Tracers
    })

    self.Objects[obj] = box
    
    obj.AncestryChanged:Connect(function(_, parent)
        if parent == nil and ESP.AutoRemove ~= false then
            box:Remove()
        end
    end)
    obj:GetPropertyChangedSignal("Parent"):Connect(function()
        if obj.Parent == nil and ESP.AutoRemove ~= false then
            box:Remove()
        end
    end)

    local hum = obj:FindFirstChildOfClass("Humanoid")
	if hum then
        hum.Died:Connect(function()
            if ESP.AutoRemove ~= false then
                box:Remove()
            end
	    end)
    end

    return box
end

local function CharAdded(char)
    local p = plrs:GetPlayerFromCharacter(char)
    game:GetService("RunService").Stepped:Wait()
    
    if not char:FindFirstChild("HumanoidRootPart") then
        local ev
        ev = char.ChildAdded:Connect(function(c)
            if c.Name == "HumanoidRootPart" then
                table.insert(ESP.CharacterList, char)
                ev:Disconnect()
                ESP:Add(char, {
                    Name = p.Name,
                    Player = p,
                    PrimaryPart = c
                })
            end
        end)
    else
        table.insert(ESP.CharacterList, char)
        ESP:Add(char, {
            Name = p.Name,
            Player = p,
            PrimaryPart = char.HumanoidRootPart
        })
    end
end
local function PlayerAdded(p)
    p.CharacterAdded:Connect(CharAdded)
    if p.Character then
        coroutine.wrap(CharAdded)(p.Character)
    end
end
plrs.PlayerAdded:Connect(PlayerAdded)
for i,v in pairs(plrs:GetPlayers()) do
    if v ~= plr then
        PlayerAdded(v)
    end
end

game:GetService("RunService").RenderStepped:Connect(function()
    cam = workspace.CurrentCamera
    for i,v in (ESP.Enabled and pairs or ipairs)(ESP.Objects) do
        if v.Update then
            local s,e = pcall(v.Update, v)
            if not s then warn("[EU]", e, v.Object:GetFullName()) end
        end
    end
end)


return ESP
