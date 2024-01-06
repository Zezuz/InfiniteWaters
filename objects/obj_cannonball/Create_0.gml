/// @description Insert description here
// You can write your code in this editor

damage = 2;

speed = 10;

direction = point_direction(obj_player_ship.x, obj_player_ship.y, obj_enemy_1.x, obj_enemy_1.y);

if (x < 0 or x > room_width) || (y < 0 or y > room_height)
{
	instance_destroy();
	}
