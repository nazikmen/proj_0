#define _text_to_sprite
if(argument_count<2) return -1;
var t=argument[0];
var size=argument[1];
var style=0;
var mwidth=0;
if(argument_count>2)style=argument[2];
if(argument_count>3)mwidth=argument[3];
if(mwidth<0)mwidth=0;
if(os_type==os_windows){
	TextRender_wcreate(t,size,style,mwidth);
	var w=TextRender_wgetWidth();
	var h=TextRender_wgetHeight();
	var sur=surface_create(w,h);

	var buf=buffer_create(w*h*4,buffer_grow,1);
	buffer_get_surface(buf,sur,0);
	var pr=buffer_get_address(buf);
	pr=real(pr);
	TextRender_wmake(string(pr));
	buffer_set_surface(buf,sur,0);
	buffer_delete(buf);
}else{
	TextRender_create(t,size,style,mwidth);
	var w=TextRender_getWidth();
	var h=TextRender_getHeight();
	var sur=surface_create(w,h);
	TextRender_make();
}
var spr=sprite_create_from_surface(sur,0,0,w,h,false,false,0,0);

sprite_set_offset(spr,(sprite_get_bbox_right(spr)+sprite_get_bbox_left(spr))/2,(sprite_get_bbox_bottom(spr)+sprite_get_bbox_top(spr))/2);
surface_free(sur);
return spr;