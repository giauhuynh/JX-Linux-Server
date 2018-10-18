
-- 邪教主线相关的战斗人物肖无常脚本
-- Edited by peres
-- 2005/01/18

Include("\\script\\task\\newtask\\newtask_head.lua");
Include("\\script\\task\\newtask\\lib_setmembertask.lua");
Include("\\script\\task\\newtask\\master\\xiepai\\maintask.lua");
Include("\\script\\__\\npc_tcs_tieu_vo_thuong.lua");

function OnDeath()
	bilFunc_TCS_TieuVoThuong_Death()
	-- SetMemberTask(1003,210,220,task_level40_05);
end