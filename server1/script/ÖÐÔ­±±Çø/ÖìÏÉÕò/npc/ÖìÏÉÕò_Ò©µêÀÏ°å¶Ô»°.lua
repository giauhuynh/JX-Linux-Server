--��ԭ���� ������ ҩ���ϰ�Ի�
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
function main(sel)
Say("Kh�ch quan mu�n mua g�?", 3, "Giao d�ch/yes","Ta ��n l� nhi�m v� S� nh�p/yboss", "Ta ch� gh� qua th�i/no");
end;


function yes()
Sale(88);  		--�������׿�
end;


function no()
end;

