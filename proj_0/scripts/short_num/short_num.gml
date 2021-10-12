// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function short_num(num){
	if(is_numeric(num)){
		var str=string(num);
	    if(num>=power(10,26)) return string_copy(str,1,3)+"S";
	    if(num>=power(10,25)) return string_copy(str,1,2)+"S";
	    if(num>=power(10,24)) return string_copy(str,1,1)+"S";
	    if(num>=power(10,23)) return string_copy(str,1,3)+"s";
	    if(num>=power(10,22)) return string_copy(str,1,2)+"s";
	    if(num>=power(10,21)) return string_copy(str,1,1)+"s";
	    if(num>=power(10,20)) return string_copy(str,1,3)+"Q";
	    if(num>=power(10,19)) return string_copy(str,1,2)+"Q";
	    if(num>=power(10,18)) return string_copy(str,1,1)+"Q";
	    if(num>=power(10,17)) return string_copy(str,1,3)+"q";
	    if(num>=power(10,16)) return string_copy(str,1,2)+"q";
	    if(num>=power(10,15)) return string_copy(str,1,1)+"q";
	    if(num>=power(10,14)) return string_copy(str,1,3)+"T";
	    if(num>=power(10,13)) return string_copy(str,1,2)+"T";
	    if(num>=power(10,12)) return string_copy(str,1,1)+"T";
	    if(num>=power(10,11)) return string_copy(str,1,3)+"B";
	    if(num>=power(10,10)) return string_copy(str,1,2)+"B";
	    if(num>=power(10,9)) return string_copy(str,1,1)+"B";
	    if(num>=power(10,8)) return string_copy(str,1,3)+"M";
	    if(num>=power(10,7)) return string_copy(str,1,2)+"M";
	    if(num>=power(10,6)) return string_copy(str,1,1)+"M";
	    if(num>=power(10,5)) return string_copy(str,1,3)+"k";
	    if(num>=power(10,4)) return string_copy(str,1,2)+"k";
	    if(num>=power(10,3)) return string_copy(str,1,1)+"k";
		return str;
	}
	else return "0";
    
}