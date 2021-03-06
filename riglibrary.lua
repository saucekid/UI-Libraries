function sandbox(var, func)
	local env = getfenv(func)
	local newenv = setmetatable({}, {
		__index = function(self, k)
			if k == "script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func, newenv)
	return func
end

local rig = {}
function rig.create(rigtype, parent)
	local fakechar
	rigt = rigtype or "R15"
	parentt = parent or workspace

	if parentt:FindFirstChild("FakeCharacter") then
		parentt.FakeCharacter:Destroy()
	end
	if rigt == "R15" then
		cors = {}
		mas = Instance.new("Model", game:GetService("Lighting"))
		Model0 = Instance.new("Model")
		Part1 = Instance.new("Part")
		Vector3Value2 = Instance.new("Vector3Value")
		MeshPart3 = Instance.new("MeshPart")
		Vector3Value4 = Instance.new("Vector3Value")
		Motor6D5 = Instance.new("Motor6D")
		MeshPart6 = Instance.new("MeshPart")
		Vector3Value7 = Instance.new("Vector3Value")
		Motor6D8 = Instance.new("Motor6D")
		MeshPart9 = Instance.new("MeshPart")
		Vector3Value10 = Instance.new("Vector3Value")
		Motor6D11 = Instance.new("Motor6D")
		MeshPart12 = Instance.new("MeshPart")
		Vector3Value13 = Instance.new("Vector3Value")
		Motor6D14 = Instance.new("Motor6D")
		MeshPart15 = Instance.new("MeshPart")
		Vector3Value16 = Instance.new("Vector3Value")
		Motor6D17 = Instance.new("Motor6D")
		MeshPart18 = Instance.new("MeshPart")
		Vector3Value19 = Instance.new("Vector3Value")
		Motor6D20 = Instance.new("Motor6D")
		MeshPart21 = Instance.new("MeshPart")
		Vector3Value22 = Instance.new("Vector3Value")
		Motor6D23 = Instance.new("Motor6D")
		MeshPart24 = Instance.new("MeshPart")
		Vector3Value25 = Instance.new("Vector3Value")
		Motor6D26 = Instance.new("Motor6D")
		MeshPart27 = Instance.new("MeshPart")
		Vector3Value28 = Instance.new("Vector3Value")
		Motor6D29 = Instance.new("Motor6D")
		MeshPart30 = Instance.new("MeshPart")
		Vector3Value31 = Instance.new("Vector3Value")
		Motor6D32 = Instance.new("Motor6D")
		MeshPart33 = Instance.new("MeshPart")
		Vector3Value34 = Instance.new("Vector3Value")
		Motor6D35 = Instance.new("Motor6D")
		MeshPart36 = Instance.new("MeshPart")
		Vector3Value37 = Instance.new("Vector3Value")
		Motor6D38 = Instance.new("Motor6D")
		MeshPart39 = Instance.new("MeshPart")
		Vector3Value40 = Instance.new("Vector3Value")
		Motor6D41 = Instance.new("Motor6D")
		MeshPart42 = Instance.new("MeshPart")
		Vector3Value43 = Instance.new("Vector3Value")
		Motor6D44 = Instance.new("Motor6D")
		Humanoid45 = Instance.new("Humanoid")
		Part46 = Instance.new("Part")
		SpecialMesh47 = Instance.new("SpecialMesh")
		Decal48 = Instance.new("Decal")
		Motor6D49 = Instance.new("Motor6D")
		Vector3Value50 = Instance.new("Vector3Value")
		Motor6D51 = Instance.new("Motor6D")
		Motor6D52 = Instance.new("Motor6D")
		Motor6D53 = Instance.new("Motor6D")
		Motor6D54 = Instance.new("Motor6D")
		Motor6D55 = Instance.new("Motor6D")
		Motor6D56 = Instance.new("Motor6D")
		Motor6D57 = Instance.new("Motor6D")
		Motor6D58 = Instance.new("Motor6D")
		Motor6D59 = Instance.new("Motor6D")
		Script60 = Instance.new("Script")
		StringValue61 = Instance.new("StringValue")
		Animation62 = Instance.new("Animation")
		StringValue63 = Instance.new("StringValue")
		Animation64 = Instance.new("Animation")
		StringValue65 = Instance.new("StringValue")
		Animation66 = Instance.new("Animation")
		NumberValue67 = Instance.new("NumberValue")
		Animation68 = Instance.new("Animation")
		NumberValue69 = Instance.new("NumberValue")
		StringValue70 = Instance.new("StringValue")
		Animation71 = Instance.new("Animation")
		StringValue72 = Instance.new("StringValue")
		Animation73 = Instance.new("Animation")
		StringValue74 = Instance.new("StringValue")
		Animation75 = Instance.new("Animation")
		StringValue76 = Instance.new("StringValue")
		Animation77 = Instance.new("Animation")
		StringValue78 = Instance.new("StringValue")
		Animation79 = Instance.new("Animation")
		StringValue80 = Instance.new("StringValue")
		Animation81 = Instance.new("Animation")
		StringValue82 = Instance.new("StringValue")
		Animation83 = Instance.new("Animation")
		BodyColors84 = Instance.new("BodyColors")
		Model0.Name = "FakeCharacter"
		Model0.Parent = mas
		Model0.PrimaryPart = Part1
		Part1.Name = "HumanoidRootPart"
		Part1.Parent = Model0
		Part1.CFrame = CFrame.new(-8.80000305, 2.34999967, -40.9001312, 1, 6.83440315e-31, 0, 6.83440315e-31, 1, 0, 0, 0, 1)
		Part1.Position = Vector3.new(-8.80000305, 2.34999967, -40.9001312)
		Part1.Color = Color3.new(0.898039, 0.894118, 0.87451)
		Part1.Transparency = 1
		Part1.Velocity = Vector3.new(-1.40129846e-45, 0, 1.40129846e-45)
		Part1.Size = Vector3.new(2, 2, 1)
		Part1.BrickColor = BrickColor.new("Light stone grey")
		Part1.brickColor = BrickColor.new("Light stone grey")
		Vector3Value2.Name = "OriginalSize"
		Vector3Value2.Parent = Part1
		Vector3Value2.Value = Vector3.new(2, 2, 1)
		MeshPart3.Name = "LeftHand"
		MeshPart3.Parent = Model0
		MeshPart3.CFrame = CFrame.new(-10.3000021, 2.14999962, -40.9001312, 1, 6.83440315e-31, 0, 6.83440315e-31, 1, 0, 0, 0, 1)
		MeshPart3.Position = Vector3.new(-10.3000021, 2.14999962, -40.9001312)
		MeshPart3.Color = Color3.new(0.960784, 0.803922, 0.188235)
		MeshPart3.Velocity = Vector3.new(-1.40129846e-45, 0, 1.40129846e-45)
		MeshPart3.Size = Vector3.new(0.999999762, 0.299999982, 0.999999881)
		MeshPart3.BrickColor = BrickColor.new("Bright yellow")
		MeshPart3.CanCollide = false
		MeshPart3.brickColor = BrickColor.new("Bright yellow")
		Vector3Value4.Name = "OriginalSize"
		Vector3Value4.Parent = MeshPart3
		Vector3Value4.Value = Vector3.new(0.999999762, 0.299999982, 0.999999881)
		Motor6D5.Name = "LeftWrist"
		Motor6D5.Parent = MeshPart3
		Motor6D5.C0 = CFrame.new(0.000478506088, -0.549999952, 7.64462551e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D5.C1 = CFrame.new(0.000478863716, 0.149999991, 5.96046448e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D5.Part0 = MeshPart6
		Motor6D5.Part1 = MeshPart3
		Motor6D5.part1 = MeshPart3
		MeshPart6.Name = "LeftLowerArm"
		MeshPart6.Parent = Model0
		MeshPart6.CFrame = CFrame.new(-10.3000021, 2.84999967, -40.9001312, 1, 6.83440315e-31, 0, 6.83440315e-31, 1, 0, 0, 0, 1)
		MeshPart6.Position = Vector3.new(-10.3000021, 2.84999967, -40.9001312)
		MeshPart6.Color = Color3.new(0.960784, 0.803922, 0.188235)
		MeshPart6.Velocity = Vector3.new(-1.40129846e-45, 0, 1.40129846e-45)
		MeshPart6.Size = Vector3.new(0.999999762, 1.20000029, 1)
		MeshPart6.BrickColor = BrickColor.new("Bright yellow")
		MeshPart6.CanCollide = false
		MeshPart6.brickColor = BrickColor.new("Bright yellow")
		Vector3Value7.Name = "OriginalSize"
		Vector3Value7.Parent = MeshPart6
		Vector3Value7.Value = Vector3.new(0.999999762, 1.20000029, 1)
		Motor6D8.Name = "LeftElbow"
		Motor6D8.Parent = MeshPart6
		Motor6D8.C0 = CFrame.new(0.000479102135, -0.200000167, 8.94069672e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D8.C1 = CFrame.new(0.000478506088, 0.25000003, 7.64462551e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D8.Part0 = MeshPart9
		Motor6D8.Part1 = MeshPart6
		Motor6D8.part1 = MeshPart6
		MeshPart9.Name = "LeftUpperArm"
		MeshPart9.Parent = Model0
		MeshPart9.CFrame = CFrame.new(-10.3000031, 3.29999995, -40.9001312, 1, 6.83440315e-31, 0, 6.83440315e-31, 1, 0, 0, 0, 1)
		MeshPart9.Position = Vector3.new(-10.3000031, 3.29999995, -40.9001312)
		MeshPart9.Color = Color3.new(0.960784, 0.803922, 0.188235)
		MeshPart9.Velocity = Vector3.new(-1.40129846e-45, 0, 1.40129846e-45)
		MeshPart9.Size = Vector3.new(0.999999762, 1.40000033, 0.99999994)
		MeshPart9.BrickColor = BrickColor.new("Bright yellow")
		MeshPart9.CanCollide = false
		MeshPart9.brickColor = BrickColor.new("Bright yellow")
		Vector3Value10.Name = "OriginalSize"
		Vector3Value10.Parent = MeshPart9
		Vector3Value10.Value = Vector3.new(0.999999762, 1.40000033, 0.99999994)
		Motor6D11.Name = "LeftShoulder"
		Motor6D11.Parent = MeshPart9
		Motor6D11.C0 = CFrame.new(-1.24989128, 0.549999952, 1.1920929e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D11.C1 = CFrame.new(0.250109196, 0.449999809, 8.94069672e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D11.Part0 = MeshPart21
		Motor6D11.Part1 = MeshPart9
		Motor6D11.part1 = MeshPart9
		MeshPart12.Name = "RightHand"
		MeshPart12.Parent = Model0
		MeshPart12.CFrame = CFrame.new(-7.30000305, 2.14999962, -40.9001312, 1, 6.83440315e-31, 0, 6.83440315e-31, 1, 0, 0, 0,
			1)
		MeshPart12.Position = Vector3.new(-7.30000305, 2.14999962, -40.9001312)
		MeshPart12.Color = Color3.new(0.960784, 0.803922, 0.188235)
		MeshPart12.Velocity = Vector3.new(-1.40129846e-45, 0, 1.40129846e-45)
		MeshPart12.Size = Vector3.new(0.999999881, 0.299999982, 0.999999881)
		MeshPart12.BrickColor = BrickColor.new("Bright yellow")
		MeshPart12.CanCollide = false
		MeshPart12.brickColor = BrickColor.new("Bright yellow")
		Vector3Value13.Name = "OriginalSize"
		Vector3Value13.Parent = MeshPart12
		Vector3Value13.Value = Vector3.new(0.999999881, 0.299999982, 0.999999881)
		Motor6D14.Name = "RightWrist"
		Motor6D14.Parent = MeshPart12
		Motor6D14.C0 = CFrame.new(1.1920929e-07, -0.549999952, -6.86244753e-18, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D14.C1 = CFrame.new(3.57627869e-07, 0.149999991, 5.96046448e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D14.Part0 = MeshPart15
		Motor6D14.Part1 = MeshPart12
		Motor6D14.part1 = MeshPart12
		MeshPart15.Name = "RightLowerArm"
		MeshPart15.Parent = Model0
		MeshPart15.CFrame = CFrame.new(-7.30000305, 2.84999967, -40.9001312, 1, 6.83440315e-31, 0, 6.83440315e-31, 1, 0, 0, 0,
			1)
		MeshPart15.Position = Vector3.new(-7.30000305, 2.84999967, -40.9001312)
		MeshPart15.Color = Color3.new(0.960784, 0.803922, 0.188235)
		MeshPart15.Velocity = Vector3.new(-1.40129846e-45, 0, 1.40129846e-45)
		MeshPart15.Size = Vector3.new(0.999999762, 1.20000029, 1)
		MeshPart15.BrickColor = BrickColor.new("Bright yellow")
		MeshPart15.CanCollide = false
		MeshPart15.brickColor = BrickColor.new("Bright yellow")
		Vector3Value16.Name = "OriginalSize"
		Vector3Value16.Parent = MeshPart15
		Vector3Value16.Value = Vector3.new(0.999999762, 1.20000029, 1)
		Motor6D17.Name = "RightElbow"
		Motor6D17.Parent = MeshPart15
		Motor6D17.C0 = CFrame.new(-5.96046448e-07, -0.200000167, 8.94069672e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D17.C1 = CFrame.new(1.1920929e-07, 0.25000003, 7.64462551e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D17.Part0 = MeshPart18
		Motor6D17.Part1 = MeshPart15
		Motor6D17.part1 = MeshPart15
		MeshPart18.Name = "RightUpperArm"
		MeshPart18.Parent = Model0
		MeshPart18.CFrame = CFrame.new(-7.3000021, 3.29999995, -40.9001312, 1, 6.83440315e-31, 0, 6.83440315e-31, 1, 0, 0, 0, 1)
		MeshPart18.Position = Vector3.new(-7.3000021, 3.29999995, -40.9001312)
		MeshPart18.Color = Color3.new(0.960784, 0.803922, 0.188235)
		MeshPart18.Velocity = Vector3.new(-1.40129846e-45, 0, 1.40129846e-45)
		MeshPart18.Size = Vector3.new(0.999999642, 1.40000033, 0.99999994)
		MeshPart18.BrickColor = BrickColor.new("Bright yellow")
		MeshPart18.CanCollide = false
		MeshPart18.brickColor = BrickColor.new("Bright yellow")
		Vector3Value19.Name = "OriginalSize"
		Vector3Value19.Parent = MeshPart18
		Vector3Value19.Value = Vector3.new(0.999999642, 1.40000033, 0.99999994)
		Motor6D20.Name = "RightShoulder"
		Motor6D20.Parent = MeshPart18
		Motor6D20.C0 = CFrame.new(1.24998045, 0.549999952, 1.1920929e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D20.C1 = CFrame.new(-0.250020266, 0.449999809, 8.94069672e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D20.Part0 = MeshPart21
		Motor6D20.Part1 = MeshPart18
		Motor6D20.part1 = MeshPart18
		MeshPart21.Name = "UpperTorso"
		MeshPart21.Parent = Model0
		MeshPart21.CFrame = CFrame.new(-8.80000305, 3.19999981, -40.9001312, 1, 6.83440315e-31, 0, 6.83440315e-31, 1, 0, 0, 0,
			1)
		MeshPart21.Position = Vector3.new(-8.80000305, 3.19999981, -40.9001312)
		MeshPart21.Color = Color3.new(0.0509804, 0.411765, 0.67451)
		MeshPart21.Velocity = Vector3.new(-1.40129846e-45, 0, 1.40129846e-45)
		MeshPart21.Size = Vector3.new(2, 1.60000014, 1.00000036)
		MeshPart21.BrickColor = BrickColor.new("Bright blue")
		MeshPart21.brickColor = BrickColor.new("Bright blue")
		Vector3Value22.Name = "OriginalSize"
		Vector3Value22.Parent = MeshPart21
		Vector3Value22.Value = Vector3.new(2, 1.60000014, 1.00000036)
		Motor6D23.Name = "Waist"
		Motor6D23.Parent = MeshPart21
		Motor6D23.C0 = CFrame.new(-1.1920929e-07, 0.550000072, 7.64462551e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D23.C1 = CFrame.new(-5.96046448e-08, -0.450000018, 1.1920929e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D23.Part0 = MeshPart42
		Motor6D23.Part1 = MeshPart21
		Motor6D23.part1 = MeshPart21
		MeshPart24.Name = "LeftFoot"
		MeshPart24.Parent = Model0
		MeshPart24.CFrame = CFrame.new(-9.30000305, 0.149999857, -40.9001312, 1, 6.83440315e-31, 0, 6.83440315e-31, 1, 0, 0, 0
			, 1)
		MeshPart24.Position = Vector3.new(-9.30000305, 0.149999857, -40.9001312)
		MeshPart24.Color = Color3.new(0.643137, 0.741176, 0.278431)
		MeshPart24.Velocity = Vector3.new(-1.40129846e-45, 0, 1.40129846e-45)
		MeshPart24.Size = Vector3.new(1, 0.300000191, 1)
		MeshPart24.BrickColor = BrickColor.new("Br. yellowish green")
		MeshPart24.CanCollide = false
		MeshPart24.brickColor = BrickColor.new("Br. yellowish green")
		Vector3Value25.Name = "OriginalSize"
		Vector3Value25.Parent = MeshPart24
		Vector3Value25.Value = Vector3.new(1, 0.300000191, 1)
		Motor6D26.Name = "LeftAnkle"
		Motor6D26.Parent = MeshPart24
		Motor6D26.C0 = CFrame.new(-1.78813934e-07, -0.749997616, 6.29340548e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D26.C1 = CFrame.new(-2.38418579e-07, 0.0500025749, 8.08154482e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D26.Part0 = MeshPart27
		Motor6D26.Part1 = MeshPart24
		Motor6D26.part1 = MeshPart24
		MeshPart27.Name = "LeftLowerLeg"
		MeshPart27.Parent = Model0
		MeshPart27.CFrame = CFrame.new(-9.30000305, 0.950000048, -40.9001312, 1, 6.83440315e-31, 0, 6.83440315e-31, 1, 0, 0, 0
			, 1)
		MeshPart27.Position = Vector3.new(-9.30000305, 0.950000048, -40.9001312)
		MeshPart27.Color = Color3.new(0.643137, 0.741176, 0.278431)
		MeshPart27.Velocity = Vector3.new(-1.40129846e-45, 0, 1.40129846e-45)
		MeshPart27.Size = Vector3.new(0.99999994, 1.50000036, 1.00000012)
		MeshPart27.BrickColor = BrickColor.new("Br. yellowish green")
		MeshPart27.CanCollide = false
		MeshPart27.brickColor = BrickColor.new("Br. yellowish green")
		Vector3Value28.Name = "OriginalSize"
		Vector3Value28.Parent = MeshPart27
		Vector3Value28.Value = Vector3.new(0.99999994, 1.50000036, 1.00000012)
		Motor6D29.Name = "LeftKnee"
		Motor6D29.Parent = MeshPart27
		Motor6D29.C0 = CFrame.new(5.96046448e-08, -0.299999952, -1.63912773e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D29.C1 = CFrame.new(-0, 0.249999642, -1.78813934e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D29.Part0 = MeshPart30
		Motor6D29.Part1 = MeshPart27
		Motor6D29.part1 = MeshPart27
		MeshPart30.Name = "LeftUpperLeg"
		MeshPart30.Parent = Model0
		MeshPart30.CFrame = CFrame.new(-9.30000305, 1.49999964, -40.9001312, 1, 6.83440315e-31, 0, 6.83440315e-31, 1, 0, 0, 0,
			1)
		MeshPart30.Position = Vector3.new(-9.30000305, 1.49999964, -40.9001312)
		MeshPart30.Color = Color3.new(0.643137, 0.741176, 0.278431)
		MeshPart30.Velocity = Vector3.new(-1.40129846e-45, 0, 1.40129846e-45)
		MeshPart30.Size = Vector3.new(1.00000036, 1.49999976, 0.999999881)
		MeshPart30.BrickColor = BrickColor.new("Br. yellowish green")
		MeshPart30.CanCollide = false
		MeshPart30.brickColor = BrickColor.new("Br. yellowish green")
		Vector3Value31.Name = "OriginalSize"
		Vector3Value31.Parent = MeshPart30
		Vector3Value31.Value = Vector3.new(1.00000036, 1.49999976, 0.999999881)
		Motor6D32.Name = "LeftHip"
		Motor6D32.Parent = MeshPart30
		Motor6D32.C0 = CFrame.new(-0.500000119, -0.199999958, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D32.C1 = CFrame.new(5.96046448e-08, 0.5, -1.63912773e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D32.Part0 = MeshPart42
		Motor6D32.Part1 = MeshPart30
		Motor6D32.part1 = MeshPart30
		MeshPart33.Name = "RightFoot"
		MeshPart33.Parent = Model0
		MeshPart33.CFrame = CFrame.new(-8.30000305, 0.149999857, -40.9001312, 1, 6.83440315e-31, 0, 6.83440315e-31, 1, 0, 0, 0
			, 1)
		MeshPart33.Position = Vector3.new(-8.30000305, 0.149999857, -40.9001312)
		MeshPart33.Color = Color3.new(0.643137, 0.741176, 0.278431)
		MeshPart33.Velocity = Vector3.new(-1.40129846e-45, 0, 1.40129846e-45)
		MeshPart33.Size = Vector3.new(0.99999994, 0.300000191, 1)
		MeshPart33.BrickColor = BrickColor.new("Br. yellowish green")
		MeshPart33.CanCollide = false
		MeshPart33.brickColor = BrickColor.new("Br. yellowish green")
		Vector3Value34.Name = "OriginalSize"
		Vector3Value34.Parent = MeshPart33
		Vector3Value34.Value = Vector3.new(0.99999994, 0.300000191, 1)
		Motor6D35.Name = "RightAnkle"
		Motor6D35.Parent = MeshPart33
		Motor6D35.C0 = CFrame.new(-0, -0.750000477, 9.82746205e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D35.C1 = CFrame.new(-0, 0.0499997139, 9.84534345e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D35.Part0 = MeshPart36
		Motor6D35.Part1 = MeshPart33
		Motor6D35.part1 = MeshPart33
		MeshPart36.Name = "RightLowerLeg"
		MeshPart36.Parent = Model0
		MeshPart36.CFrame = CFrame.new(-8.30000305, 0.950000048, -40.9001312, 1, 6.83440315e-31, 0, 6.83440315e-31, 1, 0, 0, 0
			, 1)
		MeshPart36.Position = Vector3.new(-8.30000305, 0.950000048, -40.9001312)
		MeshPart36.Color = Color3.new(0.643137, 0.741176, 0.278431)
		MeshPart36.Velocity = Vector3.new(-1.40129846e-45, 0, 1.40129846e-45)
		MeshPart36.Size = Vector3.new(0.99999994, 1.50000036, 1.00000012)
		MeshPart36.BrickColor = BrickColor.new("Br. yellowish green")
		MeshPart36.CanCollide = false
		MeshPart36.brickColor = BrickColor.new("Br. yellowish green")
		Vector3Value37.Name = "OriginalSize"
		Vector3Value37.Parent = MeshPart36
		Vector3Value37.Value = Vector3.new(0.99999994, 1.50000036, 1.00000012)
		Motor6D38.Name = "RightKnee"
		Motor6D38.Parent = MeshPart36
		Motor6D38.C0 = CFrame.new(-0, -0.299999952, 4.36005103e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D38.C1 = CFrame.new(-0, 0.249999642, 4.35260044e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D38.Part0 = MeshPart39
		Motor6D38.Part1 = MeshPart36
		Motor6D38.part1 = MeshPart36
		MeshPart39.Name = "RightUpperLeg"
		MeshPart39.Parent = Model0
		MeshPart39.CFrame = CFrame.new(-8.30000305, 1.49999964, -40.9001312, 1, 6.83440315e-31, 0, 6.83440315e-31, 1, 0, 0, 0,
			1)
		MeshPart39.Position = Vector3.new(-8.30000305, 1.49999964, -40.9001312)
		MeshPart39.Color = Color3.new(0.643137, 0.741176, 0.278431)
		MeshPart39.Velocity = Vector3.new(-1.40129846e-45, 0, 1.40129846e-45)
		MeshPart39.Size = Vector3.new(1.00000048, 1.49999976, 0.999999881)
		MeshPart39.BrickColor = BrickColor.new("Br. yellowish green")
		MeshPart39.CanCollide = false
		MeshPart39.brickColor = BrickColor.new("Br. yellowish green")
		Vector3Value40.Name = "OriginalSize"
		Vector3Value40.Parent = MeshPart39
		Vector3Value40.Value = Vector3.new(1.00000048, 1.49999976, 0.999999881)
		Motor6D41.Name = "RightHip"
		Motor6D41.Parent = MeshPart39
		Motor6D41.C0 = CFrame.new(0.499999881, -0.199999958, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D41.C1 = CFrame.new(-0, 0.5, -1.04308128e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D41.Part0 = MeshPart42
		Motor6D41.Part1 = MeshPart39
		Motor6D41.part1 = MeshPart39
		MeshPart42.Name = "LowerTorso"
		MeshPart42.Parent = Model0
		MeshPart42.CFrame = CFrame.new(-8.80000305, 2.19999957, -40.9001312, 1, 6.83440315e-31, 0, 6.83440315e-31, 1, 0, 0, 0,
			1)
		MeshPart42.Position = Vector3.new(-8.80000305, 2.19999957, -40.9001312)
		MeshPart42.Color = Color3.new(0.0509804, 0.411765, 0.67451)
		MeshPart42.Velocity = Vector3.new(-1.40129846e-45, 0, 1.40129846e-45)
		MeshPart42.Size = Vector3.new(1.99999976, 0.399999976, 1.00000012)
		MeshPart42.BrickColor = BrickColor.new("Bright blue")
		MeshPart42.brickColor = BrickColor.new("Bright blue")
		Vector3Value43.Name = "OriginalSize"
		Vector3Value43.Parent = MeshPart42
		Vector3Value43.Value = Vector3.new(1.99999976, 0.399999976, 1.00000012)
		Motor6D44.Name = "Root"
		Motor6D44.Parent = MeshPart42
		Motor6D44.C1 = CFrame.new(-1.1920929e-07, 0.150000036, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D44.Part0 = Part1
		Motor6D44.Part1 = MeshPart42
		Motor6D44.part1 = MeshPart42
		Humanoid45.Parent = Model0
		Humanoid45.HipHeight = 1.3500000238419
		Humanoid45.LeftLeg = MeshPart30
		Humanoid45.RigType = Enum.HumanoidRigType.R15
		Humanoid45.RightLeg = MeshPart39
		Humanoid45.Torso = Part1
		Part46.Name = "Head"
		Part46.Parent = Model0
		Part46.CFrame = CFrame.new(-8.80000305, 4.5, -40.8998604, 1, 6.83440315e-31, 0, 6.83440315e-31, 1, 0, 0, 0, 1)
		Part46.Position = Vector3.new(-8.80000305, 4.5, -40.8998604)
		Part46.Color = Color3.new(0.960784, 0.803922, 0.188235)
		Part46.Velocity = Vector3.new(-1.40129846e-45, 0, 1.40129846e-45)
		Part46.Size = Vector3.new(2, 1, 1)
		Part46.BottomSurface = Enum.SurfaceType.Smooth
		Part46.BrickColor = BrickColor.new("Bright yellow")
		Part46.TopSurface = Enum.SurfaceType.Smooth
		Part46.brickColor = BrickColor.new("Bright yellow")
		SpecialMesh47.Parent = Part46
		SpecialMesh47.Scale = Vector3.new(1.25, 1.25, 1.25)
		Motor6D49.Name = "Neck"
		Motor6D49.Parent = Part46
		Motor6D49.C0 = CFrame.new(-5.96046448e-08, 0.799999952, 1.1920929e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D49.C1 = CFrame.new(-0, -0.500000119, -0.000272244215, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D49.Part0 = MeshPart21
		Motor6D49.Part1 = Part46
		Motor6D49.part1 = Part46
		Vector3Value50.Name = "OriginalSize"
		Vector3Value50.Parent = Part46
		Vector3Value50.Value = Vector3.new(2, 1, 1)
		Motor6D51.Name = "Neck"
		Motor6D51.Parent = Part46
		Motor6D51.C0 = CFrame.new(-5.96046448e-08, 0.799999952, 1.1920929e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D51.C1 = CFrame.new(-0, -0.500000119, -0.000272244215, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D51.Part0 = MeshPart21
		Motor6D51.Part1 = Part46
		Motor6D51.part1 = Part46
		Motor6D52.Name = "Neck"
		Motor6D52.Parent = Part46
		Motor6D52.C0 = CFrame.new(-5.96046448e-08, 0.799999952, 1.1920929e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D52.C1 = CFrame.new(-0, -0.500000119, -0.000272244215, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D52.Part0 = MeshPart21
		Motor6D52.Part1 = Part46
		Motor6D52.part1 = Part46
		Motor6D53.Name = "Neck"
		Motor6D53.Parent = Part46
		Motor6D53.C0 = CFrame.new(-5.96046448e-08, 0.799999952, 1.1920929e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D53.C1 = CFrame.new(-0, -0.500000119, -0.000272244215, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D53.Part0 = MeshPart21
		Motor6D53.Part1 = Part46
		Motor6D53.part1 = Part46
		Motor6D54.Name = "Neck"
		Motor6D54.Parent = Part46
		Motor6D54.C0 = CFrame.new(-5.96046448e-08, 0.799999952, 1.1920929e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D54.C1 = CFrame.new(-0, -0.500000119, -0.000272244215, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D54.Part0 = MeshPart21
		Motor6D54.Part1 = Part46
		Motor6D54.part1 = Part46
		Motor6D55.Name = "Neck"
		Motor6D55.Parent = Part46
		Motor6D55.C0 = CFrame.new(-5.96046448e-08, 0.799999952, 1.1920929e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D55.C1 = CFrame.new(-0, -0.500000119, -0.000272244215, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D55.Part0 = MeshPart21
		Motor6D55.Part1 = Part46
		Motor6D55.part1 = Part46
		Motor6D56.Name = "Neck"
		Motor6D56.Parent = Part46
		Motor6D56.C0 = CFrame.new(-5.96046448e-08, 0.799999952, 1.1920929e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D56.C1 = CFrame.new(-0, -0.500000119, -0.000272244215, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D56.Part0 = MeshPart21
		Motor6D56.Part1 = Part46
		Motor6D56.part1 = Part46
		Motor6D57.Name = "Neck"
		Motor6D57.Parent = Part46
		Motor6D57.C0 = CFrame.new(-5.96046448e-08, 0.799999952, 1.1920929e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D57.C1 = CFrame.new(-0, -0.500000119, -0.000272244215, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D57.Part0 = MeshPart21
		Motor6D57.Part1 = Part46
		Motor6D57.part1 = Part46
		Motor6D58.Name = "Neck"
		Motor6D58.Parent = Part46
		Motor6D58.C0 = CFrame.new(-5.96046448e-08, 0.799999952, 1.1920929e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D58.C1 = CFrame.new(-0, -0.500000119, -0.000272244215, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D58.Part0 = MeshPart21
		Motor6D58.Part1 = Part46
		Motor6D58.part1 = Part46
		Motor6D59.Name = "Neck"
		Motor6D59.Parent = Part46
		Motor6D59.C0 = CFrame.new(-5.96046448e-08, 0.799999952, 1.1920929e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D59.C1 = CFrame.new(-0, -0.500000119, -0.000272244215, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Motor6D59.Part0 = MeshPart21
		Motor6D59.Part1 = Part46
		Motor6D59.part1 = Part46
		Script60.Parent = Model0
		Script60.Name = "Animate"
		table.insert(
			cors,
			sandbox(
				Script60,
				function()
					function waitForChild(parent, childName)
						local child = parent:findFirstChild(childName)
						if child then
							return child
						end
						while true do
							child = parent.ChildAdded:wait()
							if child.Name == childName then
								return child
							end
						end
					end

					local Figure = script.Parent
					local Humanoid = waitForChild(Figure, "Humanoid")
					local pose = "Standing"

					local currentAnim = ""
					local currentAnimInstance = nil
					local currentAnimTrack = nil
					local currentAnimKeyframeHandler = nil
					local currentAnimSpeed = 1.0
					local animTable = {}
					local animNames = {
						idle = {
							{ id = "http://www.roblox.com/asset/?id=507766666", weight = 1 },
							{ id = "http://www.roblox.com/asset/?id=507766951", weight = 1 },
							{ id = "http://www.roblox.com/asset/?id=507766388", weight = 9 }
						},
						walk = {
							{ id = "http://www.roblox.com/asset/?id=507777826", weight = 10 }
						},
						run = {
							{ id = "http://www.roblox.com/asset/?id=507767714", weight = 10 }
						},
						swim = {
							{ id = "http://www.roblox.com/asset/?id=507784897", weight = 10 }
						},
						swimidle = {
							{ id = "http://www.roblox.com/asset/?id=507785072", weight = 10 }
						},
						jump = {
							{ id = "http://www.roblox.com/asset/?id=507765000", weight = 10 }
						},
						fall = {
							{ id = "http://www.roblox.com/asset/?id=507767968", weight = 10 }
						},
						climb = {
							{ id = "http://www.roblox.com/asset/?id=507765644", weight = 10 }
						},
						sit = {
							{ id = "http://www.roblox.com/asset/?id=507768133", weight = 10 }
						},
						toolnone = {
							{ id = "http://www.roblox.com/asset/?id=507768375", weight = 10 }
						},
						toolslash = {
							{ id = "http://www.roblox.com/asset/?id=507768375", weight = 10 }
							--				{ id = "slash.xml", weight = 10 }
						},
						toollunge = {
							{ id = "http://www.roblox.com/asset/?id=507768375", weight = 10 }
						},
						wave = {
							{ id = "http://www.roblox.com/asset/?id=507770239", weight = 10 }
						},
						point = {
							{ id = "http://www.roblox.com/asset/?id=507770453", weight = 10 }
						},
						dance = {
							{ id = "http://www.roblox.com/asset/?id=507771019", weight = 10 },
							{ id = "http://www.roblox.com/asset/?id=507771955", weight = 10 },
							{ id = "http://www.roblox.com/asset/?id=507772104", weight = 10 }
						},
						dance2 = {
							{ id = "http://www.roblox.com/asset/?id=507776043", weight = 10 },
							{ id = "http://www.roblox.com/asset/?id=507776720", weight = 10 },
							{ id = "http://www.roblox.com/asset/?id=507776879", weight = 10 }
						},
						dance3 = {
							{ id = "http://www.roblox.com/asset/?id=507777268", weight = 10 },
							{ id = "http://www.roblox.com/asset/?id=507777451", weight = 10 },
							{ id = "http://www.roblox.com/asset/?id=507777623", weight = 10 }
						},
						laugh = {
							{ id = "http://www.roblox.com/asset/?id=507770818", weight = 10 }
						},
						cheer = {
							{ id = "http://www.roblox.com/asset/?id=507770677", weight = 10 }
						}
					}

					-- Existance in this list signifies that it is an emote, the value indicates if it is a looping emote
					local emoteNames = {
						wave = false,
						point = false,
						dance = true,
						dance2 = true,
						dance3 = true,
						laugh = false,
						cheer = false
					}

					math.randomseed(tick())

					function configureAnimationSet(name, fileList)
						if (animTable[name] ~= nil) then
							for _, connection in pairs(animTable[name].connections) do
								connection:disconnect()
							end
						end
						animTable[name] = {}
						animTable[name].count = 0
						animTable[name].totalWeight = 0
						animTable[name].connections = {}

						-- check for config values
						local config = script:FindFirstChild(name)
						if (config ~= nil) then
							--		print("Loading anims " .. name)
							table.insert(
								animTable[name].connections,
								config.ChildAdded:connect(
									function(child)
										configureAnimationSet(name, fileList)
									end
								)
							)
							table.insert(
								animTable[name].connections,
								config.ChildRemoved:connect(
									function(child)
										configureAnimationSet(name, fileList)
									end
								)
							)
							local idx = 1
							for _, childPart in pairs(config:GetChildren()) do
								if (childPart:IsA("Animation")) then
									table.insert(
										animTable[name].connections,
										childPart.Changed:connect(
											function(property)
												configureAnimationSet(name, fileList)
											end
										)
									)
									animTable[name][idx] = {}
									animTable[name][idx].anim = childPart
									local weightObject = childPart:FindFirstChild("Weight")
									if (weightObject == nil) then
										animTable[name][idx].weight = 1
									else
										animTable[name][idx].weight = weightObject.Value
									end
									animTable[name].count = animTable[name].count + 1
									animTable[name].totalWeight = animTable[name].totalWeight + animTable[name][idx].weight
									--				print(name .. " [" .. idx .. "] " .. animTable[name][idx].anim.AnimationId .. " (" .. animTable[name][idx].weight .. ")")
									idx = idx + 1
								end
							end
						end

						-- fallback to defaults
						if (animTable[name].count <= 0) then
							for idx, anim in pairs(fileList) do
								animTable[name][idx] = {}
								animTable[name][idx].anim = Instance.new("Animation")
								animTable[name][idx].anim.Name = name
								animTable[name][idx].anim.AnimationId = anim.id
								animTable[name][idx].weight = anim.weight
								animTable[name].count = animTable[name].count + 1
								animTable[name].totalWeight = animTable[name].totalWeight + anim.weight
								--			print(name .. " [" .. idx .. "] " .. anim.id .. " (" .. anim.weight .. ")")
							end
						end
					end

					-- Setup animation objects
					function scriptChildModified(child)
						local fileList = animNames[child.Name]
						if (fileList ~= nil) then
							configureAnimationSet(child.Name, fileList)
						end
					end

					script.ChildAdded:connect(scriptChildModified)
					script.ChildRemoved:connect(scriptChildModified)

					for name, fileList in pairs(animNames) do
						configureAnimationSet(name, fileList)
					end

					-- ANIMATION

					-- declarations
					local toolAnim = "None"
					local toolAnimTime = 0

					local jumpAnimTime = 0
					local jumpAnimDuration = 0.31

					local toolTransitionTime = 0.1
					local fallTransitionTime = 0.2

					-- functions

					function stopAllAnimations()
						local oldAnim = currentAnim

						-- return to idle if finishing an emote
						if (emoteNames[oldAnim] ~= nil and emoteNames[oldAnim] == false) then
							oldAnim = "idle"
						end

						currentAnim = ""
						currentAnimInstance = nil
						if (currentAnimKeyframeHandler ~= nil) then
							currentAnimKeyframeHandler:disconnect()
						end

						if (currentAnimTrack ~= nil) then
							currentAnimTrack:Stop()
							currentAnimTrack:Destroy()
							currentAnimTrack = nil
						end
						return oldAnim
					end

					function setAnimationSpeed(speed)
						if speed ~= currentAnimSpeed then
							currentAnimSpeed = speed
							currentAnimTrack:AdjustSpeed(currentAnimSpeed)
						end
					end

					function keyFrameReachedFunc(frameName)
						if (frameName == "End") then
							--		print("Keyframe : ".. frameName)

							local repeatAnim = currentAnim
							-- return to idle if finishing an emote
							if (emoteNames[repeatAnim] ~= nil and emoteNames[repeatAnim] == false) then
								repeatAnim = "idle"
							end

							local animSpeed = currentAnimSpeed
							playAnimation(repeatAnim, 0.15, Humanoid)
							setAnimationSpeed(animSpeed)
						end
					end

					-- Preload animations
					function playAnimation(animName, transitionTime, humanoid)
						local roll = math.random(1, animTable[animName].totalWeight)
						local origRoll = roll
						local idx = 1
						while (roll > animTable[animName][idx].weight) do
							roll = roll - animTable[animName][idx].weight
							idx = idx + 1
						end

						--	print(animName .. " " .. idx .. " [" .. origRoll .. "]")

						local anim = animTable[animName][idx].anim

						-- switch animation
						if (anim ~= currentAnimInstance) then
							if (currentAnimTrack ~= nil) then
								currentAnimTrack:Stop(transitionTime)
								currentAnimTrack:Destroy()
							end

							currentAnimSpeed = 1.0

							-- load it to the humanoid; get AnimationTrack
							currentAnimTrack = humanoid:LoadAnimation(anim)

							-- play the animation
							currentAnimTrack:Play(transitionTime)
							currentAnim = animName
							currentAnimInstance = anim

							-- set up keyframe name triggers
							if (currentAnimKeyframeHandler ~= nil) then
								currentAnimKeyframeHandler:disconnect()
							end
							currentAnimKeyframeHandler = currentAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)
						end
					end

					-------------------------------------------------------------------------------------------
					-------------------------------------------------------------------------------------------

					local toolAnimName = ""
					local toolAnimTrack = nil
					local toolAnimInstance = nil
					local currentToolAnimKeyframeHandler = nil

					function toolKeyFrameReachedFunc(frameName)
						if (frameName == "End") then
							--		print("Keyframe : ".. frameName)
							playToolAnimation(toolAnimName, 0.0, Humanoid)
						end
					end

					function playToolAnimation(animName, transitionTime, humanoid)
						local roll = math.random(1, animTable[animName].totalWeight)
						local origRoll = roll
						local idx = 1
						while (roll > animTable[animName][idx].weight) do
							roll = roll - animTable[animName][idx].weight
							idx = idx + 1
						end
						--		print(animName .. " * " .. idx .. " [" .. origRoll .. "]")
						local anim = animTable[animName][idx].anim

						if (toolAnimInstance ~= anim) then
							if (toolAnimTrack ~= nil) then
								toolAnimTrack:Stop()
								toolAnimTrack:Destroy()
								transitionTime = 0
							end

							-- load it to the humanoid; get AnimationTrack
							toolAnimTrack = humanoid:LoadAnimation(anim)

							-- play the animation
							toolAnimTrack:Play(transitionTime)
							toolAnimName = animName
							toolAnimInstance = anim

							currentToolAnimKeyframeHandler = toolAnimTrack.KeyframeReached:connect(toolKeyFrameReachedFunc)
						end
					end

					function stopToolAnimations()
						local oldAnim = toolAnimName

						if (currentToolAnimKeyframeHandler ~= nil) then
							currentToolAnimKeyframeHandler:disconnect()
						end

						toolAnimName = ""
						toolAnimInstance = nil
						if (toolAnimTrack ~= nil) then
							toolAnimTrack:Stop()
							toolAnimTrack:Destroy()
							toolAnimTrack = nil
						end

						return oldAnim
					end

					-------------------------------------------------------------------------------------------
					-------------------------------------------------------------------------------------------

					function onRunning(speed)
						if speed > 0.01 then
							local scale = 15.0
							playAnimation("walk", 0.1, Humanoid)
							setAnimationSpeed(speed / scale)
							pose = "Running"
						else
							if emoteNames[currentAnim] == nil then
								playAnimation("idle", 0.1, Humanoid)
								pose = "Standing"
							end
						end
					end

					function onDied()
						pose = "Dead"
					end

					function onJumping()
						playAnimation("jump", 0.1, Humanoid)
						jumpAnimTime = jumpAnimDuration
						pose = "Jumping"
					end

					function onClimbing(speed)
						local scale = 5.0
						playAnimation("climb", 0.1, Humanoid)
						setAnimationSpeed(speed / scale)
						pose = "Climbing"
					end

					function onGettingUp()
						pose = "GettingUp"
					end

					function onFreeFall()
						if (jumpAnimTime <= 0) then
							playAnimation("fall", fallTransitionTime, Humanoid)
						end
						pose = "FreeFall"
					end

					function onFallingDown()
						pose = "FallingDown"
					end

					function onSeated()
						pose = "Seated"
					end

					function onPlatformStanding()
						pose = "PlatformStanding"
					end

					function onSwimming(speed)
						if speed > 1.00 then
							local scale = 10.0
							playAnimation("swim", 0.4, Humanoid)
							setAnimationSpeed(speed / scale)
							pose = "Swimming"
						else
							playAnimation("swimidle", 0.4, Humanoid)
							pose = "Standing"
						end
					end

					function getTool()
						for _, kid in ipairs(Figure:GetChildren()) do
							if kid.className == "Tool" then
								return kid
							end
						end
						return nil
					end

					function getToolAnim(tool)
						for _, c in ipairs(tool:GetChildren()) do
							if c.Name == "toolanim" and c.className == "StringValue" then
								return c
							end
						end
						return nil
					end

					function animateTool()
						if (toolAnim == "None") then
							playToolAnimation("toolnone", toolTransitionTime, Humanoid)
							return
						end

						if (toolAnim == "Slash") then
							playToolAnimation("toolslash", 0, Humanoid)
							return
						end

						if (toolAnim == "Lunge") then
							playToolAnimation("toollunge", 0, Humanoid)
							return
						end
					end

					function moveSit()
						RightShoulder.MaxVelocity = 0.15
						LeftShoulder.MaxVelocity = 0.15
						RightShoulder:SetDesiredAngle(3.14 / 2)
						LeftShoulder:SetDesiredAngle(-3.14 / 2)
						RightHip:SetDesiredAngle(3.14 / 2)
						LeftHip:SetDesiredAngle(-3.14 / 2)
					end

					local lastTick = 0

					function move(time)
						local amplitude = 1
						local frequency = 1
						local deltaTime = time - lastTick
						lastTick = time

						local climbFudge = 0
						local setAngles = false

						if (jumpAnimTime > 0) then
							jumpAnimTime = jumpAnimTime - deltaTime
						end

						if (pose == "FreeFall" and jumpAnimTime <= 0) then
							playAnimation("fall", fallTransitionTime, Humanoid)
						elseif (pose == "Seated") then
							playAnimation("sit", 0.5, Humanoid)
							return
						elseif (pose == "Running") then
							playAnimation("walk", 0.1, Humanoid)
						elseif (pose == "Dead" or pose == "GettingUp" or pose == "FallingDown" or pose == "Seated" or
							pose == "PlatformStanding")
						then
							stopAllAnimations()
							amplitude = 0.1
							frequency = 1
							setAngles = true
						end

						-- Tool Animation handling
						local tool = getTool()
						if tool and (tool.RequiresHandle or tool:FindFirstChild("Handle")) then
							animStringValueObject = getToolAnim(tool)

							if animStringValueObject then
								toolAnim = animStringValueObject.Value
								-- message recieved, delete StringValue
								animStringValueObject.Parent = nil
								toolAnimTime = time + .3
							end

							if time > toolAnimTime then
								toolAnimTime = 0
								toolAnim = "None"
							end

							animateTool()
						else
							stopToolAnimations()
							toolAnim = "None"
							toolAnimInstance = nil
							toolAnimTime = 0
						end
					end

					-- connect events
					Humanoid.Died:connect(onDied)
					Humanoid.Running:connect(onRunning)
					Humanoid.Jumping:connect(onJumping)
					Humanoid.Climbing:connect(onClimbing)
					Humanoid.GettingUp:connect(onGettingUp)
					Humanoid.FreeFalling:connect(onFreeFall)
					Humanoid.FallingDown:connect(onFallingDown)
					Humanoid.Seated:connect(onSeated)
					Humanoid.PlatformStanding:connect(onPlatformStanding)
					Humanoid.Swimming:connect(onSwimming)

					-- setup emote chat hook
					game:GetService("Players").LocalPlayer.Chatted:connect(
						function(msg)
							local emote = ""
							if (string.sub(msg, 1, 3) == "/e ") then
								emote = string.sub(msg, 4)
							elseif (string.sub(msg, 1, 7) == "/emote ") then
								emote = string.sub(msg, 8)
							end

							if (pose == "Standing" and emoteNames[emote] ~= nil) then
								playAnimation(emote, EMOTE_TRANSITION_TIME, Humanoid)
							end
						end
					)

					-- emote bindable hook
					--if FFlagAnimateScriptEmoteHook then
					--	script:WaitForChild("PlayEmote").OnInvoke = function(emote)
					-- Only play emotes when idling
					--		if pose ~= "Standing" then
					--			return
					--		end

					--		if emoteNames[emote] ~= nil then
					-- Default emotes
					--			playAnimation(emote, EMOTE_TRANSITION_TIME, Humanoid)
					--
					--			return true
					--		elseif typeof(emote) == "Instance" and emote:IsA("Animation") then
					-- Non-default emotes
					--			playEmote(emote, EMOTE_TRANSITION_TIME, Humanoid)
					--			return true
					--		end
					--
					--		-- Return false to indicate that the emote could not be played
					--		return false
					--	end
					--end

					-- initialize to idle
					playAnimation("idle", 0.1, Humanoid)
					pose = "Standing"

					-- loop to handle timed state transitions and tool animations
					while Character.Parent ~= nil do
						local _, currentGameTime = wait(0.1)
						stepAnimate(currentGameTime)
					end
				end
			)
		)
		StringValue61.Name = "climb"
		StringValue61.Parent = Script60
		Animation62.Name = "ClimbAnim"
		Animation62.Parent = StringValue61
		Animation62.AnimationId = "http://www.roblox.com/asset/?id=507765644"
		StringValue63.Name = "fall"
		StringValue63.Parent = Script60
		Animation64.Name = "FallAnim"
		Animation64.Parent = StringValue63
		Animation64.AnimationId = "http://www.roblox.com/asset/?id=507767968"
		--http://www.roblox.com/asset/?id=507767968 REGULAR
		--http://www.roblox.com/asset/?id=616157476 ZOMBIE
		StringValue65.Name = "idle"
		StringValue65.Parent = Script60
		Animation66.Name = "Animation1"
		Animation66.Parent = StringValue65
		Animation66.AnimationId = "http://www.roblox.com/asset/?id=507766388"
		--http://www.roblox.com/asset/?id=507766388 REGULAR
		--http://www.roblox.com/asset/?id=616158929 ZOMBIE
		NumberValue67.Name = "Weight"
		NumberValue67.Parent = Animation66
		NumberValue67.Value = 9
		Animation68.Name = "Animation2"
		Animation68.Parent = StringValue65
		Animation68.AnimationId = "http://www.roblox.com/asset/?id=507766666"
		--http://www.roblox.com/asset/?id=507766666 REGULAR
		--http://www.roblox.com/asset/?id=616160636 ZOMBIE
		NumberValue69.Name = "Weight"
		NumberValue69.Parent = Animation68
		NumberValue69.Value = 1
		StringValue70.Name = "jump"
		StringValue70.Parent = Script60
		Animation71.Name = "JumpAnim"
		Animation71.Parent = StringValue70
		Animation71.AnimationId = "http://www.roblox.com/asset/?id=507765000"
		StringValue72.Name = "run"
		StringValue72.Parent = Script60
		Animation73.Name = "RunAnim"
		Animation73.Parent = StringValue72
		Animation73.AnimationId = "http://www.roblox.com/asset/?id=5077677142"
		---http://www.roblox.com/asset/?id=616163682 ZOMBIE
		--http://www.roblox.com/asset/?5077677142 REGULAR
		StringValue74.Name = "sit"
		StringValue74.Parent = Script60
		Animation75.Name = "SitAnim"
		Animation75.Parent = StringValue74
		Animation75.AnimationId = "http://www.roblox.com/asset/?id=507768133"
		StringValue76.Name = "swim"
		StringValue76.Parent = Script60
		Animation77.Name = "Swim"
		Animation77.Parent = StringValue76
		Animation77.AnimationId = "http://www.roblox.com/asset/?id=507784897"
		StringValue78.Name = "swimidle"
		StringValue78.Parent = Script60
		Animation79.Name = "SwimIdle"
		Animation79.Parent = StringValue78
		Animation79.AnimationId = "http://www.roblox.com/asset/?id=481825862"
		StringValue80.Name = "toolnone"
		StringValue80.Parent = Script60
		Animation81.Name = "ToolNoneAnim"
		Animation81.Parent = StringValue80
		Animation81.AnimationId = "http://www.roblox.com/asset/?id=507768375"
		StringValue82.Name = "walk"
		StringValue82.Parent = Script60
		Animation83.Name = "RunAnim"
		Animation83.Parent = StringValue82
		Animation83.AnimationId = "http://www.roblox.com/asset/?id=507777826"
		--http://www.roblox.com/asset/?id=507777826 REGULAR
		--http://www.roblox.com/asset/?id=616168032 ZOMBIE
		BodyColors84.Parent = Model0
		BodyColors84.HeadColor = BrickColor.new("Bright yellow")
		BodyColors84.HeadColor3 = Color3.new(0.960784, 0.803922, 0.188235)
		BodyColors84.LeftArmColor = BrickColor.new("Bright yellow")
		BodyColors84.LeftArmColor3 = Color3.new(0.960784, 0.803922, 0.188235)
		BodyColors84.LeftLegColor = BrickColor.new("Br. yellowish green")
		BodyColors84.LeftLegColor3 = Color3.new(0.643137, 0.741176, 0.278431)
		BodyColors84.RightArmColor = BrickColor.new("Bright yellow")
		BodyColors84.RightArmColor3 = Color3.new(0.960784, 0.803922, 0.188235)
		BodyColors84.RightLegColor = BrickColor.new("Br. yellowish green")
		BodyColors84.RightLegColor3 = Color3.new(0.643137, 0.741176, 0.278431)
		BodyColors84.TorsoColor = BrickColor.new("Bright blue")
		BodyColors84.TorsoColor3 = Color3.new(0.0509804, 0.411765, 0.67451)

		for i, v in pairs(mas:GetChildren()) do
			fakechar = v
			v.Parent = parentt
			pcall(
				function()
					v:MakeJoints()
				end
			)
		end
		mas:Destroy()
		for i, v in pairs(cors) do
			spawn(
				function()
					pcall(v)
				end
			)
		end
	else
		cors = {}
		mas = Instance.new("Model", game:GetService("Lighting"))
		Model0 = Instance.new("Model")
		Part1 = Instance.new("Part")
		Decal2 = Instance.new("Decal")
		SpecialMesh3 = Instance.new("SpecialMesh")
		Part4 = Instance.new("Part")
		Decal5 = Instance.new("Decal")
		Motor6D6 = Instance.new("Motor6D")
		Motor6D7 = Instance.new("Motor6D")
		Motor6D8 = Instance.new("Motor6D")
		Motor6D9 = Instance.new("Motor6D")
		Motor6D10 = Instance.new("Motor6D")
		Part11 = Instance.new("Part")
		Part12 = Instance.new("Part")
		Part13 = Instance.new("Part")
		Part14 = Instance.new("Part")
		Humanoid15 = Instance.new("Humanoid")
		Part16 = Instance.new("Part")
		Sound17 = Instance.new("Sound")
		Sound18 = Instance.new("Sound")
		Sound19 = Instance.new("Sound")
		Sound20 = Instance.new("Sound")
		Sound21 = Instance.new("Sound")
		Sound22 = Instance.new("Sound")
		Sound23 = Instance.new("Sound")
		Sound24 = Instance.new("Sound")
		Sound25 = Instance.new("Sound")
		Motor6D26 = Instance.new("Motor6D")
		Script27 = Instance.new("Script")
		LocalScript28 = Instance.new("LocalScript")
		StringValue29 = Instance.new("StringValue")
		Animation30 = Instance.new("Animation")
		NumberValue31 = Instance.new("NumberValue")
		Animation32 = Instance.new("Animation")
		NumberValue33 = Instance.new("NumberValue")
		StringValue34 = Instance.new("StringValue")
		Animation35 = Instance.new("Animation")
		StringValue36 = Instance.new("StringValue")
		Animation37 = Instance.new("Animation")
		StringValue38 = Instance.new("StringValue")
		Animation39 = Instance.new("Animation")
		StringValue40 = Instance.new("StringValue")
		Animation41 = Instance.new("Animation")
		StringValue42 = Instance.new("StringValue")
		Animation43 = Instance.new("Animation")
		StringValue44 = Instance.new("StringValue")
		Animation45 = Instance.new("Animation")
		StringValue46 = Instance.new("StringValue")
		Animation47 = Instance.new("Animation")
		NumberValue48 = Instance.new("NumberValue")
		BodyColors49 = Instance.new("BodyColors")
		Model0.Name = "FakeCharacter"
		Model0.Parent = mas
		Model0.PrimaryPart = Part1
		Part1.Name = "Head"
		Part1.Parent = Model0
		Part1.CFrame = CFrame.new(144.600006, 16.5, 46, 1.89326617e-29, -3.55271368e-15, 1, -1.42108547e-14, 1, -
			3.55271368e-15, -1, 1.42108547e-14, -1.89326617e-29)
		Part1.Orientation = Vector3.new(0, 90, 0)
		Part1.Position = Vector3.new(144.60000610351562, 16.5, 46)
		Part1.Rotation = Vector3.new(0, 90, 0)
		Part1.Color = Color3.new(0.992157, 0.917647, 0.552941)
		Part1.Velocity = Vector3.new(-0.0000027329997465130873, 0.00007804940105415881, 0.0000014430867167902761)
		Part1.Size = Vector3.new(2, 1, 1)
		Part1.BrickColor = BrickColor.new("Cool yellow")
		Part1.RotVelocity = Vector3.new(9.621187473385362e-07, -1.4869502452789264e-14, 0.0000018221152231490123)
		Part1.TopSurface = Enum.SurfaceType.Smooth
		Part1.brickColor = BrickColor.new("Cool yellow")
		Part1.FormFactor = Enum.FormFactor.Symmetric
		Part1.formFactor = Enum.FormFactor.Symmetric
		Decal2.Name = "face"
		Decal2.Parent = Part1
		Decal2.Texture = "http://www.roblox.com/asset/?id=7074882"
		SpecialMesh3.Parent = Part1
		SpecialMesh3.Scale = Vector3.new(1.25, 1.25, 1.25)
		Part4.Name = "Torso"
		Part4.Parent = Model0
		Part4.CFrame = CFrame.new(144.600006, 15, 46, 1.89326617e-29, -3.55271368e-15, 1, -1.42108547e-14, 1, -3.55271368e-15,
			-1, 1.42108547e-14, -1.89326617e-29)
		Part4.Orientation = Vector3.new(0, 90, 0)
		Part4.Position = Vector3.new(144.60000610351562, 15, 46)
		Part4.Rotation = Vector3.new(0, 90, 0)
		Part4.Color = Color3.new(0.156863, 0.498039, 0.278431)
		Part4.Velocity = Vector3.new(1.7314505385002121e-10, 0.00007804940105415881, -9.140421752817929e-11)
		Part4.Size = Vector3.new(2, 2, 1)
		Part4.BrickColor = BrickColor.new("Dark green")
		Part4.LeftParamA = 0
		Part4.LeftParamB = 0
		Part4.LeftSurface = Enum.SurfaceType.Weld
		Part4.RightParamA = 0
		Part4.RightParamB = 0
		Part4.RightSurface = Enum.SurfaceType.Weld
		Part4.RotVelocity = Vector3.new(9.621187473385362e-07, -1.4869502452789264e-14, 0.0000018221152231490123)
		Part4.brickColor = BrickColor.new("Dark green")
		Part4.FormFactor = Enum.FormFactor.Symmetric
		Part4.formFactor = Enum.FormFactor.Symmetric
		Decal5.Name = "roblox"
		Decal5.Parent = Part4
		Motor6D6.Name = "Right Shoulder"
		Motor6D6.Parent = Part4
		Motor6D6.MaxVelocity = 0.10000000149011612
		Motor6D6.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
		Motor6D6.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
		Motor6D6.Part0 = Part4
		Motor6D6.Part1 = Part12
		Motor6D6.part1 = Part12
		Motor6D7.Name = "Left Shoulder"
		Motor6D7.Parent = Part4
		Motor6D7.MaxVelocity = 0.10000000149011612
		Motor6D7.C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		Motor6D7.C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		Motor6D7.Part0 = Part4
		Motor6D7.Part1 = Part11
		Motor6D7.part1 = Part11
		Motor6D8.Name = "Right Hip"
		Motor6D8.Parent = Part4
		Motor6D8.MaxVelocity = 0.10000000149011612
		Motor6D8.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
		Motor6D8.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
		Motor6D8.Part0 = Part4
		Motor6D8.Part1 = Part14
		Motor6D8.part1 = Part14
		Motor6D9.Name = "Left Hip"
		Motor6D9.Parent = Part4
		Motor6D9.MaxVelocity = 0.10000000149011612
		Motor6D9.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		Motor6D9.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		Motor6D9.Part0 = Part4
		Motor6D9.Part1 = Part13
		Motor6D9.part1 = Part13
		Motor6D10.Name = "Neck"
		Motor6D10.Parent = Part4
		Motor6D10.MaxVelocity = 0.10000000149011612
		Motor6D10.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
		Motor6D10.C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
		Motor6D10.Part0 = Part4
		Motor6D10.Part1 = Part1
		Motor6D10.part1 = Part1
		Part11.Name = "Left Arm"
		Part11.Parent = Model0
		Part11.CFrame = CFrame.new(144.600006, 15, 47.5, 1.89326617e-29, -3.55271368e-15, 1, -1.42108547e-14, 1,
			-3.55271368e-15, -1, 1.42108547e-14, -1.89326617e-29)
		Part11.Orientation = Vector3.new(0, 90, 0)
		Part11.Position = Vector3.new(144.60000610351562, 15, 47.5)
		Part11.Rotation = Vector3.new(0, 90, 0)
		Part11.Color = Color3.new(0.992157, 0.917647, 0.552941)
		Part11.Velocity = Vector3.new(1.7312275224501406e-10, 0.00007660622213734314, -9.140421752817929e-11)
		Part11.Size = Vector3.new(1, 2, 1)
		Part11.BrickColor = BrickColor.new("Cool yellow")
		Part11.CanCollide = false
		Part11.RotVelocity = Vector3.new(9.621187473385362e-07, -1.4869502452789264e-14, 0.0000018221152231490123)
		Part11.brickColor = BrickColor.new("Cool yellow")
		Part11.FormFactor = Enum.FormFactor.Symmetric
		Part11.formFactor = Enum.FormFactor.Symmetric
		Part12.Name = "Right Arm"
		Part12.Parent = Model0
		Part12.CFrame = CFrame.new(144.600006, 15, 44.5, 1.89326617e-29, -3.55271368e-15, 1, -1.42108547e-14, 1,
			-3.55271368e-15, -1, 1.42108547e-14, -1.89326617e-29)
		Part12.Orientation = Vector3.new(0, 90, 0)
		Part12.Position = Vector3.new(144.60000610351562, 15, 44.5)
		Part12.Rotation = Vector3.new(0, 90, 0)
		Part12.Color = Color3.new(0.992157, 0.917647, 0.552941)
		Part12.Velocity = Vector3.new(1.7316735545502837e-10, 0.00007949257997097448, -9.140421752817929e-11)
		Part12.Size = Vector3.new(1, 2, 1)
		Part12.BrickColor = BrickColor.new("Cool yellow")
		Part12.CanCollide = false
		Part12.RotVelocity = Vector3.new(9.621187473385362e-07, -1.4869502452789264e-14, 0.0000018221152231490123)
		Part12.brickColor = BrickColor.new("Cool yellow")
		Part12.FormFactor = Enum.FormFactor.Symmetric
		Part12.formFactor = Enum.FormFactor.Symmetric
		Part13.Name = "Left Leg"
		Part13.Parent = Model0
		Part13.CFrame = CFrame.new(144.600006, 13, 46.5, 1.89326617e-29, -3.55271368e-15, 1, -1.42108547e-14, 1,
			-3.55271368e-15, -1, 1.42108547e-14, -1.89326617e-29)
		Part13.Orientation = Vector3.new(0, 90, 0)
		Part13.Position = Vector3.new(144.60000610351562, 13, 46.5)
		Part13.Rotation = Vector3.new(0, 90, 0)
		Part13.Color = Color3.new(0.0509804, 0.411765, 0.67451)
		Part13.Velocity = Vector3.new(0.000003644403477665037, 0.00007756834384053946, -0.0000019243288988946006)
		Part13.Size = Vector3.new(1, 2, 1)
		Part13.BottomSurface = Enum.SurfaceType.Smooth
		Part13.BrickColor = BrickColor.new("Bright blue")
		Part13.CanCollide = false
		Part13.RotVelocity = Vector3.new(9.621187473385362e-07, -1.4869502452789264e-14, 0.0000018221152231490123)
		Part13.brickColor = BrickColor.new("Bright blue")
		Part13.FormFactor = Enum.FormFactor.Symmetric
		Part13.formFactor = Enum.FormFactor.Symmetric
		Part14.Name = "Right Leg"
		Part14.Parent = Model0
		Part14.CFrame = CFrame.new(144.600006, 13, 45.5, 1.89326617e-29, -3.55271368e-15, 1, -1.42108547e-14, 1,
			-3.55271368e-15, -1, 1.42108547e-14, -1.89326617e-29)
		Part14.Orientation = Vector3.new(0, 90, 0)
		Part14.Position = Vector3.new(144.60000610351562, 13, 45.5)
		Part14.Rotation = Vector3.new(0, 90, 0)
		Part14.Color = Color3.new(0.0509804, 0.411765, 0.67451)
		Part14.Velocity = Vector3.new(0.000003644403477665037, 0.00007853045826777816, -0.0000019243288988946006)
		Part14.Size = Vector3.new(1, 2, 1)
		Part14.BottomSurface = Enum.SurfaceType.Smooth
		Part14.BrickColor = BrickColor.new("Bright blue")
		Part14.CanCollide = false
		Part14.RotVelocity = Vector3.new(9.621187473385362e-07, -1.4869502452789264e-14, 0.0000018221152231490123)
		Part14.brickColor = BrickColor.new("Bright blue")
		Part14.FormFactor = Enum.FormFactor.Symmetric
		Part14.formFactor = Enum.FormFactor.Symmetric
		Humanoid15.Parent = Model0
		Humanoid15.LeftLeg = Part13
		Humanoid15.RightLeg = Part14
		Humanoid15.Torso = Part16
		Humanoid15.DisplayName = ""
		Part16.Name = "HumanoidRootPart"
		Part16.Parent = Model0
		Part16.CFrame = CFrame.new(144.600006, 15, 46, 1.89326617e-29, -3.55271368e-15, 1, -1.42108547e-14, 1, -3.55271368e-15
			, -1, 1.42108547e-14, -1.89326617e-29)
		Part16.Orientation = Vector3.new(0, 90, 0)
		Part16.Position = Vector3.new(144.60000610351562, 15, 46)
		Part16.Rotation = Vector3.new(0, 90, 0)
		Part16.Transparency = 1
		Part16.Velocity = Vector3.new(1.7314505385002121e-10, 0.00007804940105415881, -9.140421752817929e-11)
		Part16.Size = Vector3.new(2, 2, 1)
		Part16.BottomSurface = Enum.SurfaceType.Smooth
		Part16.CanCollide = false
		Part16.LeftParamA = 0
		Part16.LeftParamB = 0
		Part16.RightParamA = 0
		Part16.RightParamB = 0
		Part16.RotVelocity = Vector3.new(9.621187473385362e-07, -1.4869502452789264e-14, 0.0000018221152231490123)
		Part16.TopSurface = Enum.SurfaceType.Smooth
		Part16.FormFactor = Enum.FormFactor.Symmetric
		Part16.formFactor = Enum.FormFactor.Symmetric
		Sound17.Name = "Climbing"
		Sound17.Parent = Part16
		Sound17.Looped = true
		Sound17.MaxDistance = 150
		Sound17.EmitterSize = 5
		Sound17.MinDistance = 5
		Sound17.SoundId = "rbxasset://sounds/action_footsteps_plastic.mp3"
		Sound17.Volume = 0.6499999761581421
		Sound18.Name = "Died"
		Sound18.Parent = Part16
		Sound18.MaxDistance = 150
		Sound18.EmitterSize = 5
		Sound18.MinDistance = 5
		Sound18.SoundId = "rbxasset://sounds/uuhhh.mp3"
		Sound18.Volume = 0.6499999761581421
		Sound19.Name = "GettingUp"
		Sound19.Parent = Part16
		Sound19.MaxDistance = 150
		Sound19.EmitterSize = 5
		Sound19.MinDistance = 5
		Sound19.SoundId = "rbxasset://sounds/action_get_up.mp3"
		Sound19.Volume = 0.6499999761581421
		Sound20.Name = "Swimming"
		Sound20.Parent = Part16
		Sound20.Looped = true
		Sound20.MaxDistance = 150
		Sound20.EmitterSize = 5
		Sound20.MinDistance = 5
		Sound20.Pitch = 1.600000023841858
		Sound20.PlaybackSpeed = 1.600000023841858
		Sound20.SoundId = "rbxasset://sounds/action_swim.mp3"
		Sound20.Volume = 0.6499999761581421
		Sound21.Name = "Jumping"
		Sound21.Parent = Part16
		Sound21.MaxDistance = 150
		Sound21.EmitterSize = 5
		Sound21.MinDistance = 5
		Sound21.SoundId = "rbxasset://sounds/action_jump.mp3"
		Sound21.Volume = 0.6499999761581421
		Sound22.Name = "Landing"
		Sound22.Parent = Part16
		Sound22.MaxDistance = 150
		Sound22.EmitterSize = 5
		Sound22.MinDistance = 5
		Sound22.SoundId = "rbxasset://sounds/action_jump_land.mp3"
		Sound22.Volume = 0.6499999761581421
		Sound23.Name = "Splash"
		Sound23.Parent = Part16
		Sound23.MaxDistance = 150
		Sound23.EmitterSize = 5
		Sound23.MinDistance = 5
		Sound23.SoundId = "rbxasset://sounds/impact_water.mp3"
		Sound23.Volume = 0.6499999761581421
		Sound24.Name = "FreeFalling"
		Sound24.Parent = Part16
		Sound24.Looped = true
		Sound24.MaxDistance = 150
		Sound24.EmitterSize = 5
		Sound24.MinDistance = 5
		Sound24.SoundId = "rbxasset://sounds/action_falling.mp3"
		Sound24.Volume = 0.6499999761581421
		Sound25.Name = "Running"
		Sound25.Parent = Part16
		Sound25.Looped = true
		Sound25.MaxDistance = 150
		Sound25.EmitterSize = 5
		Sound25.MinDistance = 5
		Sound25.Pitch = 1.850000023841858
		Sound25.PlaybackSpeed = 1.850000023841858
		Sound25.SoundId = "rbxasset://sounds/action_footsteps_plastic.mp3"
		Sound25.Volume = 0.6499999761581421
		Motor6D26.Name = "RootJoint"
		Motor6D26.Parent = Part16
		Motor6D26.MaxVelocity = 0.10000000149011612
		Motor6D26.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
		Motor6D26.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
		Motor6D26.Part0 = Part16
		Motor6D26.Part1 = Part4
		Motor6D26.part1 = Part4
		Script27.Name = "Health"
		Script27.Parent = Model0
		table.insert(cors, sandbox(Script27, function()
			-- Gradually regenerates the Humanoid's Health over time.

			local REGEN_RATE = 1 / 100 -- Regenerate this fraction of MaxHealth per second.
			local REGEN_STEP = 1 -- Wait this long between each regeneration step.

			--------------------------------------------------------------------------------

			local Character = script.Parent
			local Humanoid = Character:WaitForChild 'Humanoid'

			--------------------------------------------------------------------------------

			while true do
				while Humanoid.Health < Humanoid.MaxHealth do
					local dt = wait(REGEN_STEP)
					local dh = dt * REGEN_RATE * Humanoid.MaxHealth
					Humanoid.Health = math.min(Humanoid.Health + dh, Humanoid.MaxHealth)
				end
				Humanoid.HealthChanged:Wait()
			end
		end))
		LocalScript28.Name = "Animate"
		LocalScript28.Parent = Model0
		table.insert(cors, sandbox(LocalScript28, function()
			local Figure = script.Parent
			local Torso = Figure:WaitForChild("Torso")
			local RightShoulder = Torso:WaitForChild("Right Shoulder")
			local LeftShoulder = Torso:WaitForChild("Left Shoulder")
			local RightHip = Torso:WaitForChild("Right Hip")
			local LeftHip = Torso:WaitForChild("Left Hip")
			local Neck = Torso:WaitForChild("Neck")
			local Humanoid = Figure:WaitForChild("Humanoid")
			local pose = "Standing"

			local currentAnim = ""
			local currentAnimInstance = nil
			local currentAnimTrack = nil
			local currentAnimKeyframeHandler = nil
			local currentAnimSpeed = 1.0
			local animTable = {}
			local animNames = {
				idle = {
					{ id = "http://www.roblox.com/asset/?id=180435571", weight = 9 },
					{ id = "http://www.roblox.com/asset/?id=180435792", weight = 1 }
				},
				walk = {
					{ id = "http://www.roblox.com/asset/?id=180426354", weight = 10 }
				},
				run = {
					{ id = "run.xml", weight = 10 }
				},
				jump = {
					{ id = "http://www.roblox.com/asset/?id=125750702", weight = 10 }
				},
				fall = {
					{ id = "http://www.roblox.com/asset/?id=180436148", weight = 10 }
				},
				climb = {
					{ id = "http://www.roblox.com/asset/?id=180436334", weight = 10 }
				},
				sit = {
					{ id = "http://www.roblox.com/asset/?id=178130996", weight = 10 }
				},
				toolnone = {
					{ id = "http://www.roblox.com/asset/?id=182393478", weight = 10 }
				},
				toolslash = {
					{ id = "http://www.roblox.com/asset/?id=129967390", weight = 10 }
					--				{ id = "slash.xml", weight = 10 }
				},
				toollunge = {
					{ id = "http://www.roblox.com/asset/?id=129967478", weight = 10 }
				},
				wave = {
					{ id = "http://www.roblox.com/asset/?id=128777973", weight = 10 }
				},
				point = {
					{ id = "http://www.roblox.com/asset/?id=128853357", weight = 10 }
				},
				dance1 = {
					{ id = "http://www.roblox.com/asset/?id=182435998", weight = 10 },
					{ id = "http://www.roblox.com/asset/?id=182491037", weight = 10 },
					{ id = "http://www.roblox.com/asset/?id=182491065", weight = 10 }
				},
				dance2 = {
					{ id = "http://www.roblox.com/asset/?id=182436842", weight = 10 },
					{ id = "http://www.roblox.com/asset/?id=182491248", weight = 10 },
					{ id = "http://www.roblox.com/asset/?id=182491277", weight = 10 }
				},
				dance3 = {
					{ id = "http://www.roblox.com/asset/?id=182436935", weight = 10 },
					{ id = "http://www.roblox.com/asset/?id=182491368", weight = 10 },
					{ id = "http://www.roblox.com/asset/?id=182491423", weight = 10 }
				},
				laugh = {
					{ id = "http://www.roblox.com/asset/?id=129423131", weight = 10 }
				},
				cheer = {
					{ id = "http://www.roblox.com/asset/?id=129423030", weight = 10 }
				},
			}
			local dances = { "dance1", "dance2", "dance3" }

			-- Existance in this list signifies that it is an emote, the value indicates if it is a looping emote
			local emoteNames = { wave = false, point = false, dance1 = true, dance2 = true, dance3 = true, laugh = false,
				cheer = false }

			function configureAnimationSet(name, fileList)
				if (animTable[name] ~= nil) then
					for _, connection in pairs(animTable[name].connections) do
						connection:disconnect()
					end
				end
				animTable[name] = {}
				animTable[name].count = 0
				animTable[name].totalWeight = 0
				animTable[name].connections = {}

				-- check for config values
				local config = script:FindFirstChild(name)
				if (config ~= nil) then
					--		print("Loading anims " .. name)
					table.insert(animTable[name].connections,
						config.ChildAdded:connect(function(child) configureAnimationSet(name, fileList) end))
					table.insert(animTable[name].connections,
						config.ChildRemoved:connect(function(child) configureAnimationSet(name, fileList) end))
					local idx = 1
					for _, childPart in pairs(config:GetChildren()) do
						if (childPart:IsA("Animation")) then
							table.insert(animTable[name].connections,
								childPart.Changed:connect(function(property) configureAnimationSet(name, fileList) end))
							animTable[name][idx] = {}
							animTable[name][idx].anim = childPart
							local weightObject = childPart:FindFirstChild("Weight")
							if (weightObject == nil) then
								animTable[name][idx].weight = 1
							else
								animTable[name][idx].weight = weightObject.Value
							end
							animTable[name].count = animTable[name].count + 1
							animTable[name].totalWeight = animTable[name].totalWeight + animTable[name][idx].weight
							--			print(name .. " [" .. idx .. "] " .. animTable[name][idx].anim.AnimationId .. " (" .. animTable[name][idx].weight .. ")")
							idx = idx + 1
						end
					end
				end

				-- fallback to defaults
				if (animTable[name].count <= 0) then
					for idx, anim in pairs(fileList) do
						animTable[name][idx] = {}
						animTable[name][idx].anim = Instance.new("Animation")
						animTable[name][idx].anim.Name = name
						animTable[name][idx].anim.AnimationId = anim.id
						animTable[name][idx].weight = anim.weight
						animTable[name].count = animTable[name].count + 1
						animTable[name].totalWeight = animTable[name].totalWeight + anim.weight
						--			print(name .. " [" .. idx .. "] " .. anim.id .. " (" .. anim.weight .. ")")
					end
				end
			end

			-- Setup animation objects
			function scriptChildModified(child)
				local fileList = animNames[child.Name]
				if (fileList ~= nil) then
					configureAnimationSet(child.Name, fileList)
				end
			end

			script.ChildAdded:connect(scriptChildModified)
			script.ChildRemoved:connect(scriptChildModified)

			-- Clear any existing animation tracks
			-- Fixes issue with characters that are moved in and out of the Workspace accumulating tracks
			local animator = Humanoid and Humanoid:FindFirstChildOfClass("Animator") or nil
			if animator then
				local animTracks = animator:GetPlayingAnimationTracks()
				for i, track in ipairs(animTracks) do
					track:Stop(0)
					track:Destroy()
				end
			end


			for name, fileList in pairs(animNames) do
				configureAnimationSet(name, fileList)
			end

			-- ANIMATION

			-- declarations
			local toolAnim = "None"
			local toolAnimTime = 0

			local jumpAnimTime = 0
			local jumpAnimDuration = 0.3

			local toolTransitionTime = 0.1
			local fallTransitionTime = 0.3
			local jumpMaxLimbVelocity = 0.75

			-- functions

			function stopAllAnimations()
				local oldAnim = currentAnim

				-- return to idle if finishing an emote
				if (emoteNames[oldAnim] ~= nil and emoteNames[oldAnim] == false) then
					oldAnim = "idle"
				end

				currentAnim = ""
				currentAnimInstance = nil
				if (currentAnimKeyframeHandler ~= nil) then
					currentAnimKeyframeHandler:disconnect()
				end

				if (currentAnimTrack ~= nil) then
					currentAnimTrack:Stop()
					currentAnimTrack:Destroy()
					currentAnimTrack = nil
				end
				return oldAnim
			end

			function setAnimationSpeed(speed)
				if speed ~= currentAnimSpeed then
					currentAnimSpeed = speed
					currentAnimTrack:AdjustSpeed(currentAnimSpeed)
				end
			end

			function keyFrameReachedFunc(frameName)
				if (frameName == "End") then

					local repeatAnim = currentAnim
					-- return to idle if finishing an emote
					if (emoteNames[repeatAnim] ~= nil and emoteNames[repeatAnim] == false) then
						repeatAnim = "idle"
					end

					local animSpeed = currentAnimSpeed
					playAnimation(repeatAnim, 0.0, Humanoid)
					setAnimationSpeed(animSpeed)
				end
			end

			-- Preload animations
			function playAnimation(animName, transitionTime, humanoid)

				local roll = math.random(1, animTable[animName].totalWeight)
				local origRoll = roll
				local idx = 1
				while (roll > animTable[animName][idx].weight) do
					roll = roll - animTable[animName][idx].weight
					idx = idx + 1
				end
				--		print(animName .. " " .. idx .. " [" .. origRoll .. "]")
				local anim = animTable[animName][idx].anim

				-- switch animation
				if (anim ~= currentAnimInstance) then

					if (currentAnimTrack ~= nil) then
						currentAnimTrack:Stop(transitionTime)
						currentAnimTrack:Destroy()
					end

					currentAnimSpeed = 1.0

					-- load it to the humanoid; get AnimationTrack
					currentAnimTrack = humanoid:LoadAnimation(anim)
					currentAnimTrack.Priority = Enum.AnimationPriority.Core

					-- play the animation
					currentAnimTrack:Play(transitionTime)
					currentAnim = animName
					currentAnimInstance = anim

					-- set up keyframe name triggers
					if (currentAnimKeyframeHandler ~= nil) then
						currentAnimKeyframeHandler:disconnect()
					end
					currentAnimKeyframeHandler = currentAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)

				end

			end

			-------------------------------------------------------------------------------------------
			-------------------------------------------------------------------------------------------

			local toolAnimName = ""
			local toolAnimTrack = nil
			local toolAnimInstance = nil
			local currentToolAnimKeyframeHandler = nil

			function toolKeyFrameReachedFunc(frameName)
				if (frameName == "End") then
					--		print("Keyframe : ".. frameName)
					playToolAnimation(toolAnimName, 0.0, Humanoid)
				end
			end

			function playToolAnimation(animName, transitionTime, humanoid, priority)

				local roll = math.random(1, animTable[animName].totalWeight)
				local origRoll = roll
				local idx = 1
				while (roll > animTable[animName][idx].weight) do
					roll = roll - animTable[animName][idx].weight
					idx = idx + 1
				end
				--		print(animName .. " * " .. idx .. " [" .. origRoll .. "]")
				local anim = animTable[animName][idx].anim

				if (toolAnimInstance ~= anim) then

					if (toolAnimTrack ~= nil) then
						toolAnimTrack:Stop()
						toolAnimTrack:Destroy()
						transitionTime = 0
					end

					-- load it to the humanoid; get AnimationTrack
					toolAnimTrack = humanoid:LoadAnimation(anim)
					if priority then
						toolAnimTrack.Priority = priority
					end

					-- play the animation
					toolAnimTrack:Play(transitionTime)
					toolAnimName = animName
					toolAnimInstance = anim

					currentToolAnimKeyframeHandler = toolAnimTrack.KeyframeReached:connect(toolKeyFrameReachedFunc)
				end
			end

			function stopToolAnimations()
				local oldAnim = toolAnimName

				if (currentToolAnimKeyframeHandler ~= nil) then
					currentToolAnimKeyframeHandler:disconnect()
				end

				toolAnimName = ""
				toolAnimInstance = nil
				if (toolAnimTrack ~= nil) then
					toolAnimTrack:Stop()
					toolAnimTrack:Destroy()
					toolAnimTrack = nil
				end


				return oldAnim
			end

			-------------------------------------------------------------------------------------------
			-------------------------------------------------------------------------------------------


			function onRunning(speed)
				if speed > 0.01 then
					playAnimation("walk", 0.1, Humanoid)
					if currentAnimInstance and currentAnimInstance.AnimationId == "http://www.roblox.com/asset/?id=180426354" then
						setAnimationSpeed(speed / 14.5)
					end
					pose = "Running"
				else
					if emoteNames[currentAnim] == nil then
						playAnimation("idle", 0.1, Humanoid)
						pose = "Standing"
					end
				end
			end

			function onDied()
				pose = "Dead"
			end

			function onJumping()
				playAnimation("jump", 0.1, Humanoid)
				jumpAnimTime = jumpAnimDuration
				pose = "Jumping"
			end

			function onClimbing(speed)
				playAnimation("climb", 0.1, Humanoid)
				setAnimationSpeed(speed / 12.0)
				pose = "Climbing"
			end

			function onGettingUp()
				pose = "GettingUp"
			end

			function onFreeFall()
				if (jumpAnimTime <= 0) then
					playAnimation("fall", fallTransitionTime, Humanoid)
				end
				pose = "FreeFall"
			end

			function onFallingDown()
				pose = "FallingDown"
			end

			function onSeated()
				pose = "Seated"
			end

			function onPlatformStanding()
				pose = "PlatformStanding"
			end

			function onSwimming(speed)
				if speed > 0 then
					pose = "Running"
				else
					pose = "Standing"
				end
			end

			function getTool()
				for _, kid in ipairs(Figure:GetChildren()) do
					if kid.className == "Tool" then return kid end
				end
				return nil
			end

			function getToolAnim(tool)
				for _, c in ipairs(tool:GetChildren()) do
					if c.Name == "toolanim" and c.className == "StringValue" then
						return c
					end
				end
				return nil
			end

			function animateTool()

				if (toolAnim == "None") then
					playToolAnimation("toolnone", toolTransitionTime, Humanoid, Enum.AnimationPriority.Idle)
					return
				end

				if (toolAnim == "Slash") then
					playToolAnimation("toolslash", 0, Humanoid, Enum.AnimationPriority.Action)
					return
				end

				if (toolAnim == "Lunge") then
					playToolAnimation("toollunge", 0, Humanoid, Enum.AnimationPriority.Action)
					return
				end
			end

			function moveSit()
				RightShoulder.MaxVelocity = 0.15
				LeftShoulder.MaxVelocity = 0.15
				RightShoulder:SetDesiredAngle(3.14 / 2)
				LeftShoulder:SetDesiredAngle(-3.14 / 2)
				RightHip:SetDesiredAngle(3.14 / 2)
				LeftHip:SetDesiredAngle(-3.14 / 2)
			end

			local lastTick = 0

			function move(time)
				local amplitude = 1
				local frequency = 1
				local deltaTime = time - lastTick
				lastTick = time

				local climbFudge = 0
				local setAngles = false

				if (jumpAnimTime > 0) then
					jumpAnimTime = jumpAnimTime - deltaTime
				end

				if (pose == "FreeFall" and jumpAnimTime <= 0) then
					playAnimation("fall", fallTransitionTime, Humanoid)
				elseif (pose == "Seated") then
					playAnimation("sit", 0.5, Humanoid)
					return
				elseif (pose == "Running") then
					playAnimation("walk", 0.1, Humanoid)
				elseif (
					pose == "Dead" or pose == "GettingUp" or pose == "FallingDown" or pose == "Seated" or pose == "PlatformStanding") then
					--		print("Wha " .. pose)
					stopAllAnimations()
					amplitude = 0.1
					frequency = 1
					setAngles = true
				end

				if (setAngles) then
					local desiredAngle = amplitude * math.sin(time * frequency)

					RightShoulder:SetDesiredAngle(desiredAngle + climbFudge)
					LeftShoulder:SetDesiredAngle(desiredAngle - climbFudge)
					RightHip:SetDesiredAngle(-desiredAngle)
					LeftHip:SetDesiredAngle(-desiredAngle)
				end

				-- Tool Animation handling
				local tool = getTool()
				if tool and tool:FindFirstChild("Handle") then

					local animStringValueObject = getToolAnim(tool)

					if animStringValueObject then
						toolAnim = animStringValueObject.Value
						-- message recieved, delete StringValue
						animStringValueObject.Parent = nil
						toolAnimTime = time + .3
					end

					if time > toolAnimTime then
						toolAnimTime = 0
						toolAnim = "None"
					end

					animateTool()
				else
					stopToolAnimations()
					toolAnim = "None"
					toolAnimInstance = nil
					toolAnimTime = 0
				end
			end

			-- connect events
			Humanoid.Died:connect(onDied)
			Humanoid.Running:connect(onRunning)
			Humanoid.Jumping:connect(onJumping)
			Humanoid.Climbing:connect(onClimbing)
			Humanoid.GettingUp:connect(onGettingUp)
			Humanoid.FreeFalling:connect(onFreeFall)
			Humanoid.FallingDown:connect(onFallingDown)
			Humanoid.Seated:connect(onSeated)
			Humanoid.PlatformStanding:connect(onPlatformStanding)
			Humanoid.Swimming:connect(onSwimming)

			-- setup emote chat hook
			game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
				local emote = ""
				if msg == "/e dance" then
					emote = dances[math.random(1, #dances)]
				elseif (string.sub(msg, 1, 3) == "/e ") then
					emote = string.sub(msg, 4)
				elseif (string.sub(msg, 1, 7) == "/emote ") then
					emote = string.sub(msg, 8)
				end

				if (pose == "Standing" and emoteNames[emote] ~= nil) then
					playAnimation(emote, 0.1, Humanoid)
				end

			end)


			-- main program

			-- initialize to idle
			playAnimation("idle", 0.1, Humanoid)
			pose = "Standing"

			while Figure.Parent ~= nil do
				local _, time = wait(0.1)
				move(time)
			end



		end))
		StringValue29.Name = "idle"
		StringValue29.Parent = LocalScript28
		Animation30.Name = "Animation1"
		Animation30.Parent = StringValue29
		Animation30.AnimationId = "http://www.roblox.com/asset/?id=180435571"
		NumberValue31.Name = "Weight"
		NumberValue31.Parent = Animation30
		NumberValue31.Value = 9
		Animation32.Name = "Animation2"
		Animation32.Parent = StringValue29
		Animation32.AnimationId = "http://www.roblox.com/asset/?id=180435792"
		NumberValue33.Name = "Weight"
		NumberValue33.Parent = Animation32
		NumberValue33.Value = 1
		StringValue34.Name = "walk"
		StringValue34.Parent = LocalScript28
		Animation35.Name = "WalkAnim"
		Animation35.Parent = StringValue34
		Animation35.AnimationId = "http://www.roblox.com/asset/?id=180426354"
		StringValue36.Name = "run"
		StringValue36.Parent = LocalScript28
		Animation37.Name = "RunAnim"
		Animation37.Parent = StringValue36
		Animation37.AnimationId = "http://www.roblox.com/asset/?id=180426354"
		StringValue38.Name = "jump"
		StringValue38.Parent = LocalScript28
		Animation39.Name = "JumpAnim"
		Animation39.Parent = StringValue38
		Animation39.AnimationId = "http://www.roblox.com/asset/?id=125750702"
		StringValue40.Name = "climb"
		StringValue40.Parent = LocalScript28
		Animation41.Name = "ClimbAnim"
		Animation41.Parent = StringValue40
		Animation41.AnimationId = "http://www.roblox.com/asset/?id=180436334"
		StringValue42.Name = "toolnone"
		StringValue42.Parent = LocalScript28
		Animation43.Name = "ToolNoneAnim"
		Animation43.Parent = StringValue42
		Animation43.AnimationId = "http://www.roblox.com/asset/?id=182393478"
		StringValue44.Name = "fall"
		StringValue44.Parent = LocalScript28
		Animation45.Name = "FallAnim"
		Animation45.Parent = StringValue44
		Animation45.AnimationId = "http://www.roblox.com/asset/?id=180436148"
		StringValue46.Name = "sit"
		StringValue46.Parent = LocalScript28
		Animation47.Name = "SitAnim"
		Animation47.Parent = StringValue46
		Animation47.AnimationId = "http://www.roblox.com/asset/?id=178130996"
		NumberValue48.Name = "ScaleDampeningPercent"
		NumberValue48.Parent = LocalScript28
		NumberValue48.Value = 1
		BodyColors49.Parent = Model0
		BodyColors49.HeadColor = BrickColor.new("Brick yellow")
		BodyColors49.HeadColor3 = Color3.new(0.843137, 0.772549, 0.603922)
		BodyColors49.LeftArmColor = BrickColor.new("Brick yellow")
		BodyColors49.LeftArmColor3 = Color3.new(0.843137, 0.772549, 0.603922)
		BodyColors49.LeftLegColor = BrickColor.new("Brick yellow")
		BodyColors49.LeftLegColor3 = Color3.new(0.843137, 0.772549, 0.603922)
		BodyColors49.RightArmColor = BrickColor.new("Brick yellow")
		BodyColors49.RightArmColor3 = Color3.new(0.843137, 0.772549, 0.603922)
		BodyColors49.RightLegColor = BrickColor.new("Brick yellow")
		BodyColors49.RightLegColor3 = Color3.new(0.843137, 0.772549, 0.603922)
		BodyColors49.TorsoColor = BrickColor.new("Brick yellow")
		BodyColors49.TorsoColor3 = Color3.new(0.843137, 0.772549, 0.603922)
		for i, v in pairs(mas:GetChildren()) do
		    fakechar = v
			v.Parent = parentt
			pcall(function() v:MakeJoints() end)
		end
		mas:Destroy()
		for i, v in pairs(cors) do
			spawn(function()
				pcall(v)
			end)
		end
	end
	return fakechar
end

return rig
