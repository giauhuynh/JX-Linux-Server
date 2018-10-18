-- ���ܣ�����װ��
-- С�˶��� 2008.1.14

Include( "\\script\\task\\system\\task_string.lua" );

-- ����
Include("\\script\\global\\recoin_goldenequip.lua")
-- �귵��������
Include("\\script\\task\\equipex\\head.lua");
-- �׽�װ��
Include("\\script\\global\\platina_upgrade.lua")
--�����׽�װ��
--Include("\\script\\global\\recoin_platinaequip.lua")
--Include("\\script\\event\\reclaim_equip\\reclaim_equip.lua") --���հ���Ʒ
--��������װ��
Include("\\script\\event\\equip_publish\\jinwu\\refine_equip.lua")
Include("\\script\\misc\\itemexchangevalue\\itemexchangevalue.lua") -- �һ���������
Include("\\script\\misc\\itemexchangevalue\\ex_goldequip_lingpai.lua")	-- �һ�Тװ�����ƣ������ȣ�
Include("\\script\\activitysys\\npcdailog.lua")

--�������� - By DinhHQ
Include("\\script\\vng_feature\\trungluyen\\refine_equip.lua")

function main()
	if (CheckGlobalTradeFlag() == 0) then		-- ȫ�־���ϵݳ���׿���
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
	tbDailog.szTitleMsg = "<dec><npc>Ta mai danh �n t�ch b�y l�u nay, h�m nay l�i b� ng��i t�m ���c, n�i v�y ng��i l� v� <color=yellow> Ho�ng Kim<color> trang b� m� ��n ��y �?"
	tbDailog.szTitleMsg = gsub(tbDailog.szTitleMsg , "<dec>", "")
	local aryDescribe =
	{
		--"������������귵�������ε�ʢ��/main_talk",		
		--"������������׽�װ��/platina_main",
		-- "Ta mu�n nh� ng��i ��c l�i Kim � trang b� /refine_jinwu",		
		--"�������������׽�װ��/recoin_platina_main",
		--Change request 04/06/2011,�ر�����׽�װ�� - Modified by DinhHQ - 20110605
		--"��������﷦���һЩ�ƽ�װ��/split_entry",
		--"����ӷ��Ƭ�ϳ�һЩ�ƽ�װ��/compose_entry",
		--"���뻻��Ѫ��/exchange_tiexuedan",
		--"��������귵��Ӱ���ε�����/perfect_hongying_main",
		--"�������һЩ��ӵ�Ĵ���ĸ�/equipex_recycle_main",
		--"�������Ƭ����ϵݬ�ƽ�װ����������Ƭ/exchange_entry",
		-- "Ta mu�n d�ng trang b� ��i l�y H�n Th�ch/exchange_olditem",
		-- "Ta mu�n d�ng H�n Th�ch ��i l�y l�nh b�i trang b� /exchange_lingpai",
		-- "Ta mu�n d�ng l�nh b�i ��i l�y trang b� /exchange_lingpai2goldequip",
	}	
	
	--�ظ�����
	--tbDailog:AddOptEntry("���������ظ�����װ��", tbVNG_RefineEquip.ShowDialog, {tbVNG_RefineEquip})	
	
	for i = 1, getn(aryDescribe) do
		local _,_, szOpt, szFun = strfind(aryDescribe[i], "([^/]+)/([^/]+)")
		local fn = getglobal(szFun)
		if fn then
			tbDailog:AddOptEntry(szOpt, fn);	
		end
	end
	
	--�����Ի���
	tbDailog:Show()
	
-- ����Ӹ��귵�������񣬲���ѡ��
--	local nNextStatus = check_nexttask_status();
--	if (check_nexttask_condition() == 1) then
--		tinsert(aryDescribe, 2, "������������귵�İ�������/nexttask_talk");
--	end
--	tinsert(aryDescribe, 2, "����ӵ����װ��/reclaimBindEquip_main");
	
end

function exchange_tiexuedan()
	if (CalcFreeItemCellCount() < 2) then
		Say("�� b�o ��m v�t ph�m an to�n, xin ch�a l�i 2 kho�ng tr�ng tr� l�n", 0);
		return
	end
	GiveItemUI("��i thi�t huy�t �an", "�em 1 m�n ho�ng kim m�n ph�i ��t � ph�a d��i", "do_exchange_tiexuedan", "onCancel")
end

function do_exchange_tiexuedan(nCount)
	if nCount ~= 1 then
		CreateTaskSay({"S� l��ng v�t ph�m b� v�o kh�ng h�p y�u c�u ", "� ta nh�m, �� ta b� v�o l�i./exchange_tiexuedan", "� ta nh�m, �� ta �i 1 l�c l�t quay l�i./onCancel"});
		return
	end

	local nItemIndex	= GetGiveItemUnit(1)
	local nQuality		= GetItemQuality(nItemIndex);	--Ʒ��
	
	if (nQuality ~= 1 or GetGlodEqIndex(nItemIndex) > 140) then
		CreateTaskSay({"��a ta 1 b� trang b� ho�ng kim m�n ph�i ", "� ta nh�m, �� ta b� v�o l�i./exchange_tiexuedan", "� ta nh�m, �� ta �i 1 l�c l�t quay l�i./onCancel"});
		return
	end
	
	if (RemoveItemByIndex(nItemIndex) ~= 1) then
		WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t %s",
			"��i thi�t huy�t �an Error",
			GetLocalDate("%y-%m-%d %H:%M:%S"),
			GetAccount(),
			GetName(),
			"Thanh tr� trang b� ho�ng kim m�n ph�i th�t b�i:\t"..GetItemName(nCurItemIdx)));
	end
	
	
	for i = 1, 20 do
		AddItem(6, 1, 2163, 1, 1, 0);
	end
	Msg2Player("Ch�c m�ng ng��i l�y ���c 20 vi�n thi�t huy�t �an");
	WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t %s",
			"��i thi�t huy�t �an Success",
			GetLocalDate("%y-%m-%d %H:%M:%S"),
			GetAccount(),
			GetName(),
			format("��i ���c %s thi�t huy�t �an", GetItemName(nItemIndex))));
end
