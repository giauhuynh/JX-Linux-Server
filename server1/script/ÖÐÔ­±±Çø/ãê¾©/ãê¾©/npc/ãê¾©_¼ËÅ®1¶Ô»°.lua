--��ԭ���� �꾩�� ��Ů1�Ի�

-- �޸ĺ���а��������ص��꾩����ű�
-- Edited by peres
-- 2005/01/18

Include("\\script\\task\\newtask\\newtask_head.lua");
Include("\\script\\task\\newtask\\lib_setmembertask.lua");
Include("\\script\\task\\newtask\\master\\xiepai\\maintask.lua");
Include("\\script\\__\\npc_bk_nhu_ngoc.lua")

function main(sel)
	Fuc_Main_BK_NhuNgoc()

-- ������ϵͳ��а��������صĽű� --

-- local myTaskValue = GetTask(1003)
-- local myCamp = nt_getCamp()

	-- if (myTaskValue==300) then -- ���꾩������ĶԻ�
		-- task_level50_03();
		-- return
	-- end

	
-- ������ϵͳ��а��������صĽű� --

-- if ( GetSex() == 0 ) then      -- ����Ա�Ϊ��
-- Say("��Ů���Բ������ڵ��ˣ����ӿͣ����ӻ����ұ�Ĺ���ɣ�",0)
-- else			       -- ����Ա�ΪŮ
-- Say("��Ů�����Ǹ������ˣ���α����ҿ����أ�", 0)
-- end;
	-- Bil_DefaultTalk4Npc()
end;


