--��ԭ���� ������ ����9�������Ի�
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")

function main(sel)
	if allbrother_0801_CheckIsDialog(184) == 1 then
		allbrother_0801_FindNpcTaskDialog(184)
		return 0;
	end
i = random(0,1)

if (i == 0) then
Say("Ph�m Nh� Xu�n:��ng t�u t� trong nh� qu� kh� kh�n, b�n ta h� cho c�c n�ng nh� ��a m�t ��i ��i m� �i, tr��c c�u c�u c�p.",0)
return
end;

if (i == 1) then
Say("Ph�m Nh� Xu�n:  M�i ng��i ��u l� nhai ph��ng, gi�p �� l�n nhau l� ph�i.",0)
end;

end;

