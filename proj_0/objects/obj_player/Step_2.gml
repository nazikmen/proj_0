pos = [x,y];
if(!array_equals(pre_pos,pos)){
	rot = point_direction(pre_pos[0],pre_pos[1],pos[0],pos[1]);
	//image_angle = rot;
	
	if(rot == clamp(rot,0,45))tst_ind=0;
	if(rot == clamp(rot,46,90))tst_ind=1;
	if(rot == clamp(rot,90,135))tst_ind=2;
	if(rot == clamp(rot,136,180))tst_ind=3;
	if(rot == clamp(rot,180,225))tst_ind=4;
	if(rot == clamp(rot,226,270))tst_ind=5;
	if(rot == clamp(rot,271,315))tst_ind=6;
	if(rot == clamp(rot,316,360))tst_ind=7;
		
	switch(tst_ind){
		case 0: case 1:image_index = 3;break;	
		case 2: case 3:image_index = 1;break;	
		case 4: case 5:image_index = 2;break;	
		case 6: case 7:image_index = 0;break;	
	}
}