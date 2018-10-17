
-- 战斗人物夏侯复死亡脚本
-- Edited by peres
-- 2005/01/17

Include("\\script\\task\\newtask\\newtask_head.lua");
Include("\\script\\task\\newtask\\lib_setmembertask.lua");
Include("\\script\\task\\newtask\\master\\xiepai\\maintask.lua");
Include("\\script\\__\\npc_tts_ha_hau_phuc.lua");

function OnDeath()
	bilFuc_Main_TTS_HaHauPhuc()
	-- SetMemberTask(1003,110,120,task_level30_05) 
end
