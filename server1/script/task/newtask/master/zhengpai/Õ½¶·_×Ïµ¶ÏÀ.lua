-------------------------------------------------------------------------
-- FileName		:	ս��_�ϵ���.lua
-- Author		:	xiaoyang
-- CreateTime	:	2004-12-15 14:35:34
-- Desc			:	�ϵ���
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\master\\lib_setmembertask.lua")
Include("\\script\\__\\npc_dtd3_ta_dao_hiep.lua")

function OnDeath()
	-- Uworld1001 = nt_getTask(1001)
	-- if ( Uworld1001 == 170 ) then
		-- AddOwnExp(100000)
		-- Msg2Player("B�n �� l�y ���c C�u Hi�n Chi Ch�, quay v� ��i L� g�p M�c S�u ph�c m�nh.")
		-- SetMemberTask(1001,170,180,newtask3)
	-- end
	bil_Func_Main_TaDaoHiep_Death()
end

function newtask3()
	Talk(1,"","Ta b�i d��i tay ng��i, �� ph� l�ng huynh �� ph� th�c. Ch� c� th� l�y c�i ch�t �� b�o ��p, ng��i �� l�y ���c n� r�i, h�y bi�n �i.")
end
