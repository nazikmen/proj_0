/// @description Insert description here
// You can write your code in this editor
enemy_type = 0;
path = noone;
visible = false;
//target_pos = [0,0];
can_dm = true;
target_obj = noone;
hp = irandom_range(50,100);

image_index = irandom(60);
enemy_start_data(image_index);
name = opt[?"name"];
hp = opt[?"hp"];
max_hp = opt[?"hp"];
spd = opt[?"speed"];
weapon_type = opt[?"weapon_type"];
weapon = opt[?"weapon"];
skill = opt[?"skill"];
skill_timeout = opt[?"skill_timeout"];
damage = opt[?"damage"];
dm_timeout = opt[?"dm_timeout"];
price = opt[?"price"];

alarm[0] = 1;
alarm[11]=10;