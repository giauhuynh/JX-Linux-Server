--��ԭ���� ������ ����3С���ӶԻ�


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
	tbDailog.szTitleMsg = "<#><npc>Ti�u ��ng T�:Ta �� �n r�i m�t l� b�i ��ch h�ng th� hi c�m , n�u nh� c� th� �n m�t b�a ��i m� c�m , kh�ng bi�t ���c c� m�y h�o."
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)
	--�����Ի���
	tbDailog:Show()
end

