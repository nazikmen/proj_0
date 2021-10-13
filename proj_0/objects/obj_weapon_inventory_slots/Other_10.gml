/// @description take weapon slots info
// You can write your code in this editor
if instance_exists(obj_weapon_slot)
with (obj_weapon_slot)
{
	other.slots[|inv_ind-1]=id;	
}

