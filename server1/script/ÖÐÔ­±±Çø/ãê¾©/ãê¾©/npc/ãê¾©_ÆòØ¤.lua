-- ѧ���ٸ���ƶ�����ܵ���ؤ
-- By: Dan_Deng(2003-08-22)
-- ��Ǯ����һ��100���ڶ���200��������400...�������ƣ�����8��(12800)֮��ûѧ���ľ�ûʲô�����ˣ�ֻ��Թ̫������

function main(sel)
	-- UTask_world16 = GetTask(16)
	-- if (UTask_world16 == 255) then			-- ���������
		-- Talk(1,"","G�p ph�i chuy�n t�t!")
	-- else
		-- i = (2 ^ UTask_world16) * 100
		-- Say("Ch�c ng��i kh�e m�nh , ��ng th��ng ��ng th��ng ta ��y t�n �n m�y �i! ",2,"Cho ng��i "..i.." ng�n l��ng./W53_pay","�n ngon l�m l��i, nh�t ��nh kh�ng cho/W53_no")
	-- end
	Say("B� t�t ph� h�, ng�i c� th� b� th� cho ta 1 b�a c�m ���c kh�ng!")
end;

-- function W53_pay()
	-- UTask_world16 = GetTask(16)
	-- i = (2 ^ UTask_world16) * 100
	-- if (GetCash() >= i) then
		-- Pay(i)
		-- if (random(0,99) < 20) then			-- 20%����ѧ�����ٸ���ƶ������
			-- Talk(3,"W53_prise","�a t� h�o t�m c�a ng��i, mu�n h�c m�t �t chuy�n ��a tr� ch�i sao? ","Chuy�n ��a, tr� ch�i? ","��ng. ")
		-- else
			-- SetTask(16,UTask_world16 + 1)
		-- end
	-- else
		-- Talk(1,"","B�y gi� ta kh�ng c� ti�n l� ")
	-- end
-- end;

-- function W53_no()
	-- Talk(1,"","Ng��i kh�ng c� t�m �, B� T�t s� kh�ng ph� h�.")
-- end;

-- function W53_prise()
	-- AddNote("B� th� t�n kh�t c�i, h�c ���c k� n�ng c��p c�a ng��i gi�u gi�p ng��i ngh�o kh�.")
	-- Msg2Player("b� th� t�n kh�t c�i , h�c ���c k� n�ng c��p c�a ng��i gi�u gi�p ng��i ngh�o kh�.")
	-- if (HaveMagic(400) == -1) then		-- ����û�м��ܵĲŸ�����
		-- AddMagic(400,1)
	-- end
	-- SetTask(16,255)
-- end;
