--������ �ٰ��� ������ͷ����Ի�
--suyu
--20031029

CurWharf = 11;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")

function main(sel)
	if (GetLevel() >= 50) then
		Say("Thuy�n phu : thuy�n c�a ta tuy kh�ng ph�i l� thuy�n l�n g�, nh�ng ai qua ��y ��u ph�i nh� ta, nh�n ng��i c�ng kh�ng ��n n�i b�n, c� ti�n th� qua s�ng.", 3, "Ng�i thuy�n/WharfFun", "kh�ng ng�i/OnCancel", "<#>��o hoa ��o ["..AEXP_TICKET.."<#>�i]/go_thd");
	else
		Say("Thuy�n phu : thuy�n c�a ta tuy kh�ng ph�i l� thuy�n l�n g�, nh�ng ai qua ��y ��u ph�i nh� ta, nh�n ng��i c�ng kh�ng ��n n�i b�n, c� ti�n th� qua s�ng.", 2, "Ng�i thuy�n/WharfFun", "kh�ng ng�i/OnCancel")
	end
end;

function  OnCancel()
   Talk(1,"","Thuy�n phu : kh�ng c� ti�n th� ��ng �i thuy�n")
end;

function go_thd()
	nRet = aexp_gotothd(235);
	-- if (nRet == 1) then
	--	Msg2Player("�������ȥ�һ������˿��涵���ðɣ������õ���")
	if (nRet == -1) then
		Talk(1,"","<#>�i ��o hoa ��o"..AEXP_TICKET.."<#>ng��i �� chu�n b� �� ti�n ch�a ?.")
	end
end
