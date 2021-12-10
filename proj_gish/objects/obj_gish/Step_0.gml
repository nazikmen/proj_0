/// @description Insert description here
// You can write your code in this editor

//for(var i=0;i<array_length(lapa_points);i++){
//	lapa_points[i][0][0]
//}
var cikl = function(){
	for(var i=0;i<array_length(lapa_points);i++){
		var l = lapa_points[i]
		var p1 = l[0];
		var p2 = l[1];
		var dist = point_distance(p1[0]+x_plus,p1[1]+y_plus,p2[0],p2[1]);
		if(dist > radius*1.5){
			var r = radius;
			var dir = point_direction(x,y,p1[0],p1[1])/*+irandom_range(-((360/array_length(lapa_points))/2),((360/array_length(lapa_points))/2))*/;
			var xx  = x + cos(degtorad(dir)) * r;
			var yy = y + sin(degtorad(dir)) * r;
			lapa_points[i][1][0]=lerp(lapa_points[i][1][0],xx,0.1);
			lapa_points[i][1][1]=lerp(lapa_points[i][1][1],yy,0.1);
		}
		if(dist < radius+10){
			var r = radius*3;
			var dir = point_direction(x,y,p1[0],p1[1])/*+irandom_range(-((360/array_length(lapa_points))/2),((360/array_length(lapa_points))/2))*/;
			var xx  = x + cos(degtorad(-dir)) * r;
			var yy = y + sin(degtorad(-dir)) * r;
			lapa_points[i][1][0]=lerp(lapa_points[i][1][0],xx,0.1);
			lapa_points[i][1][1]=lerp(lapa_points[i][1][1],yy,0.1);
		}
	}
}

var sred_x = (lapa_points[0][1][0]+lapa_points[1][1][0]+lapa_points[2][1][0]+lapa_points[3][1][0])/4;
var sred_y = (lapa_points[0][1][1]+lapa_points[1][1][1]+lapa_points[2][1][1]+lapa_points[3][1][1])/4;

x = sred_x;
y = sred_y;


lapa_points[0][0][0] = x-10;
lapa_points[0][0][1] = y;
lapa_points[1][0][0] = x;
lapa_points[1][0][1] = y-10;
lapa_points[2][0][0] = x+10;
lapa_points[2][0][1] = y;
lapa_points[3][0][0] = x;
lapa_points[3][0][1] = y+10;


if(keyboard_check(ord("W"))){
	y_plus = lerp(y_plus,-radius,0.1);
	cikl();
}
else if(keyboard_check(ord("S"))){
	y_plus = lerp(y_plus,radius,0.1);
	cikl();
}
else y_plus = lerp(y_plus,0,0.1);


if(keyboard_check(ord("A"))){
	x_plus = lerp(x_plus,-radius,0.1);
	cikl();
}
else if(keyboard_check(ord("D"))){
	x_plus = lerp(x_plus,radius,0.1);
	cikl();
}
else x_plus = lerp(x_plus,0,0.1);


//x = lerp(x,x+x_plus,0.1);
//y = lerp(y,y+y_plus,0.1);