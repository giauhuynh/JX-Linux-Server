-- ½­ÄÏÇø ÌÒ»¨µº Â·ÈË_ÌÒ»¨ÒşÊ¿.lua
-- by: Dan_deng(2004-05-15)
-- Âô¹Ò»úÒ©£¬²éÑ¯Ê±¼ä£¬ÎªÏ´µã×öºÏ·¨ĞÔ¼ì²é

Include("\\script\\global\\timerhead.lua")
Include("\\script\\missions\\autohang\\function.lua")

function main()	

Talk(1, "", "HiÖn t¹i ta kh«ng r¶nh ®Ó tiÕp chuyÖn ng­êi kh¸c, khi kh¸c h·y quay l¹i ®µm ®¹o víi l·o nhĞ!")
	-- strNeedLevel = "ÌÒ»¨µºÓëÊÀ¸ô¾ø£¬Â·Í¾Î£ÏÕ£¬²»µ½<color=red> "..AEXP_NEEDLEVEL.."¼¶<color>¾ÍÏë½øÈ¥£¿»ØÈ¥Á·¹¦È¥!";

	-- if (AEXP_IsFreeTimeDoubleExp() == 1) then
		-- nLevel = GetLevel();	
		-- if (nLevel < AEXP_NEEDLEVEL) then
			-- Say(strNeedLevel, 0);
		-- else
			-- Say("ÏÖÔÚÌÒ»¨µºÁéÆø¼«Ê¢£¬ÕâÊ±ºòÁ·¹¦²»ĞèÒªÀ°°ËÖà¡£µ«ÊÇºÈÁËÖàÒ²²»»áÏû³ıÊ±¼ä¡£½ñÌìÊÇÃÀºÃµÄÒ»Ìì¡£ÀÏ·òÒ²¸Ğ¾õÉñÇåÆøË¬¡£ºÃÁË£¡´óÏÀ²»±Ø»¨ÒøÁ½£¡»ú»áÉÙÓĞ£¬¸Ï¿ìÕùÈ¡Á·¹¦°É£¡", 0);
		-- end
		
		-- return 1;		
	-- end
	
	-- nLevel = GetLevel();	
	-- if (nLevel < AEXP_NEEDLEVEL) then
		-- Say(strNeedLevel, 0);
	-- else
		-- Say("?d?gfhgd¦Ìghfdsfgd¦Ìdsfsdfsdfsdfsfsdgdfgdfhgfh£¡",
			-- 4,
			-- "ºÃµÄ! ÎÒºÈ! /buy_yes",
			-- "ÇëÎÊ: Õâ¸öÖà,ºÈ¶à¾ÃÖ®ºó²Å»áÓĞ¹¦Ğ§? /check_time",
			-- "ÎÒÏëÖÆ×÷»ìÔªÁéÂ¶/refine",
			-- "ÏÂ´ÎÔÙËµ/OnCancel");
	-- end
end


-- function refine()
	-- DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
-- end

