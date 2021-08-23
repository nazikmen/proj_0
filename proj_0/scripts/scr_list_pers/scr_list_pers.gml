// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_list_pers(){
	if(functional_var == ">"){
		with(obj_pers_preview){
			if(pers_selected!=ds_list_size(text_pers_list)-1)pers_selected++;
			else pers_selected = 0;
			global.choosed_char = pers_selected;
			image_index = global.choosed_char;
		}
	}
	
	if(functional_var == "<"){
		with(obj_pers_preview){
			if(pers_selected!=0)pers_selected--;
			else pers_selected = ds_list_size(text_pers_list)-1;
			global.choosed_char = pers_selected;
			image_index = global.choosed_char;
		}
	}
}