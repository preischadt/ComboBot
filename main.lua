local ComboBot = require("Controllers.ComboBot")
local BotView = require("Views.BotView")

local deck = require("Configs.Deck")

local steps, value = ComboBot.getBestCombo(deck)
BotView.showCombo(steps, value)
