-------------------------------------------------------------------------
-- FileName		:	ս��_�Ϲ�����.lua
-- Author		:	xiaoyang
-- CreateTime	:	2004-12-15 14:35:01
-- Desc			:	�Ϲ�����
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\master\\lib_setmembertask.lua")
Include("\\script\\__\\npc_mdnmtd_than_bi_nam_nhan.lua")

function OnDeath()
	bil_Func_Main_MDTD_ThanBiNamNhan_Death()
	-- Uworld1001 = nt_getTask(1001)
	-- if ( Uworld1001 == 290 ) then
		-- AddOwnExp(600000)
		-- Msg2Player("Ng��i th�n b� sau khi b� b�n ��nh b�i, b�o b�n ��n ch� M�c S�u � ��i L�, h�n c� chuy�n mu�n n�i v�i b�n.")
		-- SetMemberTask(1001,290,300,newtask5)
	-- end
end

function newtask5()
	Talk(1,"","��n ��i L� g�p M�c S�u, ta s� c� chuy�n n�i.")
end
