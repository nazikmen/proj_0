if(is_boss)timer--;

if(timer<=0){
	global.enemy_killed_buffer=0;
	global.enemy_killed_session++;
	instance_destroy();
	ins_enemy();
}