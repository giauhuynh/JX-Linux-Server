--���ϱ��� ����� ��ͷ����Ի�
--suyu
--200306015
-- Update: Dan_Deng(2003-08-21) ���ͳ���ȼ�Ҫ��Ϊ5��

CurWharf = 2;
Include("\\script\\global\\station.lua")
---------------------------------------------------------------
function main(sel)

if (GetLevel() >= 5) then		--�ȼ��ﵽʮ��
	Say("Kh�ch quan mu�n ng�i thuy�n �i ��u v�y?", 2, "L�n thuy�n/WharfFun", "Ta kh�ng mu�n l�n/OnCancel");
else		
	Talk(1,"","M� l�i 'GTT001' vui l�ng ch�p h�nh v� g�i cho admin �� fix l�i!")
end

end;

---------------------------------------------------------------
function  OnCancel()
   Say("Kh�ch quan ��a ta h�?",0)
end;

---------------------------------------------------------------
