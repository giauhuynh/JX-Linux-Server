--���ϱ��� �ɶ��� ����20��̯�ϰ�Ի�
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel)
	if allbrother_0801_CheckIsDialog(185) == 1 then
		allbrother_0801_FindNpcTaskDialog(185)
		return 0;
	end
Say("T�n Nh� th�m : mu�n u�ng tr� g�? C�n m�t b�u mao nh�n nh� th� n�o ?",0)

end;
