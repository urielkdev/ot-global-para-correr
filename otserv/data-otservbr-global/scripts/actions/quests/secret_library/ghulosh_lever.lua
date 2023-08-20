local config = {
	boss = {
		name = "Ghulosh",
		position = Position(32756, 32720, 10)
	},
	requiredLevel = 250,
	timeToFightAgain = 20 * 60 * 60,
	timeToDefeatBoss = 20 * 60,
	playerPositions = {
		{pos = Position(32747, 32773, 10), teleport = Position(32756, 32729, 10), effect = CONST_ME_TELEPORT},
		{pos = Position(32748, 32773, 10), teleport = Position(32756, 32729, 10), effect = CONST_ME_TELEPORT},
		{pos = Position(32749, 32773, 10), teleport = Position(32756, 32729, 10), effect = CONST_ME_TELEPORT},
		{pos = Position(32750, 32773, 10), teleport = Position(32756, 32729, 10), effect = CONST_ME_TELEPORT},
		{pos = Position(32751, 32773, 10), teleport = Position(32756, 32729, 10), effect = CONST_ME_TELEPORT}
	},
	specPos = {
		from = Position(32748, 32713, 10),
		to = Position(32763, 32729, 10)
	},
	exit = Position(32660, 32713, 13),
	storage = Storage.Quest.U11_80.TheSecretLibrary.GhuloshTimer
}

local ghuloshLever = Action()
function ghuloshLever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	return CreateDefaultLeverBoss(player, config)
end

ghuloshLever:position({x = 32746, y = 32773, z = 10})
ghuloshLever:register()