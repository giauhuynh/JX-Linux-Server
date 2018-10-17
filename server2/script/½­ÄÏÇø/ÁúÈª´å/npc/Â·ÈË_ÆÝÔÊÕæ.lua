-- ÁúÈª´å¡¡¢·ÈË¡¡ÆİÔÊÕæ
-- by£ºDan_Deng(2003-09-16)
-- Îå¶¾½Ì90¼¶ÈÎÎñ
-- update by xiaoyang(2004\4\13)

Include("\\script\\global\\repute_head.lua")

Include("\\script\\item\\skillbook.lua")

function main()
	Uworld124 = GetTask(124)
	Uworld37 = GetByte(GetTask(37),2)
	if ((Uworld124 < 10) and (GetLevel() >= 90) and (GetReputeLevel(GetRepute()) >= 5) and (Uworld37 == 127) and (GetFaction() ~= "wudu")) or 
		(GetLevel() >= 90 and GetCamp() == 4 and GetTask(5895) == 0)	then
		Talk(6,"Uworld_wuget","C¸c h¹ ®Õn ®©y t×m ra cã viÖc g×?","cã ph¶i lµ v× bİ kİp th­îng t«n cña ngò ®éc gi¸o mµ ®Õn ®©y?","t¹i h¹ ®ang mang träng th­¬ng, th©n thÓ bŞ tróng ph¶i ®éc ¢m d­¬ng tiÕu cña V©n bÊt tµ, nªn kh«ng thÓ gióp bŞ thiÕu hiÖp ®©y råi","::§¹i hiÖp bŞ tróng ph¶i kŞch ®éc cña V©n bÊt tµ sao?",":: NÕu ta cã thÓ gióp ®¹i hiÖp ®©y gi¶i ®éc th× ngµi cã thÓ gióp ta vÒ bé kü n¨ng cña ngò ®éc gi¸o kh«ng?","Kh«ng thµnh vÊn ®Ò, nh­ng vŞ thiÕp hiÖp ®©y liÖu cã ®ñ søc?")
	elseif(Uworld124 == 40) and (HaveItem(387) == 1) then
		Talk(5,"Uworld_wufinish","::§©y lµ thuèc gi¶i!",
		"§©y ®óng lµ thuèc gi¶i råi, ng­¬i ®óng lµ ng­êi tèt! ",
		"::VËy cßn viÖc lêi høa cña ng­êi vÒ bİ kİp ngò ®éc gi¸o",
		"V©ng, c¶m ¬n ®¹i hiÖp ®· tr­îng nghÜa ra tay cøu gióp, ®©y lµ lêi høa cña ta","§a t¹!")
	elseif(Uworld124 > 10) and (Uworld124 < 40) then
		Talk(1,"","ºLTT6ÇºÇ")
	else
		Talk(1,"","Ng­¬i cã nghe nãi ®Õn chuyÖn bøc '§Şa ®å s¬n hµ x· t¾c g× ®ã kh«ng?' Cã thËt lµ cã bøc ®Şa ®å ®ã kh«ng? NÕu nh­ cã ®­îc nã trong tay råi th× vinh hoa phó quı h­ëng c¶ mÊy ®êi còng kh«ng hÕt.")
	end
end

function Uworld_wuget()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- °×ÃûÎ´Ñ§Ò°ÇòÈ­µÄ£¬²»ÔÊĞí½ÓÈÎÎñ
		Talk(1,"","HiÖn t¹i ta kh«ng thÓ tiÕp nhËn nhiÖm vô nµy!")
	else
		Say("Ch¼ng hay ng­¬i sÏ b¾t ®Çu tõ ®©u?",2,"Ta sÏ lªn ®­êng ®Õn ngò ®éc gi¸o ®Ó hái th¨m tin tøc/Uworld_wduok","Th«i, ta bËn l¾m, hay ®Ó khi kh¸c nhĞ/Uworld_wduno")
	end
end

function Uworld_wduok()
	SetTask(124,10)
	SetTask(5895,1)
	Msg2Player("B¹n ®Õn ngò ®éc gi¸o, vµo kim xµ tr¹i ®Ó hái vÒ thuèc gi¶i")
	AddNote("B¹n ®Õn ngò ®éc gi¸o, vµo kim xµ tr¹i ®Ó hái vÒ thuèc gi¶i")
end

function Uworld_wduno()
end

function Uworld_wufinish()
	DelItem(387)
	if ((GetTask(10) >= 70*256) and (GetTask(10) ~= 75*256)) or (GetTask(5895) == 1) then				-- ÊÇÎå¶¾³öÊ¦µÄ£¬¿ÉÒÔÑ§µ½¼¼ÄÜ
		if GetLastFactionNumber() == 3 then
			Talk(2,"","B¹n biÕt thªm vÒ ©m m­u th©m hiÓm cña V©n bÊt tµ","Tuy nhiªn giang hå vÉn l¾m cã nhiÒu khóc m¾c, b¹n sÏ tiÕp tôc cuéc hµnh tr×nh cña m×nh!")
			if (HaveMagic(353) == -1) then		-- ±ØĞëÃ»ÓĞ¼¼ÄÜµÄ²Å¸ø¼¼ÄÜ
				AddMagic(353,1)
			end
			if (HaveMagic(355) == -1) then		-- ±ØĞëÃ»ÓĞ¼¼ÄÜµÄ²Å¸ø¼¼ÄÜ
				AddMagic(355,1)
			end
			if (HaveMagic(390) == -1) then		-- ±ØĞëÃ»ÓĞ¼¼ÄÜµÄ²Å¸ø¼¼ÄÜ
				AddMagic(390)
			end
			-- CheckIsCanGet150SkillTask()
			Msg2Player("Hoµn thµnh nhiÖm vô, b¹n nhËn ®­îc bé kü n¨ng cÊp 90 cña Ngò ®éc gi¸o!")
			SetTask(124,255)
			SetTask(5895,255)
		end
	else
		SetTask(124,245)								--»ñµÃÉùÍûµÄÉèÖÃ±äÁ¿245
	end
   add_repute = 30			-- ÉùÍû½±Àø£º×î´ó30µã£¬´Ó100¼¶ÆğÃ¿¼¶µİ¼õ4%
   AddRepute(add_repute)
   Msg2Player("Hoµn thµnh nhiÖm vô, b¹n nhËn ®­îc "..add_repute.." ®iÓm danh väng.")
   AddNote("Hoµn thµnh nhiÖm vô, b¹n nhËn ®­îc "..add_repute.." ®iÓm danh väng.")
end