-- function check_faction()
	-- if (GetTask(3) >= 10*256) and (GetTask(3) ~= 75*256) then			-- ÌìÍõ»ò´ËÃÅÅÉ³öÊ¦
		-- SetTask(137,3)
		-- return 3
	-- elseif (GetTask(7) >= 10*256) and (GetTask(7) ~= 75*256) then		-- ÉÙÁÖ»ò´ËÃÅÅÉ³öÊ¦
		-- SetTask(137,7)
		-- return 7
	-- elseif (GetTask(2) >= 10*256) and (GetTask(2) ~= 75*256) then		-- ÌÆÃÅ»ò´ËÃÅÅÉ³öÊ¦
		-- SetTask(137,2)
		-- return 2
	-- elseif (GetTask(10) >= 10*256) and (GetTask(10) ~= 75*256) then	-- Îå¶¾»ò´ËÃÅÅÉ³öÊ¦
		-- SetTask(137,10)
		-- return 10
	-- elseif (GetTask(1) >= 10*256) and (GetTask(1) ~= 75*256) then		-- ¶ëáÒ»ò´ËÃÅÅÉ³öÊ¦
		-- SetTask(137,1)
		-- return 1
	-- elseif (GetTask(6) >= 10*256) and (GetTask(6) ~= 75*256) then		-- ´äÑÌ»ò´ËÃÅÅÉ³öÊ¦
		-- SetTask(137,6)
		-- return 6
	-- elseif (GetTask(4) >= 10*256) and (GetTask(4) ~= 75*256) then		-- ÌìÈÌ»ò´ËÃÅÅÉ³öÊ¦
		-- SetTask(137,4)
		-- return 4
	-- elseif (GetTask(8) >= 10*256) and (GetTask(8) ~= 75*256) then		-- Ø¤°ï»ò´ËÃÅÅÉ³öÊ¦
		-- SetTask(137,8)
		-- return 8
	-- elseif (GetTask(5) >= 10*256) and (GetTask(5) ~= 75*256) then		-- Îäµ±»ò´ËÃÅÅÉ³öÊ¦
		-- SetTask(137,5)
		-- return 5
	-- elseif (GetTask(9) >= 10*256) and (GetTask(9) ~= 75*256) then		-- À¥ÂØ»ò´ËÃÅÅÉ³öÊ¦
		-- SetTask(137,9)
		-- return 9
	-- else																					-- °×ÃûµÄ£¬²»ĞèÒª¸üĞÂ
		-- SetTask(137,20)
		-- return 20
	-- end
-- end;

-- function check_time()

	-- Ãâ·ÑË«¾­Ñé
	-- if (AEXP_IsFreeTimeDoubleExp() == 1) then-- Ãâ·ÑË«¾­ÑéÈÕ×Ó
		-- Say("ÏÖÔÚÌÒ»¨µºÁéÆøºÜÍú£¬ÕâÊ±ºòÁ·¹¦²»ĞèÒªÓÃµ½À°°ËÖà¡£µ«ÊÇºÈÁËÀ°°ËÖàÒ²²»»á»¨Ê±¼ä¡£»ú»á²»¶à¡£´óÏÀ¿ìÕùÈ¡Á·¹¦°É£¡", 0);
		-- return 1;
	-- end
	
	-- nCurValue = GetTask(AEXP_TASKID);
	
	-- if (nCurValue == 0) then	-- ¿ÉÄÜ´ÓÎ´ºÈ¹ıÀ°°ËÖà
		-- Say("ºÃÏñ<color=red>À°°ËÖà<color>Ã»ÓĞ×÷ÓÃ!ÔÙºÈÒ»Íë¿´¿´°É!", 0);
		-- return 0;
	-- end

	-- nTemp = mod(nCurValue, AEXP_TIME_ONE);
	-- nHours = (nCurValue - nTemp) / AEXP_TIME_ONE; -- ÒÑºÈµÄÍëÊı(Ğ¡Ê±Êı)
	-- nMinutes = nTemp * 60 / AEXP_TIME_ONE;

	-- if (nHours == 0) and (nMinutes < AEXP_FREQ) then	-- ¹Ò»úÊ±¼ä²»×ã
		-- Say("À°°ËÖàµÄ¹¦Ğ§Ã»ÓĞÁË£¡ÄãÖ»ÒªÔÙÂòÒ»µã¾Í¿ÉÒÔ¼ÌĞø·¢»ÓÁË!", 0);
	-- elseif (nHours > 0) then				-- »¹ÓĞ1Ğ¡Ê±ÒÔÉÏ
		-- Say("À°°ËÖàµÄ¹¦Ğ§¿ÉÒÔÎ¬³Ö<color=red> "..nHours.."<color>Ğ¡Ê±<color=red>"..nMinutes.."<color> ·Ö", 0);
	-- else
		-- Say("À°°ËÖàµÄ¹¦Ğ§¿ÉÒÔÎ¬³Ö<color=red> "..nMinutes.."<color> ·Ö", 0);
	-- end
-- end;

