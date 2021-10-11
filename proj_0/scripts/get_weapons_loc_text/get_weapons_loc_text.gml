// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_weapons_loc_text(key){
	if global.locale=="ru"
	switch(key)
	{
		case 100: return "Посох Короля Мильтов";	
		case 101: return "Изумрудная алебарда";	
		case 102: return "Посох огненного сердца";	
	}
	
	
	if global.locale=="en"
	switch(key)
	{
		case 100: return "Staff of the Miltian King";	
		case 101: return "Emerald halberd";	
		case 102: return "Fireheart staff";	
	}		 
}