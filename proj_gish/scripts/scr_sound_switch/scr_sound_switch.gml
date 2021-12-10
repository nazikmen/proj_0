// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sound_switch(){
global.sound=!global.sound;
image_index=global.sound;
options_save();
}