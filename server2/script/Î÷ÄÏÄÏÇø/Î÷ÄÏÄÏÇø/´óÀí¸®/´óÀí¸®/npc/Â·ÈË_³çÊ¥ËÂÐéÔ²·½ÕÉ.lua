-- ���ǡ����ˡ���ʥˢ��Բ���ɣ����̷�50������
-- by��Dan_Deng(2003-07-27)

function main()
	UTask_cy = GetTask(6)
	if (UTask_cy == 50*256+10) then		--50������
		SetTask(6,50*256+32)
		Talk(4,"","Ph��ng Tr��ng ��i S�, ta l� Th�y Y�n �� t�, ch��ng m�n g�i ta t�i gi�p qu� t� t�m b�o v�t.","A di �� ph�t, th�t l� phi�n cho th� ch�, ��o t�c �� tr�n v�o Thi�n T�m th�p.","Th�p n�y l� th�nh ��a c�a ��i L�, cho n�n, �� ph�ng ng�a ng��i kh�c ti�n v�o, � trong th�p c� r�t nhi�u ��ng nh�n. Th� ch� mu�n v�o xin h�y c�n th�n!","��i s� y�n t�m! ")
	elseif (UTask_cy == 50*256+32) and (HaveItem(5) == 1) then		-- ���
		SetTask(6,50*256+50)
		DelItem(5)
		Talk(3,"","Ph��ng Tr��ng ��i s�, c�i n�y l� qu� t� m�t t�ch ng� ��ng quan �m. C�ng mu�n gi�p ��i s� m�t tay.","A di �� ph�t, tr�n t� b�o v�t �� t�m ���c. Th�t l� B� T�t ph� h�, �a t� th� ch�. G�i l�i c�m �n ch��ng m�n d�m ta.","��i s� kh�ng n�n kh�ch kh�!")
		Msg2Player("��a ng� ��ng quan �m cho Ph��ng Tr��ng h� vi�n.")
		AddNote("��a ng� ��ng quan �m cho Ph��ng Tr��ng h� vi�n.")
	elseif (UTask_cy >= 50*256+32) and (UTask_cy < 50*256+50) then		-- ���������
		Talk(1,"","Tr�t b� h�t phi�n to�i, ta � ch� n�y ni�m kinh, kh�ng m�ng chuy�n nh�n th�.")
	elseif (UTask_cy >= 50*256+50) then						-- ��������Ժ�
		Talk(1,"","�a t� th� ch�, th� ch� t�ch nhi�u ��c �t s� g�p nhi�u may m�n.")
	else
		Talk(3,"","V� ��ng Quan �m l� m�t trong nh�ng S�ng Th�nh Ng� B�o c�a b�n t�, ��y l� ni�m t� h�o c�a S�ng Th�nh T�.","Ng��i xu�t giao sao m� c� l�ng ki�u ng�o hi�u th�ng ch�?","L�i gi�o hu�n c�a th� ch� th�t khi�n b�n t�ng ph�i suy x�t l�i. A Di �� Ph�t, A Di �� Ph�t, A Di �� Ph�t. ")
	end
end;
