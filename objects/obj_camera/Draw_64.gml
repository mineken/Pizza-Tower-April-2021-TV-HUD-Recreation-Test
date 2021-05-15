font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0);
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(xi, yi, string_hash_to_newline(message));

if turnedon == true
{
    draw_text(480, 16, "PRESS 1 TO CHANGE CHARACTERS");
    draw_text(480, 64, "PRESS R TO RESET THE SIMULATOR");
}
if turnedon == false
{
    draw_text(480, 32, "PRESS R TO RESET THE SIMULATOR");
}
if turnedon == true
{
    draw_text(480, 500, "PRESS 2 TO GROW 3 TO SHRINK 4 TO RETURN");
}