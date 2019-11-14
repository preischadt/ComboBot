local Class = require("YfritLib.Class")

local ComboBot =
	Class.new(
	{},
	function(self)
	end
)

function ComboBot:findBestCombo()
	local result = {
		value = 5,
		steps = {
			{
				action = "NormalSummon",
				card = "ShiranuiSolitaire"
			},
			{
				action = "Activation",
				card = "ChaosZone"
			},
			{
				action = "Effect",
				card = "ChaosZone",
				target = "Mezuki"
			}
		}
	}

	return result
end

return ComboBot
