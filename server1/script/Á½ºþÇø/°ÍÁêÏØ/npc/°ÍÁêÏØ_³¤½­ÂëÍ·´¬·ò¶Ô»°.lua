--������ ������ ������ͷ����Ի�
--suyu
--200306015
-- Update: Dan_Deng(2003-08-21) ���ͳ���ȼ�Ҫ��Ϊ5��

CurWharf = 5;
Include("\\Script\\Global\\station.lua");
---------------------------------------------------------------
function main(sel)

if (GetLevel() >= 5) then		--�ȼ��ﵽ5��
	Say("Ta c� bi�t hi�u l� 'L�ng L� B�ch �i�u' ba ��i ��u s� d�a v�o s�ng n��c! Kh�p Ba L�ng Huy�n n�y kh�ng c� ai l� ��i th�! Kh�ch quan mu�n �i ��u? ", 2, "Ng�i thuy�n/WharfFun", "Kh�ng ng�i/OnCancel");
else		
	Say("Ng�i y�n ch�ng ta �i n�o", 0)
end

end;

---------------------------------------------------------------
function  OnCancel()
   Say("Kh�ng c� ti�n m� c�ng ��i ng�i thuy�n h�?",0)
end;

------------------------------------------------
