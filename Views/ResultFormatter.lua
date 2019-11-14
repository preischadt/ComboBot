local Class = require("YfritLib.Class")

local ResultFormatter =
	Class.new(
	{},
	function(self, result)
		self.result = result
	end
)

function ResultFormatter:formatResult()
	self.output = ""
	local result = self.result

	self:_print("Combo Value: ", result.value)
	self:_print("Combo Steps:")
	for _, step in ipairs(result.steps) do
		self:_print("", step.action, step.card, step.target)
	end

	return self.output
end

function ResultFormatter:_print(...)
	for _, text in ipairs({...}) do
		self.output = self.output .. text .. "\t"
	end
	self.output = self.output .. "\n"
end

return ResultFormatter
