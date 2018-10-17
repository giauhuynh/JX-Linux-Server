-- ¶ıº£ ¢·ÈËNPC ´¬¼Ò£¨´äÑÌ·Å30¼¶ÈÎÎñ£©
-- by£ºDan_Deng(2003-07-26)

function main()
	UTask_cy = GetTask(6)
	if ((UTask_cy == 30*256+40) and (HaveItem(2) == 0)) then		--30¼¶ÈÎÎñ½øĞĞÖĞ
		Talk(5,"L30_pay","Kim nhi c¸ kh¶ ch©n thŞ ®¹i phong thu a, bé liÔu nhÊt m·n th­¬ng ®İch ng­ hµ.","Ngµi cã Ng©n tuyÕt ng­ sao?","Ng©n tuyÕt ng­, ta h«m nay c©u ®­îc ®Õn mÊy con.","Ngµi cã thÓ b¸n cho ta mét İt ®­îc kh«ng?","Còng ®­îc, chØ cÇn ®­a ta 1000 l­îng.")
	else
		Talk(1,"","ThuyÒn gia: §Ëp n­íc §¹i Lı uèn quanh, anh em ng¨n s«ng c¸ch nói, nói s«ng mu«n trïng xa c¸ch, muèn gÆp còng kh«ng thÓ gÆp ®­îc.")
--		Talk(1,"","´¬¼Ò£º³öº£²¶ÓãÄÇ¸ö°Ñ´¬º½°¡£¬·áÊÕ¹éµ´ÄÇ¸ö°Ñ¼Ò·µ°¡£¡")
	end
end;

function L30_pay()
	if (GetCash() >= 1000) then
		Pay(1000)
		AddEventItem(2)
		AddNote("Mua ®­îc ng©n tuyÕt ng­.")
		Msg2Player("Mua ®­îc ng©n tuyÕt ng­ t¹i chç ThuyÒn Gia.")
	else
		Talk(1,"","Kh«ng cã tiÒn, mua b¸n c¸i g× ®­îc ®©y.")
	end
end;
