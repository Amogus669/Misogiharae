//Action library
global.actionLibrary =
{
	attack :
	{	
		name : "Attack",
		description :"{0} attacks!",
		subMenu : -1,
		targetedRequired : true,
		targetEnemyByDefault : true,
		targetALL : MODE.NEVER,
		userAnimation : "attack",
		effectSprite : sAttackBonk,
		effectOnTarget : MODE.ALWAYS,
		func : function(_user, _targets)
		{
			var _damage = ceil(_user.strength + random_range(-_user.strength * 0.25,_user.strength *0.25));
			BattleChangeHP(_targets[0], -_damage, 0);
		}
	}
}

enum MODE
{
	NEVER = 0,
	ALWAYS = 1,
	VARIES = 2,
}
	
//Party data
global.party = 
[
	{
		name: "Lulu",
		hp: 89,
		hpMax: 89,
		mp: 10,
		mpMax: 15,
		strength: 6,
		sprites : { idle: sLuluIdle, attack: sLuluAttack, defend: sLuluDefend, down: sLuluDown},
		actions : []
	}
	,
	{
		name: "Questy",
		hp: 18,
		hpMax: 44,
		mp: 20,
		mpMax: 30,
		strength: 4,
		sprites : { idle: sQuestyIdle, attack: sQuestyCast, cast: sQuestyCast, down: sQuestyDown},
		actions : []
	}
]

//Enemy Data
global.enemies =
{
	slimeG: 
	{
		name: "Slime",
		hp: 30,
		hpMax: 30,
		mp: 0,
		mpMax: 0,
		strength: 5,
		sprites: { idle: sSlime, attack: sSlimeAttack},
		actions: [global.actionLibrary.attack],
		xpValue : 15,
		AIscript : function()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	bat: 
	{
		name: "Bat",
		hp: 15,
		hpMax: 15,
		mp: 0,
		mpMax: 0,
		strength: 4,
		sprites: { idle: sBat, attack: sBatAttack},
		actions: [global.actionLibrary.attack],
		xpValue : 18,
		AIscript : function()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
}





