-- ¹¦ÄÜ£ºÖØÖı×°±¸
-- Ğ¡µË¶µ¶µ 2008.1.14

Include( "\\script\\task\\system\\task_string.lua" );

-- ÖØÖı
Include("\\script\\global\\recoin_goldenequip.lua")
-- İê·µ°²°îÊ×ÊÎ
Include("\\script\\task\\equipex\\head.lua");
-- °×½ğ×°±¸
Include("\\script\\global\\platina_upgrade.lua")
--ÖØÖı°×½ğ×°±¸
--Include("\\script\\global\\recoin_platinaequip.lua")
--Include("\\script\\event\\reclaim_equip\\reclaim_equip.lua") --»ØÊÕ°ó¶¨ÎïÆ·
--ÖØÖı½ğÎó×°±¸
Include("\\script\\event\\equip_publish\\jinwu\\refine_equip.lua")
Include("\\script\\misc\\itemexchangevalue\\itemexchangevalue.lua") -- ¶Ò»»¾«¸¶±¦Ïä
Include("\\script\\misc\\itemexchangevalue\\ex_goldequip_lingpai.lua")	-- ¶Ò»»Ğ¢×°±¸¸îÅÆ£¨×ÏòşµÈ£©
Include("\\script\\activitysys\\npcdailog.lua")

--ÖØÖı×Ïòş - By DinhHQ
Include("\\script\\vng_feature\\trungluyen\\refine_equip.lua")

function main()
	if (CheckGlobalTradeFlag() == 0) then		-- È«¾Ö¾­¼·Ïµİ³½»Ò×¿ª¹Ø
		return
	end
	
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end

	local tbDailog = DailogClass:new(szNpcName)
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	tbDailog.szTitleMsg = "<dec><npc>Ta mai danh Èn tİch bÊy l©u nay, h«m nay l¹i bŞ ng­¬i t×m ®­îc, nãi vËy ng­¬i lµ v× <color=yellow> Hoµng Kim<color> trang bŞ mµ ®Õn ®©y µ?"
	tbDailog.szTitleMsg = gsub(tbDailog.szTitleMsg , "<dec>", "")
	local aryDescribe =
	{
		--"ÎÒÏë´òÌı¹ØÓóİê·µ°²°îÊ×ÊÎµÄÊ¢Çé/main_talk",		
		--"ÎÒÏëÇëÄãÖıÔì°×½ğ×°±¸/platina_main",
		-- "Ta muèn nhê ng­êi ®óc l¹i Kim ¤ trang bŞ /refine_jinwu",		
		--"ÎÒÏëÇëÄãÖØÖı°×½ğ×°±¸/recoin_platina_main",
		--Change request 04/06/2011,¹Ø±ÕÖÆÔì°×½ğ×°±¸ - Modified by DinhHQ - 20110605
		--"ÎÒÏëÇëÄã°ï·¦²ğ·ÖÒ»Ğ©»Æ½ğ×°±¸/split_entry",
		--"ÎÒÏëÓ·ËéÆ¬ºÏ³ÉÒ»Ğ©»Æ½ğ×°±¸/compose_entry",
		--"ÎÒÏë»»ÌúÑªµ¤/exchange_tiexuedan",
		--"ÎÒÏë½øĞĞİê·µºèÓ°Ê×ÊÎµÄÖÆ×÷/perfect_hongying_main",
		--"ÎÒÕâµïÓĞÒ»Ğ©¶µÓµµÄ´òÔì²Ä¸Ï/equipex_recycle_main",
		--"ÎÒÏë°ÑËéÆ¬»»³ÉÏµİ¬»Æ½ğ×°±¸µÄÆäËûËéÆ¬/exchange_entry",
		-- "Ta muèn dïng trang bŞ ®æi lÊy Hån Th¹ch/exchange_olditem",
		-- "Ta muèn dïng Hån Th¹ch ®æi lÊy lÖnh bµi trang bŞ /exchange_lingpai",
		-- "Ta muèn dïng lÖnh bµi ®æi lÊy trang bŞ /exchange_lingpai2goldequip",
	}	
	
	--ÖØ¸·×Ïòş
	--tbDailog:AddOptEntry("ÎÒÏëÇëÈËÖØ¸·×Ïòş×°±¸", tbVNG_RefineEquip.ShowDialog, {tbVNG_RefineEquip})	
	
	for i = 1, getn(aryDescribe) do
		local _,_, szOpt, szFun = strfind(aryDescribe[i], "([^/]+)/([^/]+)")
		local fn = getglobal(szFun)
		if fn then
			tbDailog:AddOptEntry(szOpt, fn);	
		end
	end
	
	--µ¯³ö¶Ô»°¿ò
	tbDailog:Show()
	
