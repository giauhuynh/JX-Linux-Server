--description: Т�ִ�_��ү
--author: wangzg	
--date: 2003/7/21
--update 2003/7/24 yuanlan
-- Update: Dan_Deng(2003-08-07)

function main()
	UTask_world42=GetTask(70)
	if (UTask_world42==2) then
		Talk(2, "step1", "Ta c� th� m��n quy�n s�ch c�a �ng ch�?","Ch�c l� C�t L�o ��u � th�n b�c nh� ng��i ��n ph�i kh�ng? T�n �y mu�n m��n s�ch th� mang 'Di Ki�n Ch�' ��n trao ��i v�i 'K� Th�n L�c' c�a ta.")
	elseif ((UTask_world42==6) and (HaveItem(189) == 1)) then		-- ����
		Talk(2, "step3", "��y l� quy�n s�ch �ng c�n.", "Hay qu�! ��y l� quy�n s�ch l�o �y c�n.")
	elseif ((UTask_world == 8) and (HaveItem(188) == 0)) then		-- �鶪��
		Talk(1,"","B�n tr�! Ch� � ��ng l�m m�t s�ch qu� c�a ta n�a nh�.")
		AddEventItem(188)
		Msg2Player("B�n nh�n ���c 1 quy�n K� Th�n L�c")
	else
		Talk(1,"","B�n tr�! L�m ng��i kh�ng nh�t thi�t xem tr�ng s� di�n, c� nhi�u vi�c n�i ra th� c�n s� di�n!")
	end
end;

function step1()
	SetTask(70,4)
	AddNote("T�m ���c C�i Gia � nam tr�n, �ng �y mu�n L� Gia d�ng Di Ki�n ch� ��i K� Th�n L�c. ")
end;

function step3()
DelItem(189)
AddEventItem(188)
SetTask(70,8)
AddNote("T� ch� C�t Gia, d�ng Di Ki�n Ch� ��i K� Th�n L�c")
Msg2Player("D�ng Di Ki�n Ch� ��i K� Th�n L�c")
end;
