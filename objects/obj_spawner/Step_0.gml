/// @description Insert description here
// You can write your code in this edit
//enemy_ship_count = 0;

//if not irandom(60){
//	var _ang = random(360)
//	var _rad = 700
	
	// Check if there are no enemies left
if (global.enemies_spawned <= global.enemies_per_wave) {
	show_debug_message("Condition Met")
    // Increment the wave and reset the count

    global.enemies_per_wave = 10 + (global.wave - 1) * 2;
	
    // Spawn exactly 10 enemies for the new wave
    for (var i = 0; i < min(global.enemies_per_wave, 10); i++) {
		show_debug_message("Spawning enemy: " + string(i + 1));
        var wave_multiplier = 1 + global.wave * 0.1;

        var enemy_type;
        if (global.wave <= 5) {
            enemy_type = obj_enemy_1;
        } else {
            // Accessing array elements
            enemy_type = global.enemy_types[ irandom(array_length(global.enemy_types) - 1)];
        }

        instance_create_depth(random(room_width), random(room_height), 0, enemy_type);
        global.enemies_spawned += 1;
		
		
    }
	show_debug_message("exiting spawning logic")
}

if (global.enemies_killed >= global.enemies_per_wave) {
			//global.wave_kills = 0;
			global.enemies_spawned = 0;
			 global.wave += 1;
			 global.enemies_killed = 0;
			
		}
