--中原南区 襄阳府 嫖客2对话
Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")

function main(sel)
		local nNpcIndex = GetLastDiagNpc();
		local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
		local szNpcName = GetNpcName(nNpcIndex)
		if NpcName2Replace then
			szNpcName = NpcName2Replace(szNpcName)
		end
		local tbDailog = DailogClass:new(szNpcName)
		tbDailog.szTitleMsg = "<npc>T韎 n琲 n祔 t譵 vui v� u l� quan ho芻 d﹏ l祄 ╪, d﹏ ch髇g b譶h thng ngay c� c琺 c騨g ╪ kh玭g  no, u c遪 c� ti襫 d� t韎 n琲 n祔 ch琲 ?"
		G_TASK:OnMessage("Th髖 Y猲", tbDailog, "DialogWithNpc")
		tbDailog:Show() 
end;


