/// @description Insert description here
// You can write your code in this editor
if(path_exists(path))path_delete(path);
busy=false;
flag=false;
dmg = power(10,irandom_range(1,2));
scr_make_damage(dmg,1);