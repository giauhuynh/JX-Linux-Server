--�������� ������ �ƺӢ�ͷ����Ի�
--suyu
--20031029

CurWharf = 10;
Include("\\script\\global\\station.lua")

function main(sel)
	if (GetLevel() >= 5) then		--�ȼ��ﵽ�弶
		Say("Ch�ng ta l�m c�ng � tr�n thuy�n n�y th�t l� c�c kh�! N�ng ch�y! Gi� qu�t! B�y gi� l�i g�p s�ng to gi� l�n e r�ng s� kh�ng ai s�ng s�t!", 2, "Ng�i thuy�n/WharfFun", "Kh�ng ng�i/OnCancel")
	else		
		Talk(1,"","Khi n�o c� ti�n h�y quay l�i!")
	end
end;

function  OnCancel()
   Talk(1,"","Kh�ng c� ti�n th� kh�ng th� ng�i thuy�n! ")
end;
