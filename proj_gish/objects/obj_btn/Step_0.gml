/// @description Insert description here
// You can write your code in this editor


if(anim){
	image_xscale=lerp(image_xscale,def_scale-def_scale*0.1,0.1);
	image_yscale=image_xscale;
	if(image_xscale-(def_scale-def_scale*0.1)<0.05)anim=false;
}else{
	image_xscale=lerp(image_xscale,def_scale,0.1);
	image_yscale=image_xscale;
}
