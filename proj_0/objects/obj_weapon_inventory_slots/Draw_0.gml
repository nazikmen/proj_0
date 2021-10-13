/// @description Insert description here
// You can write your code in this editor
if (show_inv)
{
	draw_self();
	
	for (var i=0;i<ds_list_size(slots);i++)
	{
		var inst=slots[|i];
		draw_set_alpha(0.5);
		if inst.info!=noone
		draw_roundrect_color_ext(inst.xx-inst.sprite_width/2,inst.yy-inst.sprite_height/2,inst.xx+inst.sprite_width/2,inst.yy+inst.sprite_height/2,10,10,c_black,c_lime,false)
		else draw_roundrect_color_ext(inst.xx-inst.sprite_width/2,inst.yy-inst.sprite_height/2,inst.xx+inst.sprite_width/2,inst.yy+inst.sprite_height/2,10,10,c_black,c_gray,false)
		draw_set_alpha(1);
		
		draw_sprite_ext(inst.sprite_index,0,inst.xx,inst.yy,0.75,0.75,inst.image_angle,c_white,1);
	}

}