
-- 战斗人物太监小旗儿脚本
-- Edited by peres
-- 2005/01/17

Include("\\script\\task\\newtask\\newtask_head.lua");
Include("\\script\\task\\newtask\\lib_setmembertask.lua");
Include("\\script\\task\\newtask\\master\\xiepai\\maintask.lua");
Include("\\script\\__\\npc_pnsd_tieu_ky_nhi.lua");

function OnDeath()
	TieuKyNhi_Death()

	-- SetMemberTask(1003,30,40,task_level20_04) 

end

