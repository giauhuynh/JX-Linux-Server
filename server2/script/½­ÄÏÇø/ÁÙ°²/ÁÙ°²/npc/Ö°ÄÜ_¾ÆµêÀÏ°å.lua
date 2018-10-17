-- ÁÙ°²¡¡Ö°ÄÜ¡¡¾ÆµêÀÏ°å
-- by£ºDan_Deng(2003-09-16)

function main()
	i = random(0,2)
	if (i == 0) then
		Talk(1,"","Chñ qu¸n r­îu : mêi kh¸ch quan vµo bªn trong, uèng vµi chÐn r­îu.")
	elseif (i == 1) then
		Talk(1,"","Chñ qu¸n r­îu : qu¸n cña ta ®Òu b¸n r­îu tù lµm, kh¸ch quan uèng vµo b¶o ®¶m kh«ng chª ®­îc.")
	else
		Talk(1,"","Chñ qu¸n r­ît : ngoµi ra qu¸n ta cßn nçi tiÕng víi Tóy tiªn , kh¸ch quan cã muèn dïng thö kh«ng?")
	end
end;
