--description: ��ԭ���� �꾩�� ����1�Ի� ���̳̽�ʦ����
--author: yuanlan	
--date: 2003/5/19
-- Update: Dan_Deng(2003-08-14)
Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc> Tr��c kia ta ��y th� r�n c�a h�ng ��ch l�m �n nh�ng h�ng h�a li�u, bao nhi�u danh s� hi�p kh�ch c�ng ��n ta ��y m� ��nh ch� binh kh�, hi�n nay kh�ng n�i c�ng ���c! C� mu�n nh�n m�t ch�t hay kh�ng ta ��y m� ��ch binh kh� ?"


function main(sel)
	UTask_tr = GetTask(4)
	if (UTask_tr == 60*256+20) then
		UTask_trsub60 = GetByte(GetTask(28),1)
		if (UTask_trsub60 == 0) then
			tiejiang_city("<dec><npc>Ta n�m nay ba m��i r�i, kh�ng c� c��i v�, ai, t�i sao kh�ng c� ai th�ch ta ��y ? Kh�ng n�i g�t ng��i, th�t ra th� ta th�t th�ch th�nh ��ng Tr��ng Qu� Ph�, nh�ng l� ta m�t m�c kh�ng d�m h��ng n�ng th� t�i, ta s� n�ng gh�t ta.", "Ta thay ng��i h�i m�t ch�t t�m � c�a n�ng!/L60_sub_yes")
		elseif (UTask_trsub60 == 1) then
			if (HaveItem(63) == 1) then
				tiejiang_city("<dec><npc>Qu� l�m phi�n ng��i , ng�n tr�m thay ta ��a cho n�ng ���c kh�ng?")
			else
				AddEventItem(63)
				Talk(1,"","Ng��i c�n kh�ng c� c�m ng�n tr�m li�n �i , ng��i th�t mu�n gi�p ta sao?")
			end
		elseif (UTask_trsub60 == 2) and (HaveItem(64) == 1) then
			Talk(2, "", "Th�t ra th� Tr��ng Qu� Ph� ��i v�i ng��i c�ng c� h�o c�m, ��y l� n�ng tr� v� ��a cho ng��i h��ng nang !", "Th�t c�m �n ng��i, n�u nh� kh�ng c� ng��i, ch�ng ta kh�ng bi�t ph�i ��i bao l�u m�i c� th� hi�u t�m � c�a ��i ph��ng. Ta c� m�t thanh �o�n ki�m, m�c d� kh�ng ��ng gi� bao nhi�u ti�n, nh�ng l� nh� ch�ng ta t� truy�n ��ch, s� ��a cho ng��i l�m t� l�.")
			DelItem(64)
			AddEventItem(127)
			SetTask(28, SetByte(GetTask(28),1,10))
			AddNote("��ng h��ng nang cho kh�c th� r�n, l�y ���c �o�n ki�m 'Y�u Nh�t'.")
			Msg2Player("�õ��Ͻ�������'.")
		else
			if (HaveItem(127) == 1) then
				tiejiang_city("<dec><npc>�a t� ng��i t�i h�p ta c�ng Tr��ng Qu� Ph� nh�n duy�n, c� mu�n nh�n m�t ch�t hay kh�ng ta ��y m� ��ch binh kh� ")
			else
				AddEventItem(127)
				Talk(1,"","M�c d� ng��i thi �n kh�ng c�u h�i b�o, nh�ng l�, ng��i gi�p ta ��i mang, thanh ki�m n�y v� lu�n nh� th� n�o ng��i mu�n thu h�.")
			end
		end
	elseif (UTask_tr > 60*256+20) then
		tiejiang_city("<dec><npc>�a t� ng��i t�i h�p ta c�ng Tr��ng Qu� Ph� nh�n duy�n, c� mu�n nh�n m�t ch�t hay kh�ng ta ��y m� ��ch binh kh� ")
	else
		tiejiang_city()
	end
end;

function L60_sub_yes()
	Talk(1,"","V�y qu� l�m phi�n ng��i, c�i n�y c�y ng�n tr�m l� ta t� tay ��nh ch� ��ch, ng��i gi�p ta ��a cho n�ng, n�u nh� n�ng ti�p nh�n, li�n t� r� trong l�ng c�a n�ng c�ng c� ta.")
	AddEventItem(63)
	SetTask(28, SetByte(GetTask(28),1,1))
	AddNote("C�ng Kh�c Thi�t T��ng  ��i tho�i, gi�p h�n c�m ng�n tr�m cho Tr��ng Qu� Ph� ")
	Msg2Player("��t ���c m�t Ng�n Tr�m.")
end;

function yes()
Sale(7);  			--�������׿�
end;

