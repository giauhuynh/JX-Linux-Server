--��ԭ���� �꾩�� ·��18�������Ի�

-- �޸ĺ���а��������ص��꾩�������ű�
-- Edited by peres
-- 2005/01/18

Include("\\script\\task\\newtask\\newtask_head.lua");
Include("\\script\\task\\newtask\\lib_setmembertask.lua");
Include("\\script\\task\\newtask\\master\\xiepai\\maintask.lua");
Include("\\script\\__\\npc_bk_tran_tam_bao.lua")

function main(sel)
	Fuc_Main_BK_TranTamBao()

-- ������ϵͳ��а��������صĽű� --

-- local myTaskValue = GetTask(1003)
-- local myCamp = nt_getCamp()

	-- if (myTaskValue==310) then
		-- task_level50_05();
		-- return
	-- elseif (myTaskValue==329) then
		-- task_level50_06();
		-- return
	-- elseif (myTaskValue==330) then -- ����õ���������ƿ�������������ĶԻ�
		-- Say("�������԰����ҵ��Ǹ���ƿ��������Ҽ���Ķ���!",0);
		-- return
	-- elseif (myTaskValue==340) then
		-- task_level50_10();
		-- return
	-- end

	
-- ������ϵͳ��а��������صĽű� --

-- Say("����������Щ�����Ϻõ���Ҥ��ɣ������ƣ�����ɫ���ˮ��գ��Ҷ�������������Ũ���̶����䣬����Ө����������ʯ֮�У������������������Ʒ���������õĹ�ҤҲ������ˣ�",0)
	-- Bil_DefaultTalk4Npc()
end;

