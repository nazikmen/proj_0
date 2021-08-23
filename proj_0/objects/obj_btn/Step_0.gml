/// @description Insert description here
// You can write your code in this editor


if anim && image_xscale>0.8
{
	image_xscale-=0.02;
	image_yscale-=0.02;
}else if image_xscale<1
{
	anim=false;
	image_xscale=clamp(image_xscale+0.02,0.8,1);
	image_yscale=clamp(image_yscale+0.02,0.8,1);
	
}
