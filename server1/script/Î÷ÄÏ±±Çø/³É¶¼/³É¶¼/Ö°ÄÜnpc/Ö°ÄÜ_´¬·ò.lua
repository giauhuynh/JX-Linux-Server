--���ϱ��� �ɶ� ����Ի�

CurWharf = 9;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
---------------------------------------------------------------
function main(sel)
	if (GetLevel() >= 50) then
		Say("N�i ��y m�c d� kh�ng c� thuy�n, nh�ng ta v�n c� th� d�n ng��i �i", 2, "�i ��o hoa ��o (6) /go_thd", "Th�i, ta kh�ng �i/OnCancel")
	else
		Talk(1, "", "Kh�ng bi�t khi n�o thuy�n m�i ��n ��y!")
	end
end;

function  OnCancel()
   Talk(1,"","Kh�ng c� ti�n, kh�ng th� ng�i thuy�n! ")
end;

---------------------------------------------------------------
function go_thd()
	nRet = aexp_gotothd(240);
	-- if (nRet == 1) then
	--	Msg2Player("Thuy�n phu: Ta bi�t con ���ng ng�n nh�t ��n ��o hoa ��o. Ng�i cho v�ng, ch�ng ta �i ��n ��o hoa ��o nh�")
	if (nRet == -1) then
		Talk(1,"","Ti�n �� l�n ��o"..AEXP_TICKET.."ng��i �� mang theo �� ch�a? ")
	end
end
---------------------------------------------------------------
