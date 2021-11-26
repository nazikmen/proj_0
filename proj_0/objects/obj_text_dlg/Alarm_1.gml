if(!sprite_exists(sprite_index))sprite_index = TextRender_toSprite(string(text),text_size,TextRender_styleBold,text_width);
if(!sprite_exists(sprite_index))sprite_index = sprite_duplicate(spr_error);