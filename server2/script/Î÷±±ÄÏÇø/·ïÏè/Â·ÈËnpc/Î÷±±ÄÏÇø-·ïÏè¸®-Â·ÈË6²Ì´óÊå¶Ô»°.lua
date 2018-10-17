--Î÷±±ÄÏÇø ·ïÏè¸® ¢·ÈË6²Ì´óÊå¶Ô»°¡¡£¨È­ÇãÌìÏ¢ÈÎÎñ£©
-- By: Dan_Deng(2004-05-24)

function main(sel)
	Uworld75 = GetTask(75)
	U75_sub3 = GetTask(54)
	if (Uworld75 == 10) and (U75_sub3 < 10) then		-- ÈÎÎñÖĞ£¬½ÓÈ¡×ÓÈÎÎñ
		if (HaveItem(384) == 1) then
			SetTask(54,10)
			AddNote("§Õn ThiÕu l©m tù gióp Th¸i ®¹i thóc t×m kim liªn hoa. ")
			Msg2Player("§Õn ThiÕu l©m tù gióp Th¸i ®¹i thóc t×m kim liªn hoa. ")
			Talk(1,"","TiÕc lµ ta c¶ ®êi nghiªn cøu häc tËp nh­ng kh«ng cã hµi tö. Nghe nãi ë ThiÕu L©m cã kim liªn hoa cã thÓ gióp ta cã hµi tö.")
		else
		 	Talk(1,"","B©y giê ngay c¶ c¸i bãng còng kh«ng thÊy, lµm sao ta cã thÓ giao nhiÖm vô cho ng­¬i ®©y?")
		end
	elseif (Uworld75 == 10) and (U75_sub3 == 10) then		-- ×ÓÈÎÎñİê³ÉÅĞ¶Ï
		if (HaveItem(26) == 1) then
			DelItem(26)
			SetTask(54,20)
			AddNote("T×m ®­îc Kim liªn hoa. Hoµn thµnh nhiÖm vô. ")
			Msg2Player("T×m ®­îc Kim liªn hoa. Hoµn thµnh nhiÖm vô. ")
			Talk(1,"","Ha ha! §©y chİnh lµ ®İch ngäc béi trong truyÒn thuyÕt ®©y. H¶o tiÓu tö, thËt c¶m ¬n nhµ ng­¬i.")
		else
			Talk(1,"","Ch­a t×m ®­îc Kim liªn hoa sao.")
		end
	else
		i = random(0,1)
		if (i == 0) then
			Talk(1,"","Th¸i ®¹i thóc: Th¸i gia ta mÊy ®êi danh tiÕng, nh­ng ®Õn ®êi ta kh«ng cã nam tö nèi dâi, thËt lµ cã lçi víi liÖt tæ liÖt t«ng.")
		else
			Talk(1,"","Th¸i ®¹i thóc: BÊt hiÕu h÷u tam, v« hËu vi ®¹i nha!")
		end
	end
end;
