-- NPC - C� L�o Th�i - BLH
--�ݸ���Т�����񣺹ŵ�̫�ı���
--suyu
-- Update: GiaKaKa 2014424

function main(sel)
	UTask_world19 = GetTask(47);
	if ((UTask_world19 == 0) and (GetLevel() >= 6)) then		-- ��������
		Say("Con trai l�o �i ��nh c� 3 ng�y nay ch�a th�y v�. L�o gi� r�i, kh�ng th� �i t�m ���c. Ch�u c� th� gi�p l�o ra h� t�m n� ���c kh�ng?",2,"Gi�p/yes","Kh�ng gi�p/no")
	elseif(UTask_world19 == 1) then
		if(HaveItem(182) == 1) then
			Talk(2, "", "��y ch�ng ph�i l� ng�c b�i c�a con trai l�o sao? L� n�o..l� n�o..huhuhu..,con c�a l�o ch�t th�m qu�, th� h�i 1 b� gi� nh� l�o s� s�ng sao ��y! ","C�m �n ch�u �� gi�p l�o t�m ���c mi�ng ng�c b�i n�y, nh�n n� ta nh� c� c�m gi�c con trai ta � b�n c�nh. B�c th� ph�p n�y l� c�a gia truy�n, l�o th� m�t ch� c�ng kh�ng bi�t, th�i th� t�ng ch�u v�y.Huhuhu...")
			DelItem(182)
			AddEventItem(183)
			SetTask(47, 2)
			AddNote("�em mi�ng ng�c b�i ��a cho C� L�o Th�i ho�n th�nh nhi�m v�")
			Msg2Player("�em mi�ng ng�c b�i ��a cho C� L�o Th�i ho�n th�nh nhi�m v�")
			AddRepute(4)		-- ������6��
			Msg2Player("Thanh th� giang h� c�a b�n t�ng 4 �i�m")
		else
			Talk(1,"","B�n �� � ph�a ��ng th� tr�n, c�c ng� d�n th��ng c�p thuy�n � ��, n�u ch�u th�y n� th� b�o  l� ta � nh� r�t mong n� v�. Kh�...kh�...")
		end
	else				-- ������Ի�
		if (random(0,1) == 0) then
			Talk(1,"","C�c ng� d�n th�t l� kh�! Ta c� hai ��a con �i ��nh c� tr�n ��u b� s�ng l�n d�m ch�t. ")
		else
			Talk(1,"","��n ng��i ��nh c� c�ng c�n kh�ng c� c� m� �n, kh�ng ��nh c� th� ngay c� c�m c�ng kh�ng c�")
		end
	end
end;

function yes()
	Talk(1,"","Ch�u h�y ra b�n t�u t�m con trai gi�p ta nh�! ")
	SetTask(47, 1)
	AddNote("Ti�p nh�n nhi�m v�: Con trai c�a C� L�o Th�i �i ��nh c� 3 ng�y kh�ng v�, gi�p b� l�o ra b�n t�u t�m c�u ta. ")
	Msg2Player("Ti�p nh�n nhi�m v�: Con trai c�a C� L�o Th�i �i ��nh c� 3 ng�y kh�ng v�, gi�p b� l�o ra b�n t�u t�m c�u ta. ")
end;

function no()
	Talk(1,"","Th�t l� l�m phi�n ch�u qu�")
end;
