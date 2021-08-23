/// @description spawn
with(instance_create(x,y,obj_sign_enemy)){
	if(other.enemy_id != -1)image_index = other.enemy_id;
}
