/// @description dmg 
// You can write your code in this editor
image_blend = c_red;
alarm[1]=2;
image_xscale = 2.9;
image_yscale = 2.9;
if(hp==0){
	instance_destroy()
	global.enemy_killed_session++;
	global.enemy_killed_buffer++;
	if(global.enemy_killed_buffer==10){
		global.enemy_killed_buffer=0;
		global.lvl++;
	}
	//global.damage++;
	ins_enemy();
}