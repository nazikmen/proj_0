/// @description Insert description here
// You can write your code in this editor
if show_inv
for (var i=0;i<ds_list_size(slots);i++)
{
	var inst=slots[|i];
	if mouse_x>inst.xx-30 && mouse_y>inst.yy-30 && mouse_x<inst.xx+30 && mouse_y<inst.yy+30
	sd(inst.info);
}