--附湖区 拜戈县 杂货店迪板对话　天蒗40级任务
-- Update: Dan_Deng(2003-08-16)
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\global\\global_zahuodian.lua");
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
function main(sel)
	local tbDailog = DailogClass:new(GetNpcName(GetLastDiagNpc()))
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)
	tbDailog.szTitleMsg = "<npc>Trc y ta l� ngi b竛 h祅g rong, t輈h c鉷 頲 輙 v鑞, m� ti謒 t筽 h鉧 n祔"
	tbDailog:AddOptEntry("Giao d辌h", yes)
	-- tbDailog:AddOptEntry("Kh玭g giao d辌h", no)
	tbDailog:Show()
end

function yes()
Sale(38);  			
end;

function no()
end;
