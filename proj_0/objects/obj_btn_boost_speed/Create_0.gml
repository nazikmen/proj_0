event_inherited();

used = false;

var surf = surface_create(100,100);
surface_set_target(surf);
draw_clear_alpha(c_white,0);
draw_circle_color(50,50,50,c_white,c_white,0);
draw_triangle_color(49,24,64,64,34,64,c_gray,c_gray,c_gray,0);
draw_triangle_color(50,25,65,65,35,65,c_black,c_black,c_black,0);
surface_reset_target();
sprite_index = sprite_create_from_surface(surf,0,0,100,100,0,0,50,50);
surface_free(surf);
emit_bol = false;
psys = part_system_create();
particle = part_type_create();
part_type_shape(particle,pt_shape_line);
part_type_size(particle,1,0.10,-0.01,0);
part_type_scale(particle,1,1);
part_type_color2(particle,16711935,4259584);
part_type_alpha1(particle,0.20);
//part_type_speed(particle,4,6,0,0);
//part_type_direction(particle,0,2,0,0);
part_type_orientation(particle,0,0,0,0,1);
part_type_blend(particle,1);
part_type_life(particle,15,25);

emitter1 = part_emitter_create(psys);
