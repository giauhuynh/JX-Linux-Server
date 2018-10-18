-- ½­ÄÏÇø ÌÒ»¨µº Â·ÈË_´¬·ò.lua
-- by: Dan_deng(2004-05-15)

Include("\\script\\missions\\autohang\\head.lua")
g_mapList = {235, 236, 237, 238, 239, 240, 241};
function main()
	-- Ãâ·ÑË«¾­Ñé
	if (AEXP_IsFreeTimeDoubleExp() == 1) then-- Ãâ·ÑË«¾­ÑéÈÕ×Ó
		-- Say("Õâ¸½½üÌÒ»¨µºµÄÁéÆøºÜÊ¢. ²»ÓÃÀ°°ËÖàÒ²¿ÉÒÔÁ·¹¦. ÕâÃ´ºÃµÄ»ú»á.ÒªÖªµÀ³ä·ÖÀûÓÃ. Èç¹ûÏë·´»ÚÒª¸¶1800Á½ÒøÁ½. ", 2, "»Ø³Ç/go_yes", "²»»Ø/no")		
		Say("Sao, míi ®ã ®· muèn vÒ råi h¶, mét n¬i ®Ñp nh­ tiªn c¶nh thÕ nµy kh«ng ®ñ ®Ó nİu ch©n ng­¬i hay sao. NÕu nh­ ng­¬i muèn rêi khái ®¶o nµy th× ph¶i mÊt 1800 l­îng", 2, "§©y 1800 l­îng ta cã ®©y, mau ®­a ta vÒ/go_yes", "ta ch­a muèn vÒ/no")		
		return 1;
	end
	
	nValue = GetTask(AEXP_TASKID);
	if (nValue > AEXP_TIME_UPDATE) then -- ÈÔÓĞ¹Ò»úÊ±¼ä
		-- Say("ÕâÎ»¿Í¹Ù! ¿´ÄãµÄÉñÆøÒ»¶¨ÊÇÓÃÁËÕâÀï´«ËµÖĞµÄÀ°°ËÖà¶Ô°É?ÌıËµÖ»ÓĞÌÒ»¨µºÉÏµÄÀ°°ËÖà²ÅÓĞ¹¦Ğ§. Ö»ÓĞÒ»Ğ¡Ê±£¬Òª¾¡Á¿Ê¹ÓÃ. NÕu nh?muèn v?thµnh th?ph¶i tr?1800 ng©n l­înÈç¹ûÒª»Ø³ÇĞèÒªÖ§¸¶1800Á½ÒøÁ½.", 2, "»Ø³Ç/go_yes", "²»»Ø/no")
		Say("Sao, míi ®ã ®· muèn vÒ råi h¶, mét n¬i ®Ñp nh­ tiªn c¶nh thÕ nµy kh«ng ®ñ ®Ó nİu ch©n ng­¬i hay sao. NÕu nh­ ng­¬i muèn rêi khái ®¶o nµy th× ph¶i mÊt 1800 l­îng", 2, "§©y 1800 l­îng ta cã ®©y, mau ®­a ta vÒ/go_yes", "ta ch­a muèn vÒ/no")		
	else 
		-- Say("ÕâÎ»¿Í¹Ù! ¿´ÄãµÄÉñÆøÒ»¶¨ÊÇÓÃÁËÕâÀï´«ËµÖĞµÄÀ°°ËÖà¶Ô°É?ÌıËµÖ»ÓĞÌÒ»¨µºÉÏµÄÀ°°ËÖà²ÅÓĞ¹¦Ğ§. Ö»ÓĞÒ»Ğ¡Ê±£¬Òª¾¡Á¿Ê¹ÓÃ. NÕu nh?muèn v?thµnh th?ph¶i tr?1800 ng©n l­înÈç¹ûÒª»Ø³ÇĞèÒªÖ§¸¶1800Á½ÒøÁ½.", 2, "»Ø³Ç/go_yes", "²»»Ø/no")
		Say("Sao, míi ®ã ®· muèn vÒ råi h¶, mét n¬i ®Ñp nh­ tiªn c¶nh thÕ nµy kh«ng ®ñ ®Ó nİu ch©n ng­¬i hay sao. NÕu nh­ ng­¬i muèn rêi khái ®¶o nµy th× ph¶i mÊt 1800 l­îng", 2, "§©y 1800 l­îng ta cã ®©y, mau ®­a ta vÒ/go_yes", "ta ch­a muèn vÒ/no")		
	end
end

function go_yes()
	if (GetCash() >= 1800) then
		Pay(1800)
		Msg2Player("§· rêi ®¶o!")
		SetAutoHangMapFlag(0) -- ÉèÖÃÍË³ö¹Ò»úµØÍ¼±ê¼Ç(·Å¿ªÔ­À´±»ÆÁ±ÎµÄ¹«ÁÄ¡¢»Ø³ÇµÈ¹¦ÄÜ)
		
		-- ¼ÇÂ¼Àë¿ªÊ±µÄÔÚÏßÊ±¼ä
		nOLTime = GetGameTime();
		SetTask(AEXP_OLTIME_TASKID, nOLTime);
		
		back_home();
		SetFightState(1)
	else
		Talk(1,"","Kh«ng cã tiÒn mµ còng ®ßi ngåi xe? <pic=15>, gäi ng­êi cã thÈm quyÒn ®Õn ®ãn ng­¬i vÒ, nghÌo thÕ ch¶ biÕt <pic=0>")
	end
end;

function back_home()
	nSubWorldID = SubWorldIdx2ID();

	if (nSubWorldID == g_mapList[1]) then
		NewWorld(176, 1614, 2561) -- ÁÙ°²
	elseif (nSubWorldID == g_mapList[2]) then
		NewWorld(80, 1345, 3359) -- ÑïÖİ
	elseif (nSubWorldID == g_mapList[3]) then
		NewWorld(78, 1299, 3483) -- ÏåÑô
	elseif (nSubWorldID == g_mapList[4]) then
		NewWorld(37, 1938, 2459) -- ãê¾©
	elseif (nSubWorldID == g_mapList[5]) then
		NewWorld(162, 1642, 2935) -- ´óÀí
	elseif (nSubWorldID == g_mapList[6]) then
		NewWorld(11,3100,4822) -- ³É¶¼
	elseif (nSubWorldID == g_mapList[7]) then
		NewWorld(1, 1528, 2733) -- ·ïÏè
	else
		Msg2Player("Kh«ng thÓ di chuyÓn, xin liªn hÖ GM!");
	end	
end;

function no()
end;
