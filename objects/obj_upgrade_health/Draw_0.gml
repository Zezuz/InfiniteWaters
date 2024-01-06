/// @description Insert description here
// You can write your code in this editor

draw_set_font(littleFont);
draw_set_color(c_white);
draw_rectangle(x, y, x + 200, y + 200, true);
draw_text(x + 70, y, "Upgrade Health " + string((2 *obj_player_ship.upgrade_level_health)));
draw_text(x + 70, y + 70, "Cost " + string(obj_player_ship.upgrade_cost_health))

