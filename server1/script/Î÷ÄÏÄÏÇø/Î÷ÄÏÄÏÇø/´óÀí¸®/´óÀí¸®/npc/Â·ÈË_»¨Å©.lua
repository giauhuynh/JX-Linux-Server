-- ´óµí¡¡¢·ÈË¡¡»¨Å©
-- by£ºDan_Deng(2003-09-16)
-- Update: Dan_Deng(2004-05-24) È­ÇãÌìÏ¢ÈÎÎñ

function main(sel)
	Uworld75 = GetTask(75)
	U75_sub2 = GetTask(53)
	if (Uworld75 == 10) and (U75_sub2 < 10) then		-- ÈÎÎñÖĞ£¬½ÓÈ¡×ÓÈÎÎñ
		if (HaveItem(384) == 1) then
			SetTask(53,10)
			AddNote("NhËn nhiÖm vô: ®i D­îc V­¬ng Cèc gióp Hoa N«ng h¸i 3 ®ãa cÈm môc tóc. ")
			Msg2Player("NhËn nhiÖm vô: ®i D­îc V­¬ng Cèc gióp Hoa N«ng h¸i 3 ®ãa cÈm môc tóc.")
			Talk(1,"","L¹c s­ huynh l¹i tíi kh¶o nghiÖm? ThËt tèt qu¸, §¹i Lı bèn mïa hoa, cßn thiÕu d­îc v­¬ng cèc cùc phÈm tö môc tóc, ng­¬i ®i gióp ta ®i h¸i 3 ®ãa råi quay l¹i ®©y.")
		else
		 	Talk(1,"","Mét phong th¬ còng kh«ng cã. V« cí, lµm sao ®Ó ta tin ng­¬i ®­îc ®©y??")
		end
	elseif (Uworld75 == 10) and (U75_sub2 == 10) then		-- ×ÓÈÎÎñİê³ÉÅĞ¶Ï
		if (GetItemCount(112) >= 3) then
			DelItem(112)
			DelItem(112)
			DelItem(112)
			SetTask(53,20)
			AddNote("NhiÖm vô: Hoµn thµnh h¸i cÈm môc tóc.")
			Msg2Player("NhiÖm vô: Hoµn thµnh h¸i cÈm môc tóc.")
			Talk(1,"","ThËt lµ tèt qu¸, ®óng lµ nhÊt phÈm, ta sÏ ph¸i ng­êi ®i th«ng b¸o l¹c s­ huynh, ta ®ång ı.")
		else
			Talk(1,"","Cßn ch­a cã t×m ®­îc µ?")
		end
	else
		i = random(0,99)
		if (i < 25) then
			Talk(1,"","¤ng l·o hä §oµn nµy c¶ ®êi yªu hoa nh­ thµnh c¸i bÖnh, hoa trµ mµ «ng Êy chØ b¸n cho ng­êi cã duyªn víi «ng Êy, cßn ng­êi kh¸c th× dï cho cã ®em nói vµng nói b¹c ®Õn «ng Êy còng kh«ng b¸n.")
		elseif (i < 50) then
			Talk(1,"","Hoa trµ ®Ñp nhÊt toµn §¹i Lı lµ do «ng l·o hä §oµn trång, «ng Êy sèng ë mét ng«i nhµ nhá bªn bê NhÜ H¶i. Hoa trµ cña l·o b¸n hä §oµn mçi n¨m ®Õn mïa béi hoa lu«n ®­îc chän lµ hoa ®Ñp nhÊt.")
		elseif (i < 75) then
			Talk(1,"","Nhµ nhµ ë §¹i Lı ®Òu trång hoa trµ, mçi n¨m ®Òu tæ chøc triÓn l·m héi hoa.")
		else
			Talk(1,"","V©n Nam trµ hoa nhÊt thiªn h¹, §¹i Lı trµ hoa nhÊt V©n Nam, hoa trµ trong m¾t ng­êi §¹i Lı chóng ta lµ hoa ®Ñp nhÊt thiªn h¹, ngay c¶ MÉu §¬n còng kh«ng s¸nh b»ng.")
		end
	end
end;
