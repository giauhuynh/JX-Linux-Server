--��ԭ���� ������ ��ͷ����1�Ի�
--suyu
--200306015

CurWharf = 4;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")

---------------------------------------------------------------
function main(sel)
	if (GetLevel() >= 50) then
		Say("Thuy�n phu:  Thuy�n ta l�i gi� v�i b��m tr�ng, l��t gi�a m�y cao v�i bi�n b�ng :3 (ch� th�i c�c b�c ah, �o hi�u n� n�i g� c� :)) ) ", 3, "Ng�i thuy�n/WharfFun", "Kh�ng ng�i/OnCancel", "�i ��o hoa ��o/go_thd");
	else
		Say("Thuy�n phu:  Thuy�n ta l�i gi� v�i b��m tr�ng, l��t gi�a m�y cao v�i bi�n b�ng :3 (ch� th�i c�c b�c ah, �o hi�u n� n�i g� c� :)) ) ", 2, "Ng�i thuy�n/WharfFun", "Kh�ng ng�i/OnCancel");
	end
end;

---------------------------------------------------------------
function  OnCancel()

   Say("Thuy�n phu:  Kh�ng c� ti�n th� t� b�i qua s�ng �i !",0)

end;

---------------------------------------------------------------
function go_thd()
	nRet = aexp_gotothd(237);
	-- if (nRet == 1) then
	--	Msg2Player("�������ȥ�һ������˿��涵���ðɣ������õ���")
	if (nRet == -1) then
		Talk(1,"","L� ph� �i ��o Hoa ��o l� "..AEXP_TICKET.." l��ng, ng��i �� chu�n b� �� ti�n ch�a ?")
	end
end
---------------------------------------------------------------
