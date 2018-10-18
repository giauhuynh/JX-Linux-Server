-- ÁÙ°²¡¡¢·ÈË¡¡»ªÔ±Íâ
-- by£ºDan_Deng(2003-09-16)
-- edit by Ğ¡ÀË¶µ¶µ
Include("\\script\\event\\zhongqiu2007\\picture_head.lua")
function main()
	local ndate = tonumber(GetLocalDate("%y%m%d%H%M"))
	if ndate > 0709220000 and ndate < 0710312400 then
		SetTaskTemp(TSK_TEMP,1)
		Describe("Hoa viªn ngo¹i : trung thu ®· ®Õn chØ cÇn thu thËp ®ñ 6 <color=red>M·nh vÏ vôn <color> hîp thµnh mét tê hoµn chØnh ®em ®Õn cho ta,ta sÏ tÆng ng­¬i mét <color=red>cung th¸ng phï dung<color>.",2,"§æi cung th¸ng phï dung thµnh b¸nh trung thu/makeItemUI","chØ ®i ngang qua/NoChoice")
	else
		if (random(0,1) == 0) then
			Talk(1,"","Hoa viªn ngo¹i : ta tuy kh«ng ph¶i lµ ng­êi trong quan tr­êng, nh­ng còng quen biÕt nhiÒu quan l¹i, chØ cÇn cã b¹c lµ ®­îc.")
		else
			Talk(1,"","Hoa viªn ngo¹i : ai còng muèn lµm quan nh­ng ®©u biÕt quan tr­êng gian hiÔm, cø nh­ ta ung dung tù t¹i.")
		end
	end
end;
