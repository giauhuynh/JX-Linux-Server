
-- 邪教主线相关的战斗人物最终BOSS廖定死亡脚本
-- Edited by peres
-- 2005/01/18

Include("\\script\\task\\newtask\\newtask_head.lua");
Include("\\script\\task\\newtask\\lib_setmembertask.lua");
Include("\\script\\task\\newtask\\master\\xiepai\\maintask.lua");
Include("\\script\\__\\npc_lcd_lieu_dinh.lua");

function OnDeath()
	bilFuc_Main_LCD_LieuDinh_Death()
	-- SetMemberTask(1003,410,420,task_level60_06);
end