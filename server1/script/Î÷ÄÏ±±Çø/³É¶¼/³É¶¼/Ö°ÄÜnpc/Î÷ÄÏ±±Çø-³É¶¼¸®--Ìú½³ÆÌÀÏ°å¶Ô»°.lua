--description: ���ϱ��� �ɶ��� �����̵ϰ� ������10������
--author: yuanlan	
--date: 2003/5/24
-- Update: Dan_Deng(2003-08-12)

Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc>Sau n�y ng��i c� mu�n t�m th�y h�c th� r�n th� c� ��n ��y t�m ta, ao �n bao u�ng c�."

function main(sel)
	UTask_em = GetTask(1)
	if ((UTask_em == 10*256+20) and (HaveItem(18) == 1) and (HaveItem(19) == 1)) then
		Talk(5, "", "th?r�n ��i ca , ng��i c?th?gi�p ta gh�p hai m�nh g��ng ��ng th�nh m�t kh�ng ?", "n�u ��i l�i ng��i kh�c , mu�n ph�c h�i ���c m�t g��ng ��ng th�t kh?nh?l�n tr�i , nh�ng ta l�i c?tay ngh?t?truy�n , chuy�n m�n d�ng �� tu b?g��ng ��ng , ng��i coi nh?�� t�m ��ng ng��i , ch?l?..", "ng��i ph�i nhi�u ti�n ta m�i b�ng l�ng ph�c h�i g��ng ��ng?", "ch?c�n ng��i c?th?gi�p ta t�m ���c m�t lo�i g�i l?l��ng m?b�c kho�ng th�ch , ta s?gi�p ng��i tu b?l�i c�i g��ng ��ng n�y , nghe n�i th�nh t�y trong r�ng c�y th?c?l��ng m?b�c , c?r�t nhi�u th?d?�n th�t ng��i , cho n�n b�nh th��ng kh�ng ai d�m �i ��o ?.","���c r�i , ta g�i l�i hai kh�i g��ng ch?n�y , l�p t�c �i t�m l��ng m?b�c .")
		DelItem(18)
		DelItem(19)
		SetTask(1, 10*256+40)
		AddNote("��n th�nh �� t�m ���c th?r�n , bi�t c�n l��ng m?b�c �� ph�c h�i g��ng ��ng nh?c? ")
		Msg2Player("��n th�nh �� t�m ���c th?r�n , bi�t c�n l��ng m?b�c �� ph�c h�i g��ng ��ng nh?c? ")
	elseif (UTask_em == 10*256+40) then
		if (HaveItem(118) == 1) then
			Talk(1, "", "r�t t�t ,�� �� l��ng m?b�c , ta �� gi�p ng��i ph�c h�i g��ng nh?c?")
			DelItem(118)
			AddEventItem(20)
			SetTask(1, 10*256+60)
			AddNote("��a l��ng m?b�c cho th?r�n , �� ph�c h�i g��ng ��ng nh?c?")
			Msg2Player("K�u th?r�n ph�c h�i g��ng ��ng nh?c?")
		else
			tiejiang_city("<dec><npc>nghe n�i th�nh t�y trong r�ng c�y c?l��ng m?b�c , kh�ng c?l��ng m?b�c kh�ng th?ph�c h�i g��ng nh?c?");
		end
	elseif ((UTask_em == 10*256+60) and (HaveItem(20) == 0)) then		-- �����У�ݭ������
		AddEventItem(20)
		Msg2Player("��t ���c ph�c h�i g��ng ��ng nh?c?")
		Talk(1,"","Ng��i kh�ng c�m g��ng ��n ��y ?")
	else
		tiejiang_city(TIEJIANG_DIALOG);
	end
end;

function yes()
Sale(13)  			--�������׿�
end;

