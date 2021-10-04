/// @description Insert description here
// You can write your code in this editor
if dir<=0
dir=360;
else
dir-=global.round_speed;
x  = _x + cos(degtorad(-dir)) * r;
y = _y + sin(degtorad(-dir)) * r;
image_angle=dir;