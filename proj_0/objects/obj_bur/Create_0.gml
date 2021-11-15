x-=x%64;
y-=y%64;
image_index=0;
need_x=x;
need_y=y;
spd = 10;
finished_step=true;
drill_frame = 0;
alarm[0]=10;
wave_rad = 0;
wave_act = false;
cam_sdvig = [0,0];
zoom=false;
zoomed = true;
//kislorod
kislorod = 300;//Уровень на который можно опустится
kislorod_alpha = 0;
kislorod_napr = 0;
pos_kislorod_bar = 0;

alarm[1]=1;

part_sys = part_system_create();
part_type_smoke = part_type_create();
part_type_shape(part_type_smoke,pt_shape_smoke);
part_type_size(part_type_smoke,0.10,0.10,0.01,0.01);
part_type_scale(part_type_smoke,3,3);
part_type_color1(part_type_smoke,c_gray);
part_type_alpha1(part_type_smoke,0.20);
part_type_speed(part_type_smoke,3,5,0,0);
part_type_direction(part_type_smoke,0,359,0,0);
part_type_gravity(part_type_smoke,0,270);
part_type_orientation(part_type_smoke,0,0,0,0,1);
part_type_blend(part_type_smoke,1);
part_type_life(part_type_smoke,5,15);
part_system_depth(part_sys,depth-1);

smoke_emit = part_emitter_create(part_sys);


part_type_iskr = part_type_create();
part_type_shape(part_type_iskr,pt_shape_line);
part_type_size(part_type_iskr,0.10,0.05,0.01,0.01);
part_type_scale(part_type_iskr,1,1);
part_type_color2(part_type_iskr,c_red,c_yellow);
part_type_alpha1(part_type_iskr,0.70);
part_type_speed(part_type_iskr,3,7,0,0);
part_type_direction(part_type_iskr,0,359,0,0);
part_type_gravity(part_type_iskr,0,270);
part_type_orientation(part_type_iskr,0,0,0,0,1);
part_type_blend(part_type_iskr,1);
part_type_life(part_type_iskr,5,15);

iskr_emit = part_emitter_create(part_sys);