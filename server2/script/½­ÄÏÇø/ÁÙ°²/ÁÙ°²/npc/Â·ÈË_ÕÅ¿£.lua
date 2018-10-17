-- ÁÙ°² ¢·ÈËNPC ÕÅ¿££¨Ø¤°ï50¼¶ÈÎÎñ£©
-- by£ºDan_Deng(2003-07-28)
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel)
	if allbrother_0801_CheckIsDialog(3) == 1 then
		allbrother_0801_FindNpcTaskDialog(3)
		return 0;
	end
	UTask_gb = GetTask(8)
	Uworld75 = GetTask(75)
	U75_sub5 = GetTask(56)
	if (UTask_gb == 50*256+20) and (HaveItem(139) == 0) then		--´ø×Å50¼¶ÈÎÎñ
		Talk(5,"L50_Step1","Tr­¬ng ®¹i nh©n chóng ta l¹i gÆp","LÇn tr­íc nhê cã ng­¬i tr­îng nghÜa t­¬ng trî, lÇn nµy cÇn ta gióp g×?","Bang chñ ph¸i ta tíi ®­a Trung Nguyªn B¶n §å cho hoµng th­îng nh­ng ta l¹i kh«ng cã lÖnh bµi kh«ng thÓ vµo cung diÖn kiÕn.","Kh«ng cÇn lo, ta cã mét lÖnh bµi ng­¬i cÇm ®i","§a t¹ tr­¬ng ®¹i nh©n!")
	elseif (UTask_gb == 50*256+30) then
		Talk(5,"L50_Step2","Tr­¬ng ®¹i nh©n ®©y lµ th«ng hµnh lÖnh bµi!","ThÒ n¸o råi? ®· gÆp ®­îc hoµn th­îng ch­a?.","Kh«ng t×m thÊy hoµng th­îng,chØ gÆp ®­îc Tµo c«ng c«ng, ch¾c h¼n lµ th©n tÝn cña hoµng th­îng, ta ®· giao ®å cho h¾n!","Th«i chÕt ! ®¹i sù ch½ng lµnh, ng­¬i cã chæ kh«ng biÕt, Tµo c«ng c«ng bÊy l©u nay ©m thÇm giao dÞch víi bän giÆc Kim, ch¼ng qua lµ û vµo hoµng th­îng cho nªn kh«ng ai lµm g× ®­îc h¾n, nay vËy l¹i r¬i vµo tay h¾n,giang s¬n x· t¾c ch¾c gÆp nguy hiÔm.","ThË kh«ng ngê tíi vµo hoµng cung l¹i bÞ lõa, Tr­¬ng ®¹i nh©n ®õng lo ta sÏ ®i ®o¹t l¹i ®å!")
	elseif (UTask_gb == 50*256+50) then		--´Ë´¦²»ÔÙ¼ì²âÁ½ÑùÎïÆ·ÊÇ·ñ´æÔÚ£¬¸öÈË¾õµÃ²»ÊÇºÜÓÐÒâÒå£¬¶øÇÒÒ²Ê¡ÁË²»ÉÙ¹¤×÷Á¿
		Talk(3,"L50_Step3","Ta ®· ®em Trung Nguyªn B¶n §å giao l¹i cho Tr­¬ng ®¹i nh©n, mong ngµi mau giao l¹i cho hoµng th­îng.","ThËt tèt ! ng­¬i v× triÒu ®×nh ®· bá kh«ng Ýt c«ng søc","Th©n lµ ng­êi Tèng tÊt ph¶i nh­ thÕ.! ")
	elseif (UTask_gb >= 50*256+20) and (UTask_gb < 50*256+40) and (HaveItem(139) == 0) then
		AddEventItem(139)
		Msg2Player("LÊy ®­îc lÖnh bµi tiÕn vµo hoµng cung.")
		Talk(1,"","Th«ng hµnh lÖnh bµi bÞ mÊt, ®õng lo ta cßn rÊt nhiÒu.")
	elseif (Uworld75 == 10) and (U75_sub5 < 10) then		-- È­ÇãÌìÏ¢ÈÎÎñÖÐ£¬½ÓÈ¡×ÓÈÎÎñ
		if (HaveItem(384) == 1) then
			SetTask(56,10)
			AddNote("NhiÖm vô tiÕp tö : gióp tõ tuÊn t×m 5 miÕng má b¹c.")
			Msg2Player("NhiÖm vô tiÕp tö : gióp tõ tuÊn t×m 5 miÕng má b¹c")
			Talk(1,"","Ta kh«ng muèn lµm khã h¾n, ®Õn lóc ®ã ta sÏ lµm cho h¾n bé gi¸p,ng­¬i h·y ®i t×m gióp ta 5 miÕng má b¹c.")
		else
		 	Talk(1,"","ChØ miÖng nãi lµm sao ®¸ng tin cËy?.")
		end
	elseif (Uworld75 == 10) and (U75_sub5 == 10) then		-- ×ÓÈÎÎñÍê³ÉÅÐ¶Ï
		if (GetItemCount(118) >= 5) then
			DelItem(118)
			DelItem(118)
			DelItem(118)
			DelItem(118)
			DelItem(118)
			SetTask(56,20)
			AddNote("T×m ®­îc 5 miÕng má b¹c hoµn thµnh nhiÖm vô.")
			Msg2Player("T×m ®­îc 5 miÕng má b¹c hoµn thµnh nhiÖm vô.")
			Talk(1,"","ThiÕu hiÖp lµm viÖc thËt nhanh, cè g¾ng lªn.")
		else
			Talk(1,"","Kho¸ng th¹ch vÉn ch­a ®ñ h·y cè g¾ng h¬n.")
		end
	else
		Talk(1,"","Tõ tuÊn : thËt l©u míi cã c¬ héi ®éng tay")
	end
end;

function L50_Step1()
	AddEventItem(139)
	AddNote("l¹i ®­îc lÖnh vµo hoµng cung.")
	Msg2Player("l¹i ®­îc lÖnh vµo hoµng cung.")
end

function L50_Step2()
	DelItem(139)
	SetTask(8,50*256+40)
	AddNote("LËp tøc ®i lÊy Trung Nguyªn B¶n §å")
	Msg2Player("LËp tøc ®i lÊy Trung Nguyªn B¶n §å")
end

function L50_Step3()
	SetTask(8,50*256+60)
	DelItem(199)
	AddNote("§· ®em Trung Nguyªn B¶n §å giao cho Tõ TuÊn! ")
	Msg2Player("§· ®em Trung Nguyªn B¶n §å giao cho Tõ TuÊn! ")
end
