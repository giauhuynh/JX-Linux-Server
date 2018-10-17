-- ÁÙ°²¡¡Ö°ÄÜ¡¡»Ê¹¬ÎÀ±ø£¨Á½Ãû£©£¨Ø¤°ï50¼¶ÈÎÎñ£©
-- by£ºDan_Deng(2003-09-16)

function main()
		UTask_gb = GetTask(8)
	if ((UTask_gb >= 50*256+30) and (UTask_gb <60)) then		-- £¨µÚÈı´Î£©
		Talk(3,"","Tµo c«ng c«ng cã lÖnh kh«ng phËn sù kh«ng ®­îc vµo cung ! ®i ra.",": Ta cã th«ng hµnh lÖnh bµi !","Cã th«ng hµnh lÖnh bµi xin mêi vµo! ")
--		SetTask(8,50*256+40)
	elseif (UTask_gb == 50*256+20) and (HaveItem(139) == 1) then	-- £¨µÚ¶ş´Î£©
		Msg2Player("Chøng thùc th«ng hµnh lÖnh thËt mêi vµo trong. ")
		NewWorld(177, 1569, 3169)
	elseif (UTask_gb == 50*256+10) then		--´ø×Å50¼¶ÈÎÎñ£¨µÚÒ»²½£©
		Talk(3,"","§øng l¹i ng­¬i d¸m ch¹y lo¹n n¬i nµy µ! ","T¹i h¹ lµ c¸i bang ®Ö tö cã mét vËt v« cïng quan träng muèn d©ng cho hoµng th­îng","Hoµng th­îng kh«ng ph¶i ai còng cã thÓ diÖn kiÕn,ph¶i cã th«ng hµnh lÖnh cña tr­¬ng ®¹i nh©n míi cã thÓ vµo")
		SetTask(8,50*256+20)
	else
		i = random(0,2)
		if (i == 0) then
			Talk(1,"","VÖ binh hoµng cung : ng­¬i thËt to ran biÕt ®©y lµ n¬i nµo kh«ng mµ d¸m vµo ®©y ®i d¹o.")
		elseif (i == 1) then
			Talk(1,"","VÖ binh hoµng cung : hoµng cung lµ cÊm ®Şa tù tiÖn ®i vµo chØ cã chÕt")
		else
			Talk(1,"","VÖ binh hoµng cung : ®øng l¹i ! ng­¬i ch¸n sèng råi, hoµng cung cÊm ®Şa mµ d¸m ®i vµo")
		end
	end
end;
