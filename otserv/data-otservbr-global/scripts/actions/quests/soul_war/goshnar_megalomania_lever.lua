local config = {
	boss = {
		name = "Goshnar's Megalomania",
		position = Position(33710, 31634, 14)
	},
	requiredLevel = 250,
	timeToFightAgain = 20 * 60 * 60,
	timeToDefeatBoss = 20 * 60,
	playerPositions = {
		{pos = Position(33676, 31634, 14), teleport = Position(33710, 31639, 14), effect = CONST_ME_TELEPORT},
		{pos = Position(33677, 31634, 14), teleport = Position(33710, 31639, 14), effect = CONST_ME_TELEPORT},
		{pos = Position(33678, 31634, 14), teleport = Position(33710, 31639, 14), effect = CONST_ME_TELEPORT},
		{pos = Position(33679, 31634, 14), teleport = Position(33710, 31639, 14), effect = CONST_ME_TELEPORT},
		{pos = Position(33680, 31634, 14), teleport = Position(33710, 31639, 14), effect = CONST_ME_TELEPORT}
	},
	specPos = {
		from = Position(33701, 31626, 14),
		to = Position(33719, 31642, 14)
	},
	exit = Position(33621, 31427, 10),
	storage = Storage.Quest.U12_40.SoulWar.GoshnarMegalomaniaTimer
}

local goshnarsMegalomaniaLever = Action()
function goshnarsMegalomaniaLever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	return CreateDefaultLeverBoss(player, config)
end

goshnarsMegalomaniaLever:position({x = 33675, y = 31634, z = 14})
goshnarsMegalomaniaLever:register()