--中原南区 襄阳府 ⒎人3小邓子对话


Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\answer.lua")

function main()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end

	local tbDailog = DailogClass:new(szNpcName)
	tbDailog.szTitleMsg = "<#><npc>Ti觰 ng T�:Ta  ╪ r錳 m閠 l� b竔 ch h錸g th� hi c琺 , n誹 nh� c� th� ╪ m閠 b鱝 i m� c琺 , kh玭g bi誸 頲 c� m蕐 h秓."
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)
	--弹出对话框
	tbDailog:Show()
end

