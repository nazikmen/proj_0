// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_upgrade_depth(){
	if(global.coins>=price){
		global.coins-=price;
		obj_bur.kislorod+=round(obj_bur.kislorod + obj_bur.kislorod*0.27);
		bur_save();
	}
}