function setup_view() {
	// setup_view(); ресайз игры в зависимости от расширения экрана
	global.ref_width = 512;
	global.ref_height = 1024;
	global.max_width = 1024;
	global.max_height = 1024;

	var cam = view_get_camera(0);
	var dw = window_get_width();
	var dh = window_get_height();
	if(dh < dw) {
		var v_dh = dh
		dh = dw
		dw = v_dh
	}
	if(dw<1||dh<1)return 0

	var ref_ratio = global.ref_width / global.ref_height;
	var max_ratio = global.max_width / global.ref_height; // соотношение если самый широкий экран
	var min_ratio = global.ref_width / global.max_height; // 
	var curr_ratio = clamp(dw/dh,min_ratio,max_ratio);
	var game_width = global.ref_width, game_height = global.ref_height;
	var curr_dw = dw, curr_dh = dh;
	var game_dx = 0, game_dy = 0;

	if(curr_ratio > ref_ratio) { // экран шире чем reference
		game_width = curr_ratio * game_height;
		curr_dw = curr_dh * curr_ratio;
		game_dx = (global.ref_width - game_width) / 2;
	} else { // экран выше
		game_height = game_width / curr_ratio;
		curr_dh = curr_dw / curr_ratio;
		game_dy = (global.ref_height - game_height) / 2;	
	}

	camera_set_view_pos(cam,game_dx,game_dy)
	camera_set_view_size(cam,game_width,game_height)
	view_set_wport(0,curr_dw); view_set_hport(0,curr_dh)
	if surface_exists(application_surface) surface_resize(application_surface,curr_dw,curr_dh)

	sd("Game width: "+string(game_width)+" Game height: "+string(game_height))
	sd("Current width: "+string(curr_dw)+" Current height: "+string(curr_dh))
	sd("View x: "+string(game_dx)+" View y: "+string(game_dy))

	global.game_width = game_width
	global.game_height = game_height
	global.view_x = game_dx
	global.view_y = game_dy
	global.view_x_2 = global.game_width+global.view_x
	global.view_y_2 = global.game_height+global.view_y
	global.display_w = curr_dw
	global.display_h = curr_dh
}
