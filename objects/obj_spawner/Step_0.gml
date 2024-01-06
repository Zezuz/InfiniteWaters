/// @description Insert description here
// You can write your code in this edit
enemy_ship_count = 0;

if not irandom(60){
	var _ang = random(360)
	var _rad = 700
	
	if enemy_ship_count < global.enemies_per_wave {
		
		var wave_multiplier = 1 + global.wave * 0.1;
		
		var enemies_to_spawn = floor(global.enemies_per_wave * wave_multiplier);
		
		var enemy_type;
		if global.wave <= 5 {
			enemy_type = "obj_enemy_1";
		} else {
			enemy_type = global.enemy_types[irandom(array_length(global.enemy_types)- 1)];
		}
		
		for (var i = 0; i <enemies_to_spawn; i++) {
			instance_create_depth(random(room_width), random(room_height), 0, enemy_types[i]);	
			enemy_ship_count += 1;
		}
	
	}
	
	if enemy_ship_count >= global.enemies_per_wave {
		enemy_ship_count = 0;
		global.wave += 1;
	}
}