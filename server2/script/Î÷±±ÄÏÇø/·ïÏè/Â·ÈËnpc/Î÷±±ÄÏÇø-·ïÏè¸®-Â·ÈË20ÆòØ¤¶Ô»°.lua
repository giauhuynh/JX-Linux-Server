--�������� ���踮 ����20��ؤ�Ի� ʵ������

function main(sel)

--UTask_world36 = GetTask(64);

if (UTask_world36 == 0) then 
Talk(3, "select", "Kh�t c�i: aiii...", "Ti�u ca, th� n�i n�y c� g�? ", "Xem ra ng��i l� ng��i m�i t�i ��a ph��ng n�y, kh�ng c� th�y c�o th� c�a quan ph� sao? M�y ng�y nay quan ph� ph�i ng��i �i th� s�t, m�y t�n kh�t kh�ng d�m ra ���ng �n xin. N�i th�m ng�i cho, m�y ng�y nay kh�ng l�m �n ���c g�, ta ��y c�ng c� nh� l�n nh� nh�, nh�ng l�m sao s�ng n�i.")
return
end;

--if (UTask_world36 == 1) then 
Say("Xem ra ng��i l� ng��i m�i t�i ��a ph��ng n�y, kh�ng c� th�y c�o th� c�a quan ph� sao? M�y ng�y nay quan ph� ph�i ng��i �i th� s�t, m�y t�n kh�t kh�ng d�m ra ���ng �n xin. N�i th�m ng�i cho, m�y ng�y nay kh�ng l�m �n ���c g�, ta ��y c�ng c� nh� l�n nh� nh�, nh�ng l�m sao s�ng n�i.", 0)
--end;

end;


function select()
Say("Nh�n th�t ��ng th��ng", 2, "��a ti�n/accept", "Kh�ng ��a/refuse");
end;


function accept()

if (GetCash() > 1000) then							--�ο�ֵ
	Talk(2, "select1", "Ti�u ca, ta � ��y c� ch�t b�c. C�m l�y.", "Hai ch�ng ta m�i g�p l�n ��u, nh� ng��i l�i cho ta nhi�u ti�n nh� v�y, th�t l� m�t ��ng ngh�a hi�p. Ta l�y ti�n c�a ng��i s� cho ng��i c�i kh�c. Xin h�y nh�n l�y ch�t t�m l�ng c�a ta.")	
else
	Say("Xem ra ng��i c�ng kh�ng kh� gi� g�. Th�i th� c� duy�n �t s� g�p l�i.", 0)
end;

end;


function refuse()
end;


function select1()
Pay(GetCash()/3)
AddOwnExp(1000)	
SetTask(64, 1)
end;
