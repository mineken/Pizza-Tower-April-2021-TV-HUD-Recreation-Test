if keyboard_check_pressed(vk_enter) && turnedon == false
{
	image_speed = 0.35;
	turnedon = true;
	alarm[0] = 10;
	scr_soundeffect(sfx_secretfound);
}
if turnedon == false
{
    message = "PRESS ENTER TO TURN ON THE TV";
    showtext = 1;
}
if global.character == "P"
{
	spr_main = spr_tvhud_main;
	spr_second = spr_tvhud_second;
	spr_third = spr_tvhud_third;
	spr_maintransition = spr_tvhud_maintransition;
	spr_secondtransition = spr_tvhud_secondtransition;
	spr_thirdtransition = spr_tvhud_thirdtransition;
	spr_lasttransition = spr_tvhud_lasttransition;
}
if global.character == "N"
{
	spr_main = spr_tvhudN_main;
	spr_second = spr_tvhudN_second;
	spr_third = spr_tvhudN_third;
	spr_maintransition = spr_tvhudN_maintransition;
	spr_secondtransition = spr_tvhudN_secondtransition;
	spr_thirdtransition = spr_tvhudN_thirdtransition;
	spr_lasttransition = spr_tvhudN_lasttransition;
}
if keyboard_check_pressed(ord("1")) && global.character == "N" && turnedon == true
{
	global.character = "P";
	sprite_index = spr_tvhud_turnon;
	image_index = 0;
}
else if keyboard_check_pressed(ord("1")) && global.character == "P" && turnedon == true
{
	global.character = "N";
	sprite_index = spr_tvhud_turnon;
	image_index = 0;
}
if keyboard_check(ord("2")) && turnedon == true
{
	image_xscale += 0.1;
	image_yscale += 0.1;
}
if keyboard_check(ord("3")) && turnedon == true
{
	image_xscale -= 0.1;
	image_yscale -= 0.1;
}
if keyboard_check(ord("4")) && turnedon == true
{
	image_xscale = 1;
	image_yscale = 1;
	x = xstart;
	y = ystart;
}
if keyboard_check_pressed(ord("R"))
{
	game_restart();
}
if (showtext == 1)
{
    xi = (500 + random_range(1, -1));
    if (yi > 500)
        yi -= 5;
}
if (showtext == 0)
{
    xi = (500 + random_range(1, -1));
    if (yi < 600)
        yi += 1;
}
if sprite_index == spr_tvhud_turnon && floor(image_index) == image_number - 1
{
	sprite_index = spr_main;
	image_index = 0;
}
if sprite_index == spr_main && floor(image_index) == image_number - 1
{
	sprite_index = choose(spr_maintransition, spr_thirdtransition);
	image_index = 0;
}
if sprite_index == spr_maintransition && floor(image_index) == image_number - 1
{
	sprite_index = spr_second;
	image_index = 0;
}
if sprite_index == spr_thirdtransition && floor(image_index) == image_number - 1
{
	sprite_index = spr_third;
	image_index = 0;
}
if sprite_index == spr_second && floor(image_index) == image_number - 1
{
	sprite_index = spr_secondtransition;
	image_index = 0;
}
if sprite_index == spr_third && floor(image_index) == image_number - 1
{
	sprite_index = spr_lasttransition;
	image_index = 0;
}
if sprite_index == spr_secondtransition && floor(image_index) == image_number - 1
{
	sprite_index = spr_main;
	image_index = 0;
}
if sprite_index == spr_third && floor(image_index) == image_number - 1
{
	sprite_index = spr_main;
	image_index = 0;
}
if sprite_index == spr_lasttransition && floor(image_index) == image_number - 1
{
	sprite_index = spr_main;
	image_index = 0;
}