/// @description Insert description here
// You can write your code in this editor
isAlive = true;
max_hp = 10;
current_hp = max_hp;
regen = 0.005;
regen_timer = 60;
rad = 500;
ship_cd = 3;
time = 0;
ship_confirmed_kills = 0;
gold = 1111100;
ship_damage = 2;
upgrade_level_dmg = 1;
upgrade_level_atk_spd = 1;
upgrade_level_health = 1;
upgrade_level_regen = 1;
upgrade_cost_dmg = 25;
upgrade_cost_atk_spd = 25;
upgrade_cost_health = 25;
upgrade_cost_regen = 25;


image_xscale = 0.5;
image_yscale = 0.5;


function upgradeDamage() {
	ship_damage  += (2 * upgrade_level_dmg);
	upgrade_level_dmg += 1;
	gold -= upgrade_cost_dmg
	
}
function upgradeAtkSpd() {
	ship_cd  -= (2 / power(2, upgrade_level_atk_spd));
	ship_cd = max(0, ship_cd)
	upgrade_level_atk_spd += 1;
	gold -= upgrade_cost_atk_spd;
	
}
function upgradeHealth() {
	max_hp += (5 + upgrade_level_health);
	upgrade_level_health += 1;
	gold -= upgrade_cost_health;
	
}
function upgradeRegen() {
	regen += (0.1 * upgrade_level_regen);
	upgrade_level_regen += 1;
	gold -= upgrade_cost_regen;
	
}