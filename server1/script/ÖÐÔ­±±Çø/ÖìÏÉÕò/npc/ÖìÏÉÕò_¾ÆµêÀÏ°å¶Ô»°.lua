--ÖÐÔ­±±Çø ÖìÏÉÕò Â·ÈË¾ÆµêÕÆ¹ñµÄ¶Ô»°
--ÖìÏÉÕòÐÂÊÖÈÎÎñ: ÕÒÊÖ»·
--by Dan_Deng(2003-07-21)

--Ê¹ÓÃ±äÁ¿: UTask_world40,GetTask(68)

function main()
	UTask_world40 = GetTask(68)
	if ((UTask_world40 == 3) or (UTask_world40 == 4)) then
		Talk(1,"sele_buy","Cã ®Ëu phô Ngò H­¬ng b¸n kh«ng?")
	else
		i = random(0,1)
		if (i==0) then
			Talk(1,"","Mêi kh¸ch quan vµo bªn trong.")
		else
			Talk(1,"","§Ö nhÊt ®Æc s¶n ë Chu Tiªn TrÊn nµy chÝnh lµ ®Ëu hò Ngò H­¬ng cña tiÓu qu¸n.")
		end
	end
end;

function sele_buy()
	Say("§©y lµ ®Æc s¶n ë Chu Tiªn trÊn, ®­¬ng nhiªn lµ cã nh­ng gi¸ h¬i ch¸t, 100 l­îng b¹c ng­¬i mua kh«ng?",2,"Mua/yes","§¾t qu¸/no")
end;

function yes()
	if(GetCash() >= 100)then
		Talk(1,"","§­îc! Mét phÇn ®Ëu phô Ngò H­¬ng cña ng­¬i ®©y!")
		Pay(100);
		AddEventItem(187);
		Msg2Player("Mua ®­îc mét phÇn ®Ëu phô Ngò H­¬ng");
		AddNote("Mua ®­îc mét phÇn ®Ëu phô Ngò H­¬ng")
--		SetTask(68,4);
	else
		Talk(1,"","Bæn qu¸n mua b¸n lç vèn ®©u, khi nµo ®ñ tiÒn h·y quay l¹i.")
	end
end;

function no()
end;
