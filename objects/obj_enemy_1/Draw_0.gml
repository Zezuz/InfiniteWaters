/// @description Insert description here
// You can write your code in this editor
health_percent = current_hp / max_hp;

draw_self();

//draw_healthbar(x , y , x + 40, y - 40, health_percent, c_black, c_red, c_lime, 2, false , true);
// Draw the background of the health bar
draw_set_color(c_black);
draw_rectangle(x - 20, y - 30, x + 20, y - 25, false);  // Adjust based on your layout

// Draw the health bar based on the current health
draw_set_color(c_lime);
draw_rectangle(x - 20, y - 30, x - 20 + 40 * health_percent, y - 25, false);  // Adjust based on your layout