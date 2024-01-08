/// @description Insert description here
// You can write your code in this editor


current_hp -= 1;

 with other {
 instance_destroy();
 global.enemies_killed += 1;
 }
 
 if obj_player_ship.current_hp <= 0 {
	isAlive = false;
	show_message("Game Over!")
	
 }