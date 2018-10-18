--description: ÐÂÊÖ´å_Ò©µêÀÏ°å
--author: wangzg	
--date: 2003/7/18
--modify wangzg 2003/7/21 17:00
--update 2003/7/28 yuanlan
-- Update: Dan_Deng(2003-08-07)

Include("\\script\\global\\timerhead.lua")
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main()
	UTask_world38 = GetTask(66)
	if (UTask_world38 == 1) then		--ÒÑ½ÓÈÎÎñ
  		Say("¤ng néi TiÓu Lan lµ kh¸c quen, «ng ta cÇn thuèc X¹ H­¬ng Hæ Cèt Cao, 750 l­îng 1 lä, nÕu cã 2 lo¹i nguyªn liÖu X¹ H­¬ng vµ Hæ cèt, ta sÏ buèc thuèc miÔn phÝ cho.", 4, "Mua trùc tiÕp/buy", "T×m nguyªn liÖu/source", "Mua lo¹i thuèc kh¸c/yes","§Ó ta suy nghÜ l¹i!/no")
	elseif (UTask_world38==2) then
		if (HaveItem(185) == 1) and (HaveItem(142) == 1) then
			if (GetTimerId() > 0) then		-- ÁíÓÐ¼ÆÊ±Æ÷ÔÚÔËÐÐÖÐ
				Talk(1,"","?")
				return
			end
			SetTimer(0.5 * CTime * FramePerSec, 6)									--¿ªÆô¼ÆÊ±Æ÷£º°ë¸öÊ±³½ * Ê±³½³¤ * Ö¡Êý
			Talk(2, "", "¤ng chñ! Ta ®· t×m ®­îc Hæ cèt vµ X¹ H­¬ng.", "Hai lo¹i d­îc liÖu nµy ®Òu cã, nöa giê sau ng­¬i h·y quay l¹i lÊy!")
			SetTask(66,3)
			DelItem(185)
			DelItem(142)
			AddNote("Sau khi t×m ®ñ nguyªn liÖu ph¶i ®îi nöa tiÕng sau míi chÕ ®­îc thuèc.")
			Msg2Player("Sau khi t×m ®ñ nguyªn liÖu ph¶i ®îi nöa tiÕng sau míi chÕ ®­îc thuèc.")
		else
  			Say("NÕu ng­¬i cã thÓ t×m ®­îc 2 nguyªn liÖu X¹ H­¬ng vµ Hæ Cèt, ta sÏ bèc thuèc miÔn phÝ cho ng­¬i.", 3, "Mua trùc tiÕp X¹ H­¬ng Hæ Cèt Cao!/buy","Ta muèn mua thuèc kh¸c./yes", "Kh«ng muèn mua g×./no")
		end
	elseif (UTask_world38 == 3) then				-- Îª¼ÆÊ±Æ÷ÈÝ´í¼ÓÈëÊÖ¶¯³¬Ê±´¦Àí
		i = GetRestSec(6)
		if (i > 0) then
			Say("<#>Thêi gian ch­a ®ñ, thuèc ch­a lµm xong ®­îc, ng­¬i ph¶i chê ®îi thªm"..i.."<#> gi©y.", 3, "Ta kh«ng muèn ®îi n÷a, ®Ó mua trùc tiÕp cho råi./buy","Ta muèn mua thuèc kh¸c/yes", "VËy th«i ®i/no")
		else
			StopTimer()						--½áÊø¼ÆÊ±
			W66_getitem()
		end
	elseif (UTask_world38 == 4) then		-- ¼ÆÊ±Æ÷ÒÑµ½Ê±
		W66_getitem()
	else
		Say("Ng­¬i ®· ¨n 5 cèc t¹p l­¬ng, kh«ng ph¸t háa nhøc ®Çu míi l¹! Chç ta tuy nhá nh­ng tuyÖt ®èi kh«ng thiÕu thø g×! Ng­¬i cã muèn mua Ýt thuèc kh«ng?", 3, "Giao dÞch/yes","Ta ®Õn nhËn nhiÖm vô s¬ nhËp/yboss", "Kh«ng giao dÞch/no")
	end
end;

function buy()
  	if (GetCash() < 750) then
  		Talk(1,"","Ng­¬i kh«ng mang theo ®ñ tiÒn.")
  	else
  		Pay(750)
  		AddEventItem(186)
  		Msg2Player("B¹n nhËn ®­îc 1 X¹ H­¬ng Hæ Cèt cao")
  		SetTask(66,5)
  		AddNote("Mua ®­îc X¹ H­¬ng Hæ Cèt cao")
  		Msg2Player("Mua ®­îc X¹ H­¬ng Hæ Cèt cao")
		if (GetTimerId() == 6) then			-- ÕýÔÚºÏÒ©¼ÆÊ±ÖÐ
			StopTimer()
		end
  	end
end

function source()
-- Say("Ò©µêÀÏ°å£ºÈç¹ûÄãÄÜÅªµ½÷êÏãºÍ»¢¹ÇÁ½ÖÖÔ­ÁÏ£¬ÎÒÒ²¿ÉÒÔÃâ·Ñ°ïÄãºÏÒ©¡£", 0)		--ºÃÏóÊÇÖØ¸´ÁË¡£
SetTask(66,2)
AddNote("Cã thÓ ®Õn chç Hµnh TÈu vµ Thî S¨n ®Ó mua 2 d­îc liÖu trªn")
end

function W66_getitem()
	AddEventItem(186)
	Msg2Player("B¹n nhËn ®­îc 1 X¹ H­¬ng Hæ Cèt cao")
	SetTask(66,5)
--	StopTimer()
	AddNote("B¹n nhËn ®­îc 1 X¹ H­¬ng Hæ Cèt cao")
end

function yes()
Sale(91);   			--µ¯³ö½»Ò×¿ò
end;

function no()
end;
