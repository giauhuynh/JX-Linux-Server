--������ ���� ��ջ�ϰ��� Т�����񣺽��ܹ���
-- By: Dan_Deng(2003-09-04)

Include("\\script\\global\\itemhead.lua")

function main(sel)
	UTask_world25 = GetTask(25)
	UTask_world27 = GetTask(27)
	if (UTask_world25 == 3) then		-- ���񡰽��ܹ�����������
		Talk(5,"W25_step","B� ch� c� c�n th�m ng��i gi�p vi�c kh�ng?","Gi�p vi�c? Hi�n c�n �ang thi�u m�t ch�n ti�u nh� �� d�n b�n.","C� ng��i mu�n d� tuy�n, v�y b� nh�n kh�ng?","�� ta c�n xem kh� n�ng c�a h�n th� n�o!","T� Trung Nguy�n ��n ��y, t�m m�t b�a c�m th�t kh�ng d� ch�t n�o")
	elseif (UTask_world27 == 0) and (GetLevel() >= 5) then
		Say("�i t�m cho ta 3 mi�ng th�t heo r�ng, v� ��y cho ta ��i kh�ch!",2,"Bi�t r�i/W27_get_yes","Phi�n ch�t ���c! �i t�m ng��i kh�c �i/W27_get_no")
	elseif (UTask_world27 == 5) then
		i = GetItemCount(228)
		if (i >= 3) then
			for j = 1,i do DelItem(228) end
			Talk(1,"","�i! ��ng t�c c�c k� nhanh! N�y! C�i m� n�y ta kh�ng d�ng ��n n�a! T�ng cho ng��i ��!")
			SetTask(27,10)
			AddRepute(9)
			AddNote("Mang th�t heo v� giao cho b� ch�, ho�n th�nh nhi�m v�.")
			Msg2Player("Mang th�t heo v� giao cho b� ch�, ho�n th�nh nhi�m v�.")
			p1,p2,p3,p4,p5,p6 = RndItemProp(6,15)
			if(GetSex() == 0) then
				AddItem(0, 7, 6, 2, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6)
				Msg2Player("B�n nh�n ���c m�t c�i m�")
			else
				AddItem(0, 7, 10, 2, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6)
				Msg2Player("B�n nh�n ���c m�t c�i m�")
			end
			Msg2Player("Danh v�ng c�a b�n t�ng th�m 9 �i�m")
		else
			Talk(1,"","M� l�i 'LMT001' vui l�ng ch�p �nh v� g�i l�i cho admin �� fix l�i!")
		end
	elseif (UTask_world25 == 6) then
		Talk(1,"","Oa oa! Kh�ch quan kh�ng tr� � L� qu�n n�y �? 100 d�m xung quanh Long M�n Tr�n n�y kh�ng ai h�n ���c L� qu�n c�a ta! Kh�ng tin ng��i s� h�i h�n ��!")
	else				-- ������Ի�
		Talk(1,"","Oa oa! Kh�ch quan kh�ng tr� � L� qu�n n�y �? 100 d�m xung quanh Long M�n Tr�n n�y kh�ng ai h�n ���c L� qu�n c�a ta! Kh�ng tin ng��i s� h�i h�n ��!")
	end
end;

function W25_step()
	Talk(1,"","���c r�i! V�y h�y mau g�i y ��n ��y gi�p ta!")
	SetTask(25,6)
	AddNote("B� ch� �� ��ng � cho Th��ng Quan Thu ��n ��y gi�p vi�c! H�y mang tin vui n�y ��n cho h�n.")
	Msg2Player("B� ch� �� ��ng � cho Th��ng Quan Thu ��n ��y gi�p vi�c! H�y mang tin vui n�y ��n cho h�n. ")
end

function W27_get_yes()
	SetTask(27,5)
	AddNote("Nh�n nhi�m v�: V�o r�ng l�y 3 mi�ng th�t heo r�ng v� cho b� ch� qu�n.")
	Msg2Player("Nh�n nhi�m v�: V�o r�ng l�y 3 mi�ng th�t heo r�ng v� cho b� ch� qu�n.")
end

function W27_get_no()
end
