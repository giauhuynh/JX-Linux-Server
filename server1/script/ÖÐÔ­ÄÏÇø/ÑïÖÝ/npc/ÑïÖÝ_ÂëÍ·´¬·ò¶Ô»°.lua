--��ԭ���� ���ݸ� ��ͷ����Ի�
--suyu
--200306015

CurWharf = 6;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")
---------------------------------------------------------------
function main(sel)
Bil_DefaultTalk4Npc()
end;

function check_showdialog_condition()
	local tbFactStepList = {
		[5] = 6,
		[2] = 7,
		[4] = 7,
		[3] = 5,
		[6] = 9,
		[7] = 9,
		[0] = 6,
		[8] = 5,
		[1] = 4,
		[9] = 5,
	}
	local nFact = GetLastFactionNumber()
	if nFact == nil or nFact < 0 or nFact > 9 then
		return
	end
	local nFactStep = mod(GetTask(2885), 100)
	if nFactStep >= tbFactStepList[nFact] then
		return 1
	end
	return
end

function goto_yuegedao()
	if CalcItemCount(3, 6, 1, 2908, -1) <= 0 then
		Msg2Player("��û���¸���")
		return
	end
	NewWorld(968, 1436, 3179)
end
---------------------------------------------------------------
function  OnCancel()

   Say("����ûǮ��������ߺ�·�ɣ�",0)

end;

---------------------------------------------------------------
function go_thd()
	nRet = aexp_gotothd(236);
	-- if (nRet == 1) then
	--	Msg2Player("�������ȥ�һ������˿���ࡣ�ðɣ�������ඣ�")
	if (nRet == -1) then
		Talk(1,"","��Ҫ�˴����һ��� "..AEXP_TICKET.."�����㹻��? ")
	end
end
---------------------------------------------------------------