-- Èç¹û½Ó¸Ëİê·µ°²°îÈÎÎñ£¬²åÈëÑ¡Ïî
--	local nNextStatus = check_nexttask_status();
--	if (check_nexttask_condition() == 1) then
--		tinsert(aryDescribe, 2, "ÎÒÏë¼ÌĞø´òÔìİê·µµÄ°²°îÊ×ÊÎ/nexttask_talk");
--	end
--	tinsert(aryDescribe, 2, "»ØÊÕÓµ¾·°ó¶¨×°±¸/reclaimBindEquip_main");
	
end

function exchange_tiexuedan()
	if (CalcFreeItemCellCount() < 2) then
		Say("§Ó b¶o ®¶m vËt phÈm an toµn, xin chõa l¹i 2 kho¶ng trèng trë lªn", 0);
		return
	end
	GiveItemUI("§æi thiÕt huyÕt ®an", "§em 1 mãn hoµng kim m«n ph¸i ®Æt ë phİa d­íi", "do_exchange_tiexuedan", "onCancel")
end

function do_exchange_tiexuedan(nCount)
	if nCount ~= 1 then
		CreateTaskSay({"Sè l­îng vËt phÈm bá vµo kh«ng hîp yªu cÇu ", "µ ta nhÇm, ®Ó ta bá vµo l¹i./exchange_tiexuedan", "µ ta nhÇm, ®Ó ta ®i 1 lóc l¸t quay l¹i./onCancel"});
		return
	end

	local nItemIndex	= GetGiveItemUnit(1)
	local nQuality		= GetItemQuality(nItemIndex);	--Æ·ÖÊ
	
	if (nQuality ~= 1 or GetGlodEqIndex(nItemIndex) > 140) then
		CreateTaskSay({"§­a ta 1 bé trang bŞ hoµng kim m«n ph¸i ", "µ ta nhÇm, ®Ó ta bá vµo l¹i./exchange_tiexuedan", "µ ta nhÇm, ®Ó ta ®i 1 lóc l¸t quay l¹i./onCancel"});
		return
	end
	
	if (RemoveItemByIndex(nItemIndex) ~= 1) then
		WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t %s",
			"§æi thiÕt huyÕt ®an Error",
			GetLocalDate("%y-%m-%d %H:%M:%S"),
			GetAccount(),
			GetName(),
			"Thanh trõ trang bŞ hoµng kim m«n ph¸i thÊt b¹i:\t"..GetItemName(nCurItemIdx)));
	end
	
	
	for i = 1, 20 do
		AddItem(6, 1, 2163, 1, 1, 0);
	end
	Msg2Player("Chóc mõng ng­¬i lÊy ®­îc 20 viªn thiÕt huyÕt ®an");
	WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t %s",
			"§æi thiÕt huyÕt ®an Success",
			GetLocalDate("%y-%m-%d %H:%M:%S"),
			GetAccount(),
			GetName(),
			format("§æi ®­îc %s thiÕt huyÕt ®an", GetItemName(nItemIndex))));
end
