-- ÁÙ°²¡¡¢·ÈË¡¡Ð»´óÒ¯
-- by£ºDan_Deng(2003-09-16)
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main()
	if allbrother_0801_CheckIsDialog(192) == 1 then
		allbrother_0801_FindNpcTaskDialog(192)
		return 0;
	end
	Talk(1,"","T¹ ®¹i gia : phu thª ph¶i sèng hßa thuËn míi h¹nh phóc ®­îc.")
end;
