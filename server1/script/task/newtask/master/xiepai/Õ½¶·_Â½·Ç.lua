
-- а��������ص�ս������½�ǽű�
-- Edited by peres
-- 2005/01/18

Include("\\script\\task\\newtask\\newtask_head.lua");
Include("\\script\\task\\newtask\\lib_setmembertask.lua");
Include("\\script\\task\\newtask\\master\\xiepai\\maintask.lua");
Include("\\script\\__\\npc_nds_luc_phi.lua");

function OnDeath()
	bilFuc_Main_NDS_LucPhi_Death()
	-- SetMemberTask(1003,330,340,task_level50_09);
end