--������ �ݸ��� �ӻ���ϰ�Ի�������40������
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
	tbDailog.szTitleMsg = "<npc>Tr��c ��y ta l� ng��i b�n h�ng rong, t�ch c�p ���c �t v�n, m� ti�m t�p h�a n�y"
	tbDailog:AddOptEntry("Giao d�ch", yes)
	-- tbDailog:AddOptEntry("Kh�ng giao d�ch", no)
	tbDailog:Show()
end

function yes()
Sale(38);  			
end;

function no()
end;
