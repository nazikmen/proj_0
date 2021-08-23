/// @description load






enemy_start_data(image_index);
name = opt[?"name"];
hp = opt[?"hp"]+(round(obj_player_sign.damage*0.3)+round(obj_player_sign.max_hp*0.1))*round(obj_sing_controller.wv*0.3);
max_hp = hp;
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