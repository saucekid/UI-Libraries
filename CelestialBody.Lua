local TWEEN = game:GetService("TweenService")
local RUNSERVICE = game:GetService("RunService")
local STEP = RUNSERVICE:IsClient() and RUNSERVICE.RenderStepped or RUNSERVICE.Heartbeat

local CelestialTween = {}
CelestialTween.__index = CelestialTween

function CelestialTween.new(origin, finish, tInfo)
	local self = setmetatable({}, CelestialTween)
	
	self._Origin = origin:Clone()
	self._Finish = finish:Clone()
	
	self._Start = self._Origin
	self._Result = self._Origin
	
	self._ActiveStep = nil
	
	self._nValue = Instance.new("NumberValue")
	self._tween = TWEEN:Create(self._nValue, tInfo, {Value = 1})
	
	self._tween.Completed:Connect(function()
		self:_Disconnect()
	end)
		
	self.TweenInfo = tInfo
	self.Completed = self._tween.Completed
	
	return self
end

function CelestialTween:_Disconnect()
	if (self._ActiveStep) then
		self._ActiveStep:Disconnect()
	end
	self._ActiveStep = nil
end

function CelestialTween:GetPlaybackState()
	return self._tween.PlaybackState
end

function CelestialTween:Pause()
	self._tween:Pause()
	self:_Disconnect()
end

function CelestialTween:Cancel()
	self._tween:Cancel()
	self._Start = self._Result
	self:_Disconnect()
end

function CelestialTween:Play()
	self:_Disconnect()
	self._ActiveStep = STEP:Connect(function(dt)
		self._Result = self._Start:Lerp(self._Finish, self._nValue.Value)
		self._Result:SetAsLighting()
	end)
	self._tween:Play()
end

function CelestialTween:Destroy()
	self:Cancel()
	self._nValue:Destroy()
	self._tween:Destroy()
	self.Completed = nil
end

--

local LIGHTING = game:GetService("Lighting")

local TAU = math.pi*2
local ZERO3 = Vector3.new(0, 0, 0)
local IDENTITY = CFrame.new()
local TIMEFORMAT = "%s:%02d:%02d"

local LONGITUDEFACTOR = {
	["Sun"] = -1,
	["Moon"] = 1
}

-- Private Functions

local function getRotationBetween(u, v, axis)
	local dot, uxv = u:Dot(v), u:Cross(v)
	if (dot < -0.99999) then return CFrame.fromAxisAngle(axis, math.pi) end
	return CFrame.new(0, 0, 0, uxv.x, uxv.y, uxv.z, 1 + dot)
end

-- Class

local CelestialBody = {}
CelestialBody.__index = CelestialBody

-- Public Static Functions

CelestialBody.Tween = CelestialTween.new

function CelestialBody.ToTimeOfDay(clockTime)
	local hour, minFrac = math.modf(clockTime)
	local min = minFrac * 60
	
	local minInt, secFrac = math.modf(min)
	local sec = secFrac * 60
	
	hour = tostring(hour)
	min = math.abs(min)
	sec = math.abs(sec)
	
	return TIMEFORMAT:format(hour, min, sec)
end

function CelestialBody.ToClockTime(timeOfDay)
	local hour, min, sec = unpack(string.split(timeOfDay, ":"))
	
	hour = tonumber(hour)
	min = tonumber(min) / 60
	sec = tonumber(sec) / 60 / 60
	
	return tonumber(("%.3f"):format(math.abs(hour) + min + sec)) * math.sign(hour)
end

-- Public Constructors

function CelestialBody.new(body, timeOfDay, geographicLatitude)
	local self = setmetatable({}, CelestialBody)
	
	self.Body = body
	self.TimeOfDay = timeOfDay
	self.GeographicLatitude = geographicLatitude
	
	return self
end

function CelestialBody.FromLighting(body)
	return CelestialBody.new(body, LIGHTING.TimeOfDay, LIGHTING.GeographicLatitude)
end

function CelestialBody.FromDirection(body, direction)
	local lf = LONGITUDEFACTOR[body]
	local lat = math.atan2(direction.z, math.sqrt(direction.x^2 + direction.y^2))
	local lon = math.atan2(direction.y * lf, direction.x * lf)
	
	local geoLat = (lat/TAU)*360 + 23.5
	local clockTime = (lon/TAU)*24 - 6
	
	return CelestialBody.new(body, CelestialBody.ToTimeOfDay(clockTime), geoLat)
end

-- Public Methods

function CelestialBody:SetAsLighting()
	LIGHTING.TimeOfDay = self.TimeOfDay
	LIGHTING.GeographicLatitude = self.GeographicLatitude
end

function CelestialBody:GetDirection()
	local geoLat = self.GeographicLatitude
	local clockTime = CelestialBody.ToClockTime(self.TimeOfDay)
	
	local lat = (geoLat - 23.5)/360 * TAU
	local lon = (clockTime + 6)/24 * TAU
	local dir = CFrame.fromEulerAnglesYXZ(lat, lon, 0).LookVector
	
	return Vector3.new(dir.z, dir.x, dir.y)
end

function CelestialBody:Lerp(cBody, alpha)
	alpha = math.clamp(alpha, 0, 1)
	
	local dA = self:GetDirection()
	local dB = cBody:GetDirection()
	
	local backupCF = CFrame.new(ZERO3, dA)
	local direction = IDENTITY:Lerp(getRotationBetween(dA, dB, backupCF.RightVector), alpha) * dA
	
	return CelestialBody.FromDirection(self.Body, direction)
end

function CelestialBody:Clone()
	return CelestialBody.new(
		self.Body,
		self.TimeOfDay,
		self.GeographicLatitude
	)
end

return CelestialBody
