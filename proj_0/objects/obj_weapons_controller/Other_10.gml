/// @description create_weapons
// You can write your code in this editor
for (var i=0;i<ds_list_size(list_weapons);i++)
{
	with (instance_create(1,1,obj_weapon))
	{
		ind=other.list_weapons[|i][0];
		dir=i*30;
		depth=obj_enemy.depth-1;
	}



}