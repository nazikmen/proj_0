// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_upgrade_depth(){
	var kisl = 300;
	with(obj_bur){
		kisl = kislorod;
	}
	var price = get_price_upgrade_depth(kisl);
	if(global.coins>=price){
		global.coins-=price;
		with(obj_bur){
			kislorod+=round(kislorod*0.31);
		}
		bur_save();
		with(obj_dlg)event_user(0);
	}
}