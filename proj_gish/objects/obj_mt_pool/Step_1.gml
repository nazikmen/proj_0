for(var ii=0;ii<5;ii++){
    mt_left_pressed[ii]=device_mouse_check_button_pressed(ii,mb_left);
    mt_left_released[ii]=device_mouse_check_button_released(ii,mb_left);
}
if(mt_singleMode){
    var mt_hitDepth=4294967296;
    var mt_hitId=noone;
    var mt_hitDev=-1;

	if(keyboard_check_pressed(vk_backspace)){
		keyboard_clear(vk_backspace);
		var bk_dep=99999,bk_hit=noone;
		with(all){
			if(variable_instance_exists(id,"track_back_key")){
				if(track_back_key){
					if(bk_dep>depth){
						bk_dep=depth;	
						bk_hit=id;
					}
				}
			}
		}
		with(bk_hit)event_perform(ev_keypress,vk_backspace);
	}
    with(obj_mt){
        if(!mt_enable)continue;
        for(var kk=0;kk<5;kk++){
            if(mt_global){
                for(var kn=0;kn<5;kn++){
                    if(other.mt_left_pressed[kn]){
                        mt_globalDevId=kn;
                        mt_mouse_x=device_mouse_x(kn);
                        mt_mouse_y=device_mouse_y(kn);
                        event_perform(ev_mouse,ev_global_left_press);
                    }
                    if(other.mt_left_released[kn]){
                        mt_mouse_x=device_mouse_x(kn);
                        mt_mouse_y=device_mouse_y(kn);
                        event_perform(ev_mouse,ev_global_left_release);
                    }
                    if(kn==mt_globalDevId){
                        mt_mouse_x=device_mouse_x(kn);
                        mt_mouse_y=device_mouse_y(kn);
                    }
                }
            }
            var cp=collision_point(device_mouse_x(kk),device_mouse_y(kk),id,mt_prec,false);
            if(mt_devId_p==kk){
                mt_mouse_xprev=mt_mouse_x;
                mt_mouse_yprev=mt_mouse_y;
                mt_mouse_x=device_mouse_x(kk);
                mt_mouse_y=device_mouse_y(kk);
                if(cp)mt_over=true;
                else mt_over=false;
            }
            if(other.mt_left_pressed[kk]&&cp){
                if(depth<mt_hitDepth){
                    mt_hitDepth=depth;
                    mt_hitId=id;
                    mt_hitDev=kk;
                }
            }
            if(other.mt_left_released[kk]&&(mt_devId_p==kk)){
                if(cp)event_perform(ev_mouse,ev_left_release);
                event_perform(ev_mouse,ev_global_left_release);
                mt_over=false;
                mt_devId_p=-1;
            }
        }
    }
    with(mt_hitId){
        mt_devId_p=mt_hitDev;
        mt_mouse_xprev=mt_mouse_x;
        mt_mouse_yprev=mt_mouse_y;
        mt_mouse_x=device_mouse_x(mt_hitDev);
        mt_mouse_y=device_mouse_y(mt_hitDev);
        mt_over=true;
        event_perform(ev_mouse,ev_left_press);
    }
}else{
    mt_bypass=false;
    with(obj_mt){
        if(other.mt_bypass)break;
        if(!mt_enable)continue;
        for(var kk=0;kk<5;kk++){
            var cp=collision_point(device_mouse_x(kk),device_mouse_y(kk),id,mt_prec,false);
            if(mt_devId_p==kk){
                mt_mouse_xprev=mt_mouse_x;
                mt_mouse_yprev=mt_mouse_y;
                mt_mouse_x=device_mouse_x(kk);
                mt_mouse_y=device_mouse_y(kk);
                if(cp)mt_over=true;
                else mt_over=false;
            }
            if(other.mt_left_pressed[kk]&&cp){
                mt_devId_p=kk;
                mt_mouse_xprev=mt_mouse_x;
                mt_mouse_yprev=mt_mouse_y;
                mt_mouse_x=device_mouse_x(kk);
                mt_mouse_y=device_mouse_y(kk);
                mt_over=true;
                event_perform(ev_mouse,ev_left_press);
            }
            if(other.mt_left_released[kk]&&(mt_devId_p==kk)){
                if(cp)event_perform(ev_mouse,ev_left_release);
                event_perform(ev_mouse,ev_global_left_release);
                mt_over=false;
                mt_devId_p=-1;
            }
        }
    }
}
mouse_clear(mb_left);

