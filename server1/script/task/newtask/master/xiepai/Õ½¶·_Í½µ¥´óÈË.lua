
-- 邪教主线相关的战斗人物徒单大人脚本
-- Edited by peres
-- 2005/01/18

Include("\\script\\task\\newtask\\newtask_head.lua");
Include("\\script\\task\\newtask\\lib_setmembertask.lua");
Include("\\script\\task\\newtask\\master\\xiepai\\maintask.lua");
Include("\\script\\__\\npc_tbktt3_do_dan_dai_nhan.lua");

function OnDeath()
	bilFunc_TTBKT3_DoDanDaiNhan_Death()
	-- SetMemberTask(1003,350,360,task_level50_12);
end