//var p = get_view_cam()
//x=clamp(lerp(x,p[0],0.2),x-15,x+15);
//y=clamp(lerp(y,p[1],0.2),y-15,y+15);

//if(point_distance(x,y,p[0],p[1])<150)instance_destroy();

x+=vec_x;
y+=vec_y;
vec_x=lerp(vec_x,0,0.05);
vec_y=lerp(vec_y,7,0.05);