-- �ٰ� ����NPC �ſ���ؤ��50������
-- by��Dan_Deng(2003-07-28)
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel)
	if allbrother_0801_CheckIsDialog(3) == 1 then
		allbrother_0801_FindNpcTaskDialog(3)
		return 0;
	end
	UTask_gb = GetTask(8)
	Uworld75 = GetTask(75)
	U75_sub5 = GetTask(56)
	if (UTask_gb == 50*256+20) and (HaveItem(139) == 0) then		--����50������
		Talk(5,"L50_Step1","Tr��ng ��i nh�n ch�ng ta l�i g�p","L�n tr��c nh� c� ng��i tr��ng ngh�a t��ng tr�, l�n n�y c�n ta gi�p g�?","Bang ch� ph�i ta t�i ��a Trung Nguy�n B�n �� cho ho�ng th��ng nh�ng ta l�i kh�ng c� l�nh b�i kh�ng th� v�o cung di�n ki�n.","Kh�ng c�n lo, ta c� m�t l�nh b�i ng��i c�m �i","�a t� tr��ng ��i nh�n!")
	elseif (UTask_gb == 50*256+30) then
		Talk(5,"L50_Step2","Tr��ng ��i nh�n ��y l� th�ng h�nh l�nh b�i!","Th� n�o r�i? �� g�p ���c ho�n th��ng ch�a?.","Kh�ng t�m th�y ho�ng th��ng,ch� g�p ���c T�o c�ng c�ng, ch�c h�n l� th�n t�n c�a ho�ng th��ng, ta �� giao �� cho h�n!","Th�i ch�t ! ��i s� ch�ng l�nh, ng��i c� ch� kh�ng bi�t, T�o c�ng c�ng b�y l�u nay �m th�m giao d�ch v�i b�n gi�c Kim, ch�ng qua l� � v�o ho�ng th��ng cho n�n kh�ng ai l�m g� ���c h�n, nay v�y l�i r�i v�o tay h�n,giang s�n x� t�c ch�c g�p nguy hi�m.","Th� kh�ng ng� t�i v�o ho�ng cung l�i b� l�a, Tr��ng ��i nh�n ��ng lo ta s� �i �o�t l�i ��!")
	elseif (UTask_gb == 50*256+50) then		--�˴����ټ��������Ʒ�Ƿ���ڣ����˾��ò��Ǻ������壬����Ҳʡ�˲��ٹ�����
		Talk(3,"L50_Step3","Ta �� �em Trung Nguy�n B�n �� giao l�i cho Tr��ng ��i nh�n, mong ng�i mau giao l�i cho ho�ng th��ng.","Th�t t�t ! ng��i v� tri�u ��nh �� b� kh�ng �t c�ng s�c","Th�n l� ng��i T�ng t�t ph�i nh� th�.! ")
	elseif (UTask_gb >= 50*256+20) and (UTask_gb < 50*256+40) and (HaveItem(139) == 0) then
		AddEventItem(139)
		Msg2Player("L�y ���c l�nh b�i ti�n v�o ho�ng cung.")
		Talk(1,"","Th�ng h�nh l�nh b�i b� m�t, ��ng lo ta c�n r�t nhi�u.")
	elseif (Uworld75 == 10) and (U75_sub5 < 10) then		-- ȭ����Ϣ�����У���ȡ������
		if (HaveItem(384) == 1) then
			SetTask(56,10)
			AddNote("Nhi�m v� ti�p t� : gi�p t� tu�n t�m 5 mi�ng m� b�c.")
			Msg2Player("Nhi�m v� ti�p t� : gi�p t� tu�n t�m 5 mi�ng m� b�c")
			Talk(1,"","Ta kh�ng mu�n l�m kh� h�n, ��n l�c �� ta s� l�m cho h�n b� gi�p,ng��i h�y �i t�m gi�p ta 5 mi�ng m� b�c.")
		else
		 	Talk(1,"","Ch� mi�ng n�i l�m sao ��ng tin c�y?.")
		end
	elseif (Uworld75 == 10) and (U75_sub5 == 10) then		-- ����������ж�
		if (GetItemCount(118) >= 5) then
			DelItem(118)
			DelItem(118)
			DelItem(118)
			DelItem(118)
			DelItem(118)
			SetTask(56,20)
			AddNote("T�m ���c 5 mi�ng m� b�c ho�n th�nh nhi�m v�.")
			Msg2Player("T�m ���c 5 mi�ng m� b�c ho�n th�nh nhi�m v�.")
			Talk(1,"","Thi�u hi�p l�m vi�c th�t nhanh, c� g�ng l�n.")
		else
			Talk(1,"","Kho�ng th�ch v�n ch�a �� h�y c� g�ng h�n.")
		end
	else
		Talk(1,"","T� tu�n : th�t l�u m�i c� c� h�i ��ng tay")
	end
end;

function L50_Step1()
	AddEventItem(139)
	AddNote("l�i ���c l�nh v�o ho�ng cung.")
	Msg2Player("l�i ���c l�nh v�o ho�ng cung.")
end

function L50_Step2()
	DelItem(139)
	SetTask(8,50*256+40)
	AddNote("L�p t�c �i l�y Trung Nguy�n B�n ��")
	Msg2Player("L�p t�c �i l�y Trung Nguy�n B�n ��")
end

function L50_Step3()
	SetTask(8,50*256+60)
	DelItem(199)
	AddNote("�� �em Trung Nguy�n B�n �� giao cho T� Tu�n! ")
	Msg2Player("�� �em Trung Nguy�n B�n �� giao cho T� Tu�n! ")
end
