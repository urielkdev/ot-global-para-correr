local config = {
	boss = {
		name = "The Fear Feaster",
		position = Position(33711, 31469, 14)
	},
	requiredLevel = 250,
	timeToFightAgain = 20 * 60 * 60,
	timeToDefeatBoss = 20 * 60,
	playerPositions = {
		{pos = Position(33734, 31471, 14), teleport = Position(33711, 31476, 14), effect = CONST_ME_TELEPORT},
		{pos = Position(33735, 31471, 14), teleport = Position(33711, 31476, 14), effect = CONST_ME_TELEPORT},
		{pos = Position(33736, 31471, 14), teleport = Position(33711, 31476, 14), effect = CONST_ME_TELEPORT},
		{pos = Position(33737, 31471, 14), teleport = Position(33711, 31476, 14), effect = CONST_ME_TELEPORT},
		{pos = Position(33738, 31471, 14), teleport = Position(33711, 31476, 14), effect = CONST_ME_TELEPORT}
	},
	specPos = {
		from = Position(33705, 31463, 14),
		to = Position(33719, 31477, 14)
	},
	exit = Position(33609, 31499, 10),
	storage = Storage.Quest.U12_30.FeasterOfSouls.FearFeasterTimer
}

local fearFeasterLever = Action()
function fearFeasterLever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	return CreateDefaultLeverBoss(player, config)
end

fearFeasterLever:position({x = 33733, y = 31471, z = 14})
fearFeasterLever:register()