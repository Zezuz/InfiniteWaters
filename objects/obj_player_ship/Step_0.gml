/// @description Insert description here
// You can write your code in this editor

time += 0.1
upgrade_cost_dmg = 25 * (obj_player_ship.upgrade_level_dmg / 2);
upgrade_cost_atk_spd = 25 * (obj_player_ship.upgrade_level_atk_spd / 2);

if current_hp < max_hp {
	regen_timer -= 1;
	
	if regen_timer <= 0 {
		regen_timer = 60;	
	}
	
	current_hp = min(max_hp, current_hp + regen);
}


if instance_exists(obj_enemy_1){
		if time >= ship_cd {
			
			if point_distance(obj_enemy_1.x, obj_enemy_1.y, obj_player_ship.x, obj_player_ship.y) < rad {
		
				instance_create_depth(x, y, 0, obj_cannonball)
	
		}
		time = 0;
	}
}

if (!isAlive) {
	game_restart()	
}