--�������� ���踮 ��ݷ����Ի�
--suyu
--200306015
-- VH by anhdung9992001 clbgamesvn--
CurWharf = 1;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
---------------------------------------------------------------
function main(sel)
	if (GetLevel() >= 50) then
		Say("Thuy�n phu: (H�t) xem k�a ��ng s�n m�t tr�i l�n l�ng T�y s�n ~~ , ch�n ��p ho�ng ��t t�m th�n nhi�n ~~, ng��i c� hi�u ���c thi�n h� Ho�ng H� ~~, ch�n m��i ch�n sao c�ng y�u �em thuy�n m� ban !! Ng��i mu�n �i thuy�n kh�ng!!", 2, "Ng�i thuy�n/WharfFun", "Kh�ng ng�i/OnCancel");
	else
		Say("Ho�ng H� ch�n ��o loan, ta ��u n�y, ng��i ��u kia ....", 2, "Ng�i thuy�n/WharfFun", "Kh�ng ng�i/OnCancel");
	end

end;

---------------------------------------------------------------
function  OnCancel()

   Say("L�c n�o c�n ta c� quay l�i!",0)

end;

---------------------------------------------------------------
function go_thd()
	nRet = aexp_gotothd(241);
	-- if (nRet == 1) then
	--	Msg2Player("�������ȥ�һ������˿��涵�����ɣ�����������")
	if (nRet == -1) then
		Talk(1,"","Mu�n ng�i thuy�n �i ��o Hoa ��o c�n "..AEXP_TICKET.." l��ng, ng��i c� �� ch�a.")
	end
end
---------------------------------------------------------------
