-- ���� ����NPC �λ�ũ�����̷�30������
-- by��Dan_Deng(2003-07-26)

function main()
	UTask_cy = GetTask(6)
	if (UTask_cy == 30*256+10) then		--30����������У�����Ů������
		Talk(6,"","�o�n ��i gia, nghe n�i ng��i c� nhi�u lo�i hoa ��c ph�i kh�ng, ta mu�n l�m phi�n ng��i truy�n cho ta �t b� quy�t.","� � .... Ng� kh� li�n ��ch h�i ch� ....","��i gia, ng��i th�y th� n�y nh� th� n�o?","N�ng b� th� ph� �i�m Th��ng s�n b�t �i, b�y gi� kh�ng hi�u sinh t� nh� th� n�o .....","�o�n ��i gia, kh�ng c�n lo l�ng, ta s� gi�p ng��i �i c�u n�ng.","��i hi�p, ng��i th�t l� m�t ng��i t�t, ch� c�n ng��i gi�p ta c�u li�u ng�, chuy�n g� ta c�ng ��p �ng! ")
		SetTask(6,30*256+20)
		AddNote("��n �i�m Th��ng S�n, t�m th� ph� c�u gi�p �o�n gia.")
		Msg2Player("��n �i�m Th��ng S�n, t�m th� ph� c�u gi�p �o�n gia.")
	elseif (UTask_cy == 30*256+30) then		--30����������У�����Ů��ɣ�
		Talk(5,"","C�m t� ng��i, ��i �n ��i ngh�a c�a ng��i ta s� kh�ng bao gi� qu�n.","�o�n ��i gia, ng��i bi�t V� y ngh� th��ng sao","Ti�u c� n��ng, coi nh� ng��i h�i ��ng ng��i, lo�i v� y ngh� th��ng l� b� m�t ch� c� ta bi�t, cho t�i b�y gi� kh�ng c� truy�n cho ng��i ngo�i, nh�ng l�, ng��i �� gi�p ta, ta s� truy�n cho ng��i.","V� y ngh� th��ng c�n ph�i c� 3 lo�i nguy�n li�u: m�t lo�i l� nh� h�i ��ch ng�n tuy�t ng� , lo�i th� hai l� h� �i�p tuy�n b�ng bi�n ��ch b�ch th��ng ph��ng �i�p, lo�i th� ba l� v�n n�ng ��nh ��ch h�ng kh�u d�n.","�a t� ��i gia! ")
		SetTask(6,30*256+40)
		AddNote("V� y ngh� th��ng c�n ph�i c� 3 lo�i nguy�n li�u: nh� h�i ��ch ng�n tuy�t ng� , h� �i�p tuy�n b�ng bi�n ��ch b�ch th��ng ph��ng �i�p , v�n n�ng ��nh ��ch h�ng kh�u d�n.")
		Msg2Player("V� y ngh� th��ng c�n ph�i c� 3 lo�i nguy�n li�u: nh� h�i ��ch ng�n tuy�t ng� , h� �i�p tuy�n b�ng bi�n ��ch b�ch th��ng ph��ng �i�p , v�n n�ng ��nh ��ch h�ng kh�u d�n.")
	elseif (UTask_cy == 30*256+20) then
		Talk(1,"","N� hi�p, ch� c�n ng��i gi�p ta c�u ng��i, chuy�n g� ta c�ng ��p �ng ng��i.")
	else
		Talk(1,"","Tr�ng lo�i hoa n�y v�a l� m�t m�n h�c v�a l� m�t m�n ngh� thu�t.")
	end
end
