--�������� ��� ������ݷ����Ի�
--suyu
--20031029

CurWharf = 9;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
---------------------------------------------------------------
function main(sel)
	if (GetLevel() >= 50) then
		Say("Ho�ng H� c�u kh�c, ng��i � b�n n�y s�ng, ta � b�n kia s�ng, c�ch nhau Th��ng S�n nh� h�i, mu�n g�p c�ng kh�.", 3, "Ng�i thuy�n/WharfFun", "H�y b�/OnCancel", "�i ��o hoa ��o (5) /go_thd")
	else
		Say("Ho�ng H� c�u kh�c, ng��i � b�n n�y s�ng, ta � b�n kia s�ng, c�ch nhau Th��ng S�n nh� h�i, mu�n g�p c�ng kh�.", 2, "Ng�i thuy�n/WharfFun", "H�y b�/OnCancel")
	end
end;

function  OnCancel()
   Talk(1,"","C� ti�n h�y quay l�i g�p ta!")
end;

---------------------------------------------------------------
function go_thd()
	nRet = aexp_gotothd(239);
	-- if (nRet == 1) then
	--	Msg2Player("�������ȥ�һ������˿��涵�����ɣ�����������")
	if (nRet == -1) then
		Talk(1,"","�i ��o hoa ��o c�n  "..AEXP_TICKET.." l��ng, ng��i �� ch�a? ")
	end
end
---------------------------------------------------------------
