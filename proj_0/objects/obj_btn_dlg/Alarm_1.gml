
var text_w = 300;
if(sprite_exists(sprite_index))text_w = clamp(sprite_get_width(sprite_index)-20,100,infinity);
if(btn_text != "" and !sprite_exists(spr_text)){
	spr_text = TextRender_toSprite(string(btn_text),text_size,TextRender_styleBold,text_w);
}
else if(loc_text_key != "" and !sprite_exists(spr_text)){
	spr_text = TextRender_toSprite(string(get_loc_text(loc_text_key)),text_size,TextRender_styleBold,text_w);
}

if(!sprite_exists(sprite_index) and sprite_exists(spr_text))sprite_index = spr_text;