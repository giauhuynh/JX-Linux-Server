--Î÷ÄÏ±±Çø ³É¶¼¸® ¢·ÈË18¢ôÊñĞåµÄ¶Ô»°
--author: yuanlan	
--date: 2003/3/10
-- Update: Dan_Deng(2003-08-13)

function main(sel)
	UTask_tm = GetTask(2)
	if (UTask_tm == 10*256+20) then			--ÌÆ·ÅÊ®¼¶ÈÎÎñ¹ı³ÌÖĞ
		Talk(2, "", "ta ®©y b¸n ®Òu lµ t«n uyÓn danh gia thªu Tø Xuyªn  . nµng ë thµnh ®« phñ rÊt næi danh , thªu ph¶i tèt v« cïng , toµn bé trong phñ xÕp hµng thø nhÊt , nhµ cña nµng ë thµnh ®«ng nam c¹nh qu¸n trä phï dung . ", "nÕu lµ thªu danh gia , trong nhµ ch¾c ch¾n sÏ kh«ng thiÕu hôt kim may , cã lÏ nµng nghe nãi liªn quan tíi Ma ch©m.")
		AddNote("Mai n­¬ng biÕt thªu danh gia Tø Xuyªn , thªu ph¶i tèt v« cïng , nhµ cña nµng ë thµnh ®«ng nam c¹nh qu¸n trä phï dung..  ")
		SetTask(2,10*256+30)
	elseif (UTask_tm == 10*256+30) then			--ÌÆ·ÅÊ®¼¶ÈÎÎñ¹ı³ÌÖĞ
		Talk(1, "", "ta ®©y b¸n ®Òu lµ t«n uyÓn danh gia thªu Tø Xuyªn  . nµng ë thµnh ®« phñ rÊt næi danh , thªu ph¶i tèt v« cïng , toµn bé trong phñ xÕp hµng thø nhÊt , nhµ cña nµng ë thµnh ®«ng nam c¹nh qu¸n trä phï dung  ")
	elseif (random(0,1) == 0) then
		Talk(1,""," ng­¬i tõ ®©u tíi ®©y ? c¸i nµy lµ thªu Tø Xuyªn thôc trung chi b¶o , ng­¬i xem mét chót ,  ®­êng thªu ®Çy ®ñ , thËt lµ thñ c«ng th­îng phÈm , mua mét c¸i vÒ lµm kØ niÖm ®i")
	else
		Talk(1,"","thİch h×nh thªu c¸ chĞp sao ? TÊt c¶ ®Òu gièng nhau mµ?")
	end
end;
