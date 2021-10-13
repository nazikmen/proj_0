/// @description create_weapons
// You can write your code in this editor



if instance_exists(obj_weapon_slot)
instance_destroy(obj_weapon_slot);

if !ds_list_empty(list_weapons)
for (var i=0;i<ds_list_size(list_weapons);i++)
{
	with (instance_create(1,1,obj_weapon_slot))
	{
		info=other.list_weapons[|i];
		ind=other.list_weapons[|i][1];
		inv_ind=instance_number(obj_weapon_slot);
		dir=i*30;
		depth=obj_enemy.depth-1;
		sprite_index=load_sprite("spr_weapon"+string(ind),"weapons/weapons_"+string(ind)+".png");	
	}
}

instance_create(1,1,obj_weapon_inventory_slots)