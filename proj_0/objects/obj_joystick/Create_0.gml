event_inherited();
md = false;
pos_md = undefined;
used_kb = false;
var surf = surface_create(700,700);
surface_set_target(surf);
draw_clear_alpha(c_white,0);
draw_circle_color(350,350,350,c_white,c_white,0);
surface_reset_target();
sprite_index = sprite_create_from_surface(surf,0,0,700,700,0,0,350,350);
//mask_index = sprite_index;
sprite_collision_mask(sprite_index,0,1,0,0,0,0,bboxkind_precise,0);
surface_free(surf);
depth = -1000;
move = false;