/// @description load
x=256;
y=512;
scr=instance_create(x,y,obj_screenlock);
scr.par_obj = id;
scr.ue = 0;
depth=scr.depth-1;
get_dialog(name);
cls=instance_create(bbox_right,bbox_top,obj_close_dlg);
cls.depth=depth-2;
rmk = instance_create(x,y,obj_ramka);
rmk.par_obj = id;
rmk.depth = depth-1;