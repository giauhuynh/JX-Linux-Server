-- �ٰ������ˡ��ƹ�
-- by��Dan_Deng(2003-09-16)
Include("\\script\\task\\newtask\\branch\\xiepai\\branch_xiepaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
function main()
	i = random(0,6)
	Uworld1059 = nt_getTask(1059)
	if ( Uworld1059 ~= 0 ) then
		branch_zuihan()
	else
		if (i == 0) then
			Talk(1,"","T�u qu� : u�ng r��u m� kh�ng say th� ai u�ng l�m g�.")
		elseif (i == 1) then
			Talk(1,"","T�u qu� : u�ng r��u c�ng ph�i bi�t v� r��u kh�ng ph�i c�i g� ta c�ng u�ng.")
		elseif (i == 2) then
			Talk(1,"","T�u qu� : r��u ngon th� n��c ph�i trong, m�i ph�i th�m, u�ng v�o kh�ng cay c�, ng�m v�o ng�c, u�ng nhi�u kh�ng �au ��u.")
		elseif (i == 3) then
			Talk(1,"","T�u qu� : tr�n th� gian c� mu�n v�n lo�i r��u kh�ng lo�i n�o gi�ng nhau, c� th� th��ng th�c r��u ngon th� s�ng c�ng nh� ti�n.")
		elseif (i == 4) then
			Talk(1,"","T�u qu� : m�i ng��i ��u n�i ta l� con s�u r��u, nh� ng��i c�ng v�y � !")
		elseif (i == 5) then
			Talk(1,"","T�u qu� : cu�c ��i ta mong ��c l�n nh�t l� ���c u�ng thi�n h� �� nh�t t�u, d� c� ch�t l�m con ma c�ng kh�ng ti�c.")
		else
			Talk(1,"","T�u qu� : u�ng r��u ph�i bi�t ph�m gi� c�a n� , n�i v�i ng��i c�ng kh�ng hi�u h�t ���c.")
		end
	end
end;
