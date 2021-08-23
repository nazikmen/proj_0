setup_view();
instance_create(room_width/2,room_height/2,obj_rm_start);
instance_create(-512,288,obj_mt_pool);

if(global.dev_mode)instance_create(0,0,obj_dev);