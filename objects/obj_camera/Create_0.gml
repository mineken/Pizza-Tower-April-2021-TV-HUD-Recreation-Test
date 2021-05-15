image_speed = 0;
choice = 0;
chose = 0;
message = "";
showtext = 0;
xi = 500;
yi = 600;
imageindexstore = 0;
once = 0;
alpha = 1;
shownranka = 0;
shownrankb = 0;
shownrankc = 0;
display_set_gui_size(960, 540);
turnedon = false;
global.character = "P";
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