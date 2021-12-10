if(!md){
	var min_dx = global.view_x;
	var max_dx = global.view_x+sprite_get_width(spr_back);
	if(mouse_x==clamp(mouse_x,min_dx,max_dx) and
	mouse_y==clamp(mouse_y,global.view_y_2-sprite_get_height(spr_back),global.view_y_2)){
		instance_destroy()
		exit;
	}
	min_dx = min_dx+sprite_get_width(spr_back);
	max_dx = max_dx+sprite_get_width(spr_sort_cnt);
	if(mouse_x==clamp(mouse_x,min_dx,max_dx) and
	mouse_y==clamp(mouse_y,global.view_y_2-sprite_get_height(spr_sort_cnt),global.view_y_2)){
		arr_ind_to_sort = 3;
		ind_sort_cnt = !ind_sort_cnt;
		sort_napr = ind_sort_cnt;
		smeschenie_sortirovki= [10,0,0];
		event_user(1);
	}
	min_dx = min_dx+sprite_get_width(spr_sort_cnt);
	max_dx = max_dx+sprite_get_width(spr_sort_damage);
	if(mouse_x==clamp(mouse_x,min_dx,max_dx) and
	mouse_y==clamp(mouse_y,global.view_y_2-sprite_get_height(spr_sort_damage),global.view_y_2)){
		arr_ind_to_sort = 6;
		ind_sort_dmg = !ind_sort_dmg;
		sort_napr = ind_sort_dmg;
		smeschenie_sortirovki= [0,10,0];
		event_user(1);
	}
	min_dx = min_dx+sprite_get_width(spr_sort_damage);
	max_dx = max_dx+sprite_get_width(spr_sort_rare);
	if(mouse_x==clamp(mouse_x,min_dx,max_dx) and
	mouse_y==clamp(mouse_y,global.view_y_2-sprite_get_height(spr_sort_rare),global.view_y_2)){
		arr_ind_to_sort = 4;
		ind_sort_rare = !ind_sort_rare;
		sort_napr = ind_sort_rare;
		smeschenie_sortirovki= [0,0,10];
		event_user(1);
	}
	md=true;
	pre_pos = [mouse_x,mouse_y];
	mdx = mouse_x;
	mdy = mouse_y;
	alarm[0]=5;
}