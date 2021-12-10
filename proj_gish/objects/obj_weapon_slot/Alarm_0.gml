/// @description auto dmg
// You can write your code in this editor
if ind==-1 exit;

if(point_distance(x,y,_x,_y)>100){
	busy=true;
}
//alarm[0]=attack_spd;
alarm[0]=irandom_range(10,90);