--���ϱ��� �ɶ��� ����8�޳����Ի�
Include("\\script\\task\\newtask\\branch\\xiepai\\branch_xiepaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
function main(sel)
Uworld1058 = nt_getTask(1058)
	if ( Uworld1058 ~= 0 ) then
		branch_zouchangjiu()
	else
Say("�� s�m nghe n�i c�i � ��y c� m�t v� ti�u mu�i r�t xinh ��p , h�m nay v�a th�y , qu� nhi�n l� r�t ��p , n�u kh�ng ph�i ta s�m c��i l�o b� th�...",0)
	end
end;

