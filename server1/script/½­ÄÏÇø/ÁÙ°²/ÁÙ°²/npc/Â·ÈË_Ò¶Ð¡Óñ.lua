-- �ٰ������ˡ�ҶС��
-- by��Dan_Deng(2003-09-16)

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
		tbDailog.szTitleMsg = "<npc>C�ng t� : ta ch�a ngh� ��n vi�c c� th� t�, v� �� k�t th�c chi�n s� ��."
	else
		tbDailog.szTitleMsg = "<npc>ng��i mu�n gi�i thi�u cho ta?."
	end
	G_TASK:OnMessage("L� ti�u ng�c.", tbDailog, "DialogWithNpc")
	tbDailog:Show()
end;
