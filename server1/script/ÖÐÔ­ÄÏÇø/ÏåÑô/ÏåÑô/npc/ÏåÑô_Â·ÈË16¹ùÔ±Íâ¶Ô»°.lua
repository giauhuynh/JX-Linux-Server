--��ԭ���� ������ ����16��Ա��Ի�
-- edit by С�˶���

Include("\\script\\event\\zhongqiu2007\\picture_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel)
	if allbrother_0801_CheckIsDialog(183) == 1 then
		allbrother_0801_FindNpcTaskDialog(183)
		return 0;
	end
	local ndate = tonumber(GetLocalDate("%y%m%d%H%M"))
	if ndate > 0709220000 and ndate < 0710312400 then
		SetTaskTemp(TSK_TEMP,2)
		Describe("Qu�ch vi�n ngo�i:  trung thu ��n, c�n thu t�p �� 6 <color=red>m�nh h�a ��<color> h�p th�nh m�t b�c v� ho�n ch�nh mang ��n cho ta, ta s� ��a ng��i m�t <color=red>Ph�ng Nguy�t Qu�<color>.",2,"��i Ph�ng nguy�t qu�/makeItemUI","Thu�n ti�n gh� qua/NoChoice")
	else
		Describe("Ta �� �em to�n b� gia s�n hi�n t�ng cho tri�u ��nh, qu�c gia g�p n�n, th�t phu h�u tr�ch. Ta ch�ng qua l� c�ng hi�n m�t ch�t s�c l�c, c�n b�n c�ng kh�ng s� g�.",1,"Ta bi�t r�i./NoChoice")
	end
end;
