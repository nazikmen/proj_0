/// @description Insert description here
// You can write your code in this editor
if dir<=0
dir=360;
else
dir-=global.round_speed;
xx  = _x + cos(degtorad(-dir)) * r;
yy = _y + sin(degtorad(-dir)) * r;
if !busy
{
	if(!path_exists(path))
	{
		x=lerp(x,xx,0.1);
		if(abs(x-xx)<2)x=xx;
		y=lerp(y,yy,0.1);
		if(abs(y-yy)<2)y=yy;
	}
}else
{
	//if(point_distance(x,y,_x,_y)>25){
		if !flag
		{
			path=path_add();
			path_add_point(path,x,y,10);
			path_add_point(path,_x,_y,10);
			path_set_closed(path,false);
			path_start(path,80,path_action_stop,false);
			flag=true;
		}
	//}
}
image_angle=dir;