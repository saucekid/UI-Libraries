local Highlight = {}
Highlight.__index = Highlight

function Highlight.create(Object, Props)
	assert(typeof(Object) == "Instance", "Instance must be an Instance")
	assert(type(Props) == "table", "Props must be a table")

	local newHighlight = Instance.new("Highlight")
	newHighlight.Parent = Object

	for Index, Property in next, Props do
		newHighlight[Index] = Property
	end

	return setmetatable({
		Connections = {},
		Object = newHighlight,
	}, Highlight)
end

function Highlight:Destroy()
	return self.Object:Destroy()
end

function Highlight:Edit(Props)
	for Index, Property in next, Props do
		self.Object[Index] = Property
	end
end

function Highlight:AddConnection(Event)
	self.Connections[#self.Connections + 1] = Event
end

function Highlight:Cleanup()
	for _, Connection in next, self.Connections do
		Connection:Disconnect()
	end
end

return Highlight
