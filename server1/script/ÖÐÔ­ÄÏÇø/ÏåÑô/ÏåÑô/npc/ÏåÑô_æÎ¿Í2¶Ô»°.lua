--��ԭ���� ������ �ο�2�Ի�
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
		tbDailog.szTitleMsg = "<npc>T�i n�i n�y t�m vui v� ��u l� quan ho�c d�n l�m �n, d�n ch�ng b�nh th��ng ngay c� c�m c�ng �n kh�ng �� no, ��u c�n c� ti�n d� t�i n�i n�y ch�i ?"
		G_TASK:OnMessage("Th�y Y�n", tbDailog, "DialogWithNpc")
		tbDailog:Show() 
end;


