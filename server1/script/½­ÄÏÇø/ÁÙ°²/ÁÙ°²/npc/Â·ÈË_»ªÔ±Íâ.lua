-- �ٰ������ˡ���Ա��
-- by��Dan_Deng(2003-09-16)
-- edit by С�˶���
Include("\\script\\event\\zhongqiu2007\\picture_head.lua")
function main()
	local ndate = tonumber(GetLocalDate("%y%m%d%H%M"))
	if ndate > 0709220000 and ndate < 0710312400 then
		SetTaskTemp(TSK_TEMP,1)
		Describe("Hoa vi�n ngo�i : trung thu �� ��n ch� c�n thu th�p �� 6 <color=red>M�nh v� v�n <color> h�p th�nh m�t t� ho�n ch�nh �em ��n cho ta,ta s� t�ng ng��i m�t <color=red>cung th�ng ph� dung<color>.",2,"��i cung th�ng ph� dung th�nh b�nh trung thu/makeItemUI","ch� �i ngang qua/NoChoice")
	else
		if (random(0,1) == 0) then
			Talk(1,"","Hoa vi�n ngo�i : ta tuy kh�ng ph�i l� ng��i trong quan tr��ng, nh�ng c�ng quen bi�t nhi�u quan l�i, ch� c�n c� b�c l� ���c.")
		else
			Talk(1,"","Hoa vi�n ngo�i : ai c�ng mu�n l�m quan nh�ng ��u bi�t quan tr��ng gian hi�m, c� nh� ta ung dung t� t�i.")
		end
	end
end;
