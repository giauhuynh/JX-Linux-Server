-- �ٰ������ˡ�л��ү
-- by��Dan_Deng(2003-09-16)
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main()
	if allbrother_0801_CheckIsDialog(192) == 1 then
		allbrother_0801_FindNpcTaskDialog(192)
		return 0;
	end
	Talk(1,"","T� ��i gia : phu th� ph�i s�ng h�a thu�n m�i h�nh ph�c ���c.")
end;
