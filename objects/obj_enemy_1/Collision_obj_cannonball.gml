/// @description Insert description here
// You can write your code in this editor

current_hp -= obj_player_ship.ship_damage;

 with other {
 instance_destroy();
 }
 
 if current_hp <= 0 {
	instance_destroy();	
	obj_player_ship.ship_confirmed_kills += 1;
	obj_player_ship.gold += 1;
	global.wave_kills += 1;
	if ( obj_player_ship.ship_confirmed_kills % 10 == 0) {
		global.wave += 1
	}
 }

