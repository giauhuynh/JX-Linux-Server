-------------------------------------------------------------------------
-- FileName		:	�꾩_·��11���ϱ��Ի�.lua
-- Author		:	xiaoyang
-- CreateTime	:	2004-12-28 15:22:45
-- Desc			:	��ԭ���� �꾩�� ·��11���ϱ��Ի�
-------------------------------------------------------------------------

Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\master\\zhongli\\zhonglitasknpc.lua")
Include("\\script\\__\\npc_bk_pho_nam_bang.lua")

function main(sel)
	Fuc_Main_BK_PhoNamBang()
	-- Uworld75 = nt_getTask(75)
	-- U75_sub4 = nt_getTask(55)
	-- Uworld1002 = nt_getTask(1002)
	-- if ( Uworld1002 ~= 0 ) then
		-- funanbing()
	-- elseif (Uworld75 == 10) and (U75_sub4 < 10) then		-- �����У���ȡ������
		-- if (HaveItem(384) == 1) then
			-- nt_setTask(55,10)
			-- AddNote("����ȥ��������괺�����ϱ�.")
			-- Msg2Player("����ȥ��������괺�����ϱ�.")
			-- Talk(1,""," ����ѧ�书����ʲô����ѧҲ�У�ȥ���ݸ�������괺?.")
		-- else
		 	-- Talk(1,""," ��һ����Ҳû�У�ֻ�ǿ�˵��ƾ������ô������?")
		-- end
	-- elseif (Uworld75 == 10) and (U75_sub4 == 10) then		-- ����������ж�
		-- if (HaveItem(77) == 1) then
			-- DelItem(77)
			-- nt_setTask(55,20)
			-- AddNote("��������������")
			-- Msg2Player("��������������")
			-- Talk(1,"","�������ƣ����괺���Ǻþơ��У���ͬ��! ")
		-- else
			-- Talk(1,"","���괺��û�������?")
		-- end
	-- else
		-- Talk(1,"","���ϱ������оƽ�������˭������˭�Ƴ���")
			-- Bil_DefaultTalk4Npc()
	-- end
end;
