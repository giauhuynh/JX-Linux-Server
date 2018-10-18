-- ÁÙ°²¡¡¢·ÈË¡¡Ò¶Ð¡Óñ
-- by£ºDan_Deng(2003-09-16)

Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")

function main()

	
	local nNpcIndex = GetLastDiagNpc();
	local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M"))

	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end

	local tbDailog = DailogClass:new(szNpcName)
	if (GetSex() == 0) then
		tbDailog.szTitleMsg = "<npc>C«ng tö : ta ch­a nghÜ ®Õn viÖc cã thª tö, v× ®Ó kÕt thóc chiÕn sù ®·."
	else
		tbDailog.szTitleMsg = "<npc>ng­¬i muèn giíi thiÖu cho ta?."
	end
	G_TASK:OnMessage("Lµ tiÓu ngäc.", tbDailog, "DialogWithNpc")
	tbDailog:Show()
end;
