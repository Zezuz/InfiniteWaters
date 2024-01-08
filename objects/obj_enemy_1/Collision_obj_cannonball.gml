/// @description Insert description here
// You can write your code in this editor

current_hp -= obj_player_ship.ship_damage;

 with other {
 instance_destroy();
 global.enemies_killed += 1;
 }
 
 if current_hp <= 0 {
	instance_destroy();	
	obj_player_ship.ship_confirmed_kills += 1;
	obj_player_ship.gold += 1;
	global.wave_kills += 1;
	global.enemies_killed += 1;
	
 }

