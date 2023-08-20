local config = {
	boss = {
		name = "Goshnar's Hatred",
		position = Position(33744, 31599, 14)
	},
	requiredLevel = 250,
	timeToFightAgain = 20 * 60 * 60,
	timeToDefeatBoss = 20 * 60,
	playerPositions = {
		{pos = Position(33773, 31601, 14), teleport = Position(33743, 31604, 14), effect = CONST_ME_TELEPORT},
		{pos = Position(33774, 31601, 14), teleport = Position(33743, 31604, 14), effect = CONST_ME_TELEPORT},
		{pos = Position(33775, 31601, 14), teleport = Position(33743, 31604, 14), effect = CONST_ME_TELEPORT},
		{pos = Position(33776, 31601, 14), teleport = Position(33743, 31604, 14), effect = CONST_ME_TELEPORT},
		{pos = Position(33777, 31601, 14), teleport = Position(33743, 31604, 14), effect = CONST_ME_TELEPORT}
	},
	specPos = {
		from = Position(33735, 31592, 14),
		to = Position(33751, 31606, 14)
	},
	exit = Position(33621, 31427, 10),
	storage = Storage.Quest.U12_40.SoulWar.GoshnarHatredTimer
}

local goshnarsHatredLever = Action()
function goshnarsHatredLever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	return CreateDefaultLeverBoss(player, config)
end

goshnarsHatredLever:position({x = 33772, y = 31601, z = 14})
goshnarsHatredLever:register()