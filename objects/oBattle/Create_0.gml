instance_deactivate_all(true);

units = [];
turn = 0;
unitTurnOrder = [];
unitRenderOrder = [];

//Make enemies
for (var i = 0; i < array_length(enemies); i++)
{
	enemyUnits[i] = instance_create_depth(x+250+(i*10), y+68+(i*20), depth-10, oBattleUnitEnemy, enemies[i]);
	array_push(units, enemyUnits[i]);
}

//Make party
for (var i = 0; i < array_length(global.party); i++)
{
	partyUnits[i] = instance_create_depth(x+70+(i*10), y+68+(i*15), depth-10, oBattleUnitPC, global.party[i]);
	array_push(units, partyUnits[i]);
}

//Shuffle turn order
unitTurnOrder = array_shuffle(units)

//Get render order
RefreshRenderOrder = function()
{
		unitRenderOrder = [];
		array_copy(unitRenderOrder,0,units,0,array_length(units));
		array_sort(unitRenderOrder,function(_1, _2)
		{
			return _1.y - _2.y;
		});
}
RefreshRenderOrder();