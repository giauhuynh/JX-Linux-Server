--��ԭ���� �꾩�� ��ͷ����3�Ի�
--suyu
--200306015

CurWharf = 3;
Include("\\script\\global\\station.lua")
---------------------------------------------------------------
function main(sel)

	Say("Thuy�n Phu : Ch�ng ta thuy�n phu t� t� b�i b�i c�ng d�a v�o c�i n�y Ho�ng H� m� s�ng, sanh � Ho�ng H� b�n , c�ng ch�t � Ho�ng H� b�n , ��y ch�nh l� ch�ng ta thuy�n phu ��ch m�nh ! ng��i mu�n �i ��u m� ?", 2, "Ng�i thuy�n/WharfFun", "Kh�ng ng�i/OnCancel");

end;

---------------------------------------------------------------
function  OnCancel()

   Say("Thuy�n phu : kh�ng c� b�c nh�ng n�i n�o c�ng �i kh�ng ���c !",0)

end;

---------------------------------------------------------------
