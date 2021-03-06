-- 功能：重铸装备
-- 小邓兜兜 2008.1.14

Include( "\\script\\task\\system\\task_string.lua" );

-- 重铸
Include("\\script\\global\\recoin_goldenequip.lua")
-- 蓐返安邦首饰
Include("\\script\\task\\equipex\\head.lua");
-- 白金装备
Include("\\script\\global\\platina_upgrade.lua")
--重铸白金装备
--Include("\\script\\global\\recoin_platinaequip.lua")
--Include("\\script\\event\\reclaim_equip\\reclaim_equip.lua") --回收绑定物品
--重铸金误装备
Include("\\script\\event\\equip_publish\\jinwu\\refine_equip.lua")
Include("\\script\\misc\\itemexchangevalue\\itemexchangevalue.lua") -- 兑换精付宝箱
Include("\\script\\misc\\itemexchangevalue\\ex_goldequip_lingpai.lua")	-- 兑换孝装备割牌（紫蟒等）
Include("\\script\\activitysys\\npcdailog.lua")

--重铸紫蟒 - By DinhHQ
Include("\\script\\vng_feature\\trungluyen\\refine_equip.lua")

function main()
	if (CheckGlobalTradeFlag() == 0) then		-- 全局经挤系莩交易开关
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
	tbDailog.szTitleMsg = "<dec><npc>Ta mai danh 萵 t輈h b蕐 l﹗ nay, h玬 nay l筰 b� ngi t譵 頲, n鉯 v藋 ngi l� v� <color=yellow> Ho祅g Kim<color> trang b� m� n y �?"
	tbDailog.szTitleMsg = gsub(tbDailog.szTitleMsg , "<dec>", "")
	local aryDescribe =
	{
		--"我想打听关芋蓐返安邦首饰的盛情/main_talk",		
		--"我想请你铸造白金装备/platina_main",
		-- "Ta mu鑞 nh� ngi c l筰 Kim � trang b� /refine_jinwu",		
		--"我想请你重铸白金装备/recoin_platina_main",
		--Change request 04/06/2011,关闭制造白金装备 - Modified by DinhHQ - 20110605
		--"我想请你帮乏拆分一些黄金装备/split_entry",
		--"我想臃碎片合成一些黄金装备/compose_entry",
		--"我想换铁血丹/exchange_tiexuedan",
		--"我想进行蓐返鸿影首饰的制作/perfect_hongying_main",
		--"我这碉有一些兜拥的打造材赶/equipex_recycle_main",
		--"我想把碎片换成系莠黄金装备的其他碎片/exchange_entry",
		-- "Ta mu鑞 d飊g trang b� i l蕐 H錸 Th筩h/exchange_olditem",
		-- "Ta mu鑞 d飊g H錸 Th筩h i l蕐 l謓h b礽 trang b� /exchange_lingpai",
		-- "Ta mu鑞 d飊g l謓h b礽 i l蕐 trang b� /exchange_lingpai2goldequip",
	}	
	
	--重阜紫蟒
	--tbDailog:AddOptEntry("我想请人重阜紫蟒装备", tbVNG_RefineEquip.ShowDialog, {tbVNG_RefineEquip})	
	
	for i = 1, getn(aryDescribe) do
		local _,_, szOpt, szFun = strfind(aryDescribe[i], "([^/]+)/([^/]+)")
		local fn = getglobal(szFun)
		if fn then
			tbDailog:AddOptEntry(szOpt, fn);	
		end
	end
	
	--弹出对话框
	tbDailog:Show()
	
-- 如果接杆蓐返安邦任务，插入选项
--	local nNextStatus = check_nexttask_status();
--	if (check_nexttask_condition() == 1) then
--		tinsert(aryDescribe, 2, "我想继续打造蓐返的安邦首饰/nexttask_talk");
--	end
--	tinsert(aryDescribe, 2, "回收拥痉绑定装备/reclaimBindEquip_main");
	
end

function exchange_tiexuedan()
	if (CalcFreeItemCellCount() < 2) then
		Say("в b秓 m v藅 ph萴 an to祅, xin ch鮝 l筰 2 kho秐g tr鑞g tr� l猲", 0);
		return
	end
	GiveItemUI("фi thi誸 huy誸 產n", "m 1 m鉵 ho祅g kim m玭 ph竔 t � ph輆 di", "do_exchange_tiexuedan", "onCancel")
end

function do_exchange_tiexuedan(nCount)
	if nCount ~= 1 then
		CreateTaskSay({"S� lng v藅 ph萴 b� v祇 kh玭g h頿 y猽 c莡 ", "� ta nh莔,  ta b� v祇 l筰./exchange_tiexuedan", "� ta nh莔,  ta 甶 1 l骳 l竧 quay l筰./onCancel"});
		return
	end

	local nItemIndex	= GetGiveItemUnit(1)
	local nQuality		= GetItemQuality(nItemIndex);	--品质
	
	if (nQuality ~= 1 or GetGlodEqIndex(nItemIndex) > 140) then
		CreateTaskSay({"Лa ta 1 b� trang b� ho祅g kim m玭 ph竔 ", "� ta nh莔,  ta b� v祇 l筰./exchange_tiexuedan", "� ta nh莔,  ta 甶 1 l骳 l竧 quay l筰./onCancel"});
		return
	end
	
	if (RemoveItemByIndex(nItemIndex) ~= 1) then
		WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t %s",
			"фi thi誸 huy誸 產n Error",
			GetLocalDate("%y-%m-%d %H:%M:%S"),
			GetAccount(),
			GetName(),
			"Thanh tr� trang b� ho祅g kim m玭 ph竔 th蕋 b筰:\t"..GetItemName(nCurItemIdx)));
	end
	
	
	for i = 1, 20 do
		AddItem(6, 1, 2163, 1, 1, 0);
	end
	Msg2Player("Ch骳 m鮪g ngi l蕐 頲 20 vi猲 thi誸 huy誸 產n");
	WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t %s",
			"фi thi誸 huy誸 產n Success",
			GetLocalDate("%y-%m-%d %H:%M:%S"),
			GetAccount(),
			GetName(),
			format("фi 頲 %s thi誸 huy誸 產n", GetItemName(nItemIndex))));
end
