--��ԭ���� �꾩�� ��ͷ����1�Ի�
--suyu
--200306015

CurWharf = 3;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
---------------------------------------------------------------
function main(sel)
	if (GetLevel() >= 50) then
		Say("Thuy�n phu : h�m nay c� ngh�ch th�y h�nh thuy�n, l�i g�p g� ��nh ��u phong, xem ra ��i quang di�u l� ph�i kh�ng th�nh, s� r�ng ���c v�i ng�n k�o ti�m m�i ���c. Ng��i mu�n �i ��u m� ?", 2, "Ng�i thuy�n/WharfFun", "Kh�ng ng�i/OnCancel");
	else
		Say("H�m nay c� ngh�ch th�y h�nh thuy�n, l�i g�p g� ��nh ��u phong, xem ra ��i quang di�u l� ph�i kh�ng th�nh, s� r�ng ���c v�i ng�n k�o ti�m m�i ���c . ng��i mu�n �i ��u m� ? ", 2, "Ng�i thuy�n/WharfFun", "Kh�ng ng�i/OnCancel");		
	end

end;

---------------------------------------------------------------
function  OnCancel()

   Say("Thuy�n phu : kh�ng c� b�c nh�ng n�i n�o c�ng �i kh�ng ���c !",0)

end;

---------------------------------------------------------------
function go_thd()
	nRet = aexp_gotothd(238);
	 --if (nRet == 1) then
		--Msg2Player("Thuy�n phu : g�n nh�t �i ��o Hoa ��o ng��i c�a c�ng th�t nhi�u. ���c r�i , ng��i ng�i xong l�u !")
	if (nRet == -1) then
		Talk(1,"","Ng�i thuy�n �i ��o Hoa ��o"..AEXP_TICKET.." l��ng , ng��i �� ch�a? ")
	end
end
---------------------------------------------------------------
