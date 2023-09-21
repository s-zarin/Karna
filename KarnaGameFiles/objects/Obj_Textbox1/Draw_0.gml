//draw textbox
draw_sprite(Spr_Textbox1, 0, x, y);


//draw text 
draw_set_font(Fnt_Karna);
//draw_set_font(global.font_main);
if charCount < string_length(buddy[p])
{
	charCount += 0.5;
}
else
{
	charCount = charCount;
}

draw_set_halign(fa_center);
draw_sprite(Spr_Profiles, profNum[p], x, y+10)
draw_text(x + (box_width/2), y + 10, creator)
chatSegment = string_copy(buddy[p], 1, charCount);
draw_set_halign(fa_left);
draw_text_ext(x + 65, y + 35, chatSegment, stringHeight, (box_width - 65));





