-- �ٰ���ְ�ܡ���������
-- By Li_Xin (2004-07-20)

Include("\\script\\global\\shenmi_chapman.lua") 
Include("\\script\\lib\\gb_taskfuncs.lua");
Include("\\script\\task\\system\\task_string.lua")
Include("\\script\\event\\act2years_yn\\baibaoxiang.lua") 
Include("\\script\\event\\leize_upplatina\\platina_upgrade.lua")--�׽�װ��
Include("\\script\\event\\leize_upplatina\\recoin_platinaequip.lua")--�����׽�װ��
function main()
	if (CheckGlobalTradeFlag() == 0) then		-- ȫ�־���ϵͳ���׿���
		return
	end
	
	local tbDecOpp =
	{
		"<dec><npc>Ta t� t�y v�c xa x�i v�n d�m t�i trung nguy�n nghe n�i n�i ��y xu�t hi�n <color=yellow>L�i tr�ch ch�y<color> ta t�ng xem m�t b� t�ch n�i v� l�i tr�ch ch�y l� <color=yellow>Trang b� ho�ng kim <color> th�ng c�p th�nh <color=yellow>Trang b� b�ch kim<color> c� hay kh�ng mu�n th� m�t l�n ch� c�n ���ng ta 10000 l��ng b�c.",
		
		--Change request 04/06/2011,�ر�����׽�װ�� - Modified by DinhHQ - 20110605
		--"���������׽�װ��/upgrade_paltinaequip",
		--"����ѻƽ�װ������ɰ׽�װ��/upgrade_goldformplatina",
		
		--"�������������׽�װ��/recoin_platina_main",
		--"<#>���뽫����׽�װ������/get1",
		--"<#>���뽫����ƽ�װ������ɰ׽�װ��/get2",
		--"<#> ��� <װ�����>/deal_brokenequip",
		--"�����˽�׽�װ�����/unweave_paltinaequip",
		--"<#>�ٱ���/BaiBaoXiang_Give_UI",
		"<#>Ta ch�ng qua �i ngang qua/no",
		
	};
	local ndate = tonumber(GetLocalDate("%y%m%d%H"))
	
	--Say(str[1],5,str[6],str[2],str[3],str[4], str[5])
	CreateTaskSay(tbDecOpp);
end;

function no()
end;
