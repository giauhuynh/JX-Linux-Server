--description: ��ԭ���� ������ �ӻ����ϰ�Ի�	�䵱��20������
--author: yuanlan	
--date: 2003/5/14
-- Update: Dan_Deng(2003-08-08)
-- Update: Dan_Deng(2003-08-17)
Include("\\script\\global\\global_zahuodian.lua");

function main(sel)
	UTask_wd = GetTask(5);
	if (UTask_wd == 20*256+40) and (HaveItem(66) == 1) then
		Talk(2, "", "Ng��i c� th� gi�p ta tu b� c�i ��o b�o n�y sao ?", "Con ta l�n V� �ang s�n h�i l� thu�c b� h�a lang trong ��ng ��ch lang <color=Red><color> tha �i r�i , ng��i n�o c� th� gi�p ta c�u n� ?!","C�u ng��i kh�n c�p, ta gi�p ng��i b�o l�i cho ��ng b�o")
		SetTask(5, 20*256+50)
		DelItem(66)
		AddNote("? T��ng D��ng t�m ���c ch� ti�m t�p h�a, bi�t con trai c�a n�ng b� d� lang � <color=red>H�a Lang ��ng <color> tha �i r�i. ")
		Msg2Player("? T��ng D��ng t�m ���c ch� ti�m t�p h�a, bi�t con trai c�a n�ng b� d� lang � <color=red>H�a Lang ��ng <color> tha �i r�i. ")
	elseif (UTask_wd == 20*256+50) then
		if (HaveItem(67) == 1) then
			Talk(3,"","Ng��i l� �n nh�n c�u con trai ta, c�n tr� gi�p g� c� vi�c n�i!","C� th� gi�p ta s�a c�i ��o b�o n�y kh�ng? ","Kh�ng th�nh v�n ��, v� b�o ��p �n c�u m�ng, ta s� kh�ng l�y ti�n !")
			DelItem(67)
			AddEventItem(68)
			Msg2Player("��o b�o �� s�a xong. ")
			SetTask(5, 20*256+80)
			AddNote("Ch� ti�m t�p h�a d�ng t�m ti b� s�a xong ��o b�o.")
		else
			Say("Con ta l�n V� �ang s�n h�i l� thu�c b� h�a lang trong ��ng ��ch lang <color=Red><color> tha �i r�i , ng��i n�o c� th� gi�p ta c�u n� ?!", 2, "Ta ch� mu�n mua 1 �t �� /yes", "Ta bi�t r�i /no")
		end
	elseif (UTask_wd == 20*256+80) and (HaveItem(68) == 0) then		-- ���߶���
		AddEventItem(68)
		Talk(1,"","�n nh�n, ng��i qu�n ��o b�o li�u")
	else
		local Buttons = store_sel_extend();
		Say("Ch� ti�m t�p h�a: Ng�i ��n ��y c� vi�c g� ?", getn(Buttons), Buttons);
	end
end;

function yes()
	Sale(11)  			--�������׿�
end;

function BuyChristmasCard()
	Sale(97);
end


function no()
end;
