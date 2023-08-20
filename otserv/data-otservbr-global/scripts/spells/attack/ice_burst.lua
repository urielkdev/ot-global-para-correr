local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICEATTACK)
combat:setArea(createCombatArea(AREA_RING1_BURST3))

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 5) + (maglevel * 7)
	local max = (level / 5) + (maglevel * 10.5)
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	if not creature or not creature:isPlayer() then
		return false
	end

	local grade = creature:upgradeSpellsWORD("Twin Burst")
	if grade == WHEEL_GRADE_NONE then
		creature:sendCancelMessage("You cannot cast this spell")
		creature:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	end

	local cooldown = 0
	if grade >= WHEEL_GRADE_MAX then
		cooldown = 24
	elseif grade >= WHEEL_GRADE_UPGRADED then
		cooldown = 28
	elseif grade >= WHEEL_GRADE_REGULAR then
		cooldown = 32
	end

	var.instantName = "Twin Burst"
	if combat:execute(creature, var) then
		-- Ice cooldown
		local condition1 = Condition(CONDITION_SPELLCOOLDOWN, CONDITIONID_DEFAULT, 262)
		condition1:setTicks((cooldown * 1000)/configManager.getFloat(configKeys.RATE_SPELL_COOLDOWN))
		creature:addCondition(condition1)
		-- Earth cooldown
		local condition2 = Condition(CONDITION_SPELLCOOLDOWN, CONDITIONID_DEFAULT, 263)
		condition2:setTicks((cooldown * 1000)/configManager.getFloat(configKeys.RATE_SPELL_COOLDOWN))
		creature:addCondition(condition2)
		return true
	end
	return false
end

spell:group("attack")
spell:id(262)
spell:name("Ice Burst")
spell:words("exevo ulus frigo")
spell:level(1)
spell:mana(170)
spell:isPremium(true)
spell:cooldown(1000) -- Cooldown is calculated on the casting
spell:groupCooldown(2 * 1000)
spell:needLearn(true)
spell:vocation("druid;true", "elder druid;true")
spell:register()
