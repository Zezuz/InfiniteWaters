/// @description Insert description here
// You can write your code in this editor

var _ship_hp_percent = current_hp / max_hp

draw_self();
draw_set_halign(fa_center);
draw_set_font(MainFont);
draw_set_color(c_black);
draw_text(room_width/2, 50, "Player Kills: " + string(ship_confirmed_kills))


draw_set_color(c_yellow);
draw_text(room_width/4, 50, "Gold: " + string(gold))

draw_set_color(c_lime);
draw_text(room_width - 300, 50, "Damage: " + string(ship_damage));

draw_set_color(c_orange);
draw_text(room_width - 550, 50, "Atk Spd: " + string(ship_cd));

draw_set_color(c_black);
draw_text(room_width/4, 100, "Damage level: " + string(upgrade_level_dmg));

draw_set_color(c_black);
draw_text(room_width/4, 150,  "Atk Spd level: " + string(upgrade_level_atk_spd));

draw_set_color(c_black);
draw_text(room_width / 2, 100, "Wave: " + string(global.wave));

// Draw the background of the health bar
draw_set_color(c_black);
draw_rectangle(20, 20, 220, 30, false);  // Adjust based on your layout

// Draw the health bar based on the current health
draw_set_color(c_lime);
draw_rectangle(20, 20, 20 + 200 * _ship_hp_percent, 30, false);  // Adjust based on your layout




