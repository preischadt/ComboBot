insulate(
	"#Main",
	function()
		it(
			"Main",
			function()
				local ComboBot = require("Controllers.ComboBot")
				local ResultFormatter = require("Views.ResultFormatter")

				local deck = require("Configs.Deck")

				local comboBot = ComboBot:new(deck)
				local result = comboBot:findBestCombo()

				local resultFormatter = ResultFormatter:new(result)
				local formattedResult = resultFormatter:formatResult()

				print(formattedResult)
			end
		)
	end
)