-- g_arBuyNumber = {1, 2, 4, 8}; -- µ¥Î»£ºĞ¡Ê±
-- function buy_yes()
	-- nLevel = GetLevel();
	-- arBuyStr = {};
	-- nCount = getn(g_arBuyNumber);

	-- for i = 1, nCount do
		-- nNumber = g_arBuyNumber[i];
		-- nMoney = AEXP_GetNeedMoney(nLevel, nNumber);
		-- if (nMoney > 0) then
			-- arBuyStr[i] = ""..nNumber.."Íë[ "..nMoney.." l­îng]".."/buy_deal";
		-- end
	-- end

	-- arBuyStr[nCount + 1] = "ÎÒ»¹²»ÏëºÈ!/OnCancel"
	-- Say("ÄãÏëºÈ¼¸Íë?", nCount+1, arBuyStr);
-- end;

-- function buy_deal(nSel)
	-- nNumber = g_arBuyNumber[nSel+1]; -- µ¥Î»£ºĞ¡Ê±
	
	--ÍëÊı¼ì²é - start
	-- nCurValue = GetTask(AEXP_TASKID);
	-- temp = (AEXP_TIME_MAX - nCurValue) / AEXP_TIME_ONE; -- Ä¿Ç°¿ÉºÈµÄÍëÊı(Ğ¡Ê±Êı)
	-- nRemainNumber = floor(temp);
	-- if (nRemainNumber <= 0) then
		-- Msg2Player("ÄãÒÑ¾­ºÈÁË"..AEXP_HOUR_MAX.."ÍëÀ°°ËÖà, ¸Ğ¾õ×Ô¼ºÒÑ¾­ºÈ²»ÏÂÁË.¿ÉÄÜ1Ğ¡Ê±Ö®ºóÏû»¯ÁË²Å¿ÉÒÔºÈ¼¸Íë. ")
		-- return 0;
	-- end

	-- if (nNumber > nRemainNumber) then
		-- Msg2Player("Äã¸Ğ¾õ×Ô¼º×î¶à¿ÉÒÔºÈ"..AEXP_HOUR_MAX.."ÍëÀ°°ËÖà,ÏÖÔÚºÈÍêÁË"..(AEXP_HOUR_MAX - nRemainNumber).."Íë. ")
		-- nNumber = nRemainNumber;
	-- end
	--ÍëÊı¼ì²é - end

	-- nLevel = GetLevel();
	-- nMoney = AEXP_GetNeedMoney(nLevel, nNumber);
	-- if (GetCash() >= nMoney) then
		-- Pay(nMoney);
		-- nValueTotal = nCurValue + (AEXP_TIME_ONE * nNumber);
		-- SetTask(AEXP_TASKID,  nValueTotal);

		-- ÍëÊı¼°Ê±¼äÌáÊ¾ - start
		-- nTemp = mod(nValueTotal, AEXP_TIME_ONE);
		-- nHours = (nValueTotal - nTemp) / AEXP_TIME_ONE; -- ÒÑºÈµÄÍëÊı(Ğ¡Ê±Êı)
		-- nMinutes = nTemp * 60 / AEXP_TIME_ONE;
		-- Msg2Player("ÄãÒÑ¾­ºÈÁË"..nNumber.."Æ¿À°°ËÖà. ¿ÉÒÔ×Ô¶¯Á·¹¦"..nHours.."Ğ¡Ê±"..nMinutes.."·Ö");
		-- ÍëÊı¼°Ê±¼äÌáÊ¾ - end
				
		-- if (nCurValue == 0) then -- ¿ÉÄÜÊÇµÚÒ»´ÎºÈ
			-- Talk(1,"","À°°ËÖàÖ»ÔÚÌÒ»¨µºÉÏ²ÅÓĞ¹¦Ğ§! Èç¹ûºÈÀë¿ªÕâÀï»áÊ§È¥¹¦Ğ§")
		-- end
	-- else
		-- Talk(1,"","À°°ËÖàÊÇÒ»ÖÖÉñÆøµÄÒ©Æ·£¬²»ÄÜËÍ!´óÏÀÒª´ø"..nMoney.."Á½À´Âò!")
	-- end
-- end;

function OnCancel()
end;
