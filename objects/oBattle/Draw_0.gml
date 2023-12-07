draw_sprite(battleBackground,0,x,y);

units = [];

//Make enemies
for (var i = 0; i < array-length(enemies); i++)
{
	enemyUnits[i] = instance_create_depth(x+250+(i*10), y+68+(i*20), depth-10, oBattleUnit, enemies[i]);
	
}