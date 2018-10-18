-- NPC - Cæ L·o Th¸i - BLH
--°İ¸êÏØĞ¢ÊÖÈÎÎñ£º¹ÅµÏÌ«µÄ±¦±´
--suyu
-- Update: GiaKaKa 2014424

function main(sel)
	UTask_world19 = GetTask(47);
	if ((UTask_world19 == 0) and (GetLevel() >= 6)) then		-- ÈÎÎñÆô¶¯
		Say("Con trai l·o ®i ®¸nh c¸ 3 ngµy nay ch­a thÊy vÒ. L·o giµ råi, kh«ng thÓ ®i t×m ®­îc. Ch¸u cã thÓ gióp l·o ra hå t×m nã ®­îc kh«ng?",2,"Gióp/yes","Kh«ng gióp/no")
	elseif(UTask_world19 == 1) then
		if(HaveItem(182) == 1) then
			Talk(2, "", "§©y ch¼ng ph¶i lµ ngäc béi cña con trai l·o sao? LÏ nµo..lÏ nµo..huhuhu..,con cña l·o chÕt th¶m qu¸, thö hái 1 bµ giµ nh­ l·o sÏ sèng sao ®©y! ","C¶m ¬n ch¸u ®· gióp l·o t×m ®­îc miÕng ngäc béi nµy, nh×n nã ta nh­ cã c¶m gi¸c con trai ta ë bªn c¹nh. Bøc th­ ph¸p nµy lµ cña gia truyÒn, l·o th× mét ch÷ còng kh«ng biÕt, th«i th× tÆng ch¸u vËy.Huhuhu...")
			DelItem(182)
			AddEventItem(183)
			SetTask(47, 2)
			AddNote("§em miÕng ngäc béi ®­a cho Cæ L·o Th¸i hoµn thµnh nhiÖm vô")
			Msg2Player("§em miÕng ngäc béi ®­a cho Cæ L·o Th¸i hoµn thµnh nhiÖm vô")
			AddRepute(4)		-- ¼ÓÉùİû6µã
			Msg2Player("Thanh thÕ giang hå cña b¹n t¨ng 4 ®iÓm")
		else
			Talk(1,"","BÕn ®ß ë phİa §«ng thŞ trÊn, c¸c ng­ d©n th­êng cËp thuyÒn ë ®ã, nÕu ch¸u thÊy nã th× b¶o  lµ ta ë nhµ rÊt mong nã vÒ. Khô...khô...")
		end
	else				-- ·ÇÈÎÎñ¶Ô»°
		if (random(0,1) == 0) then
			Talk(1,"","C¸c ng­ d©n thËt lµ khæ! Ta cã hai ®øa con ®i ®¸nh c¸ trªn ®Òu bİ sãng lín d×m chÕt. ")
		else
			Talk(1,"","§Õn ng­êi ®¸nh c¸ còng cßn kh«ng cã c¸ mµ ¨n, kh«ng ®¸nh c¸ th× ngay c¶ c¬m còng kh«ng cã")
		end
	end
end;

function yes()
	Talk(1,"","Ch¸u h·y ra bÕn tÇu t×m con trai gióp ta nhĞ! ")
	SetTask(47, 1)
	AddNote("TiÕp nhËn nhiÖm vô: Con trai cña Cæ L·o Th¸i ®i ®¸nh c¸ 3 ngµy kh«ng vÒ, gióp bµ l·o ra bÕn tÇu t×m cËu ta. ")
	Msg2Player("TiÕp nhËn nhiÖm vô: Con trai cña Cæ L·o Th¸i ®i ®¸nh c¸ 3 ngµy kh«ng vÒ, gióp bµ l·o ra bÕn tÇu t×m cËu ta. ")
end;

function no()
	Talk(1,"","ThËt lµ lµm phiÒn ch¸u qu¸")
end;
