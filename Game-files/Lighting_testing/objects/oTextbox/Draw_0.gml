if canDraw
{
	draw_set_font(fnt_control_help);
	draw_set_color(c_black);

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	draw_text(oBoxMessage.x, oBoxMessage.y, textbox_text);

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}