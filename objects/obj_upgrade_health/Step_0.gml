/// @description Insert description here
// You can write your code in this editor

//upgrade functionality?
if (mouse_check_button_pressed(mb_left)) {
	
	if(point_in_rectangle(mouse_x, mouse_y,x, y, x + 200, y + 200)) {
		if (obj_player_ship.gold >= obj_player_ship.upgrade_cost_health) {
			with obj_player_ship upgradeHealth()
		}
	}
}
