--��ԭ���� �꾩�� ϵ��ˢס�ֶԻ�
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel)
	
	if allbrother_0801_CheckIsDialog(190) == 1 then
		allbrother_0801_FindNpcTaskDialog(190)
		return 0;
	end
Say("��i �� Thi�n S� : Ph��ng ngo�i ng��i, v�n l� h�n t� ��i giai kh�ng, b�t lu�n qu�c s�, nh�ng l� m�t th�y giang s�n �i�u t�, sinh linh �� th�n, th� nh�n kh� n�n l��ng nhi�u, d�y ng��i sao kh�ng �au l�ng �m ��u ?", 0);
end;


