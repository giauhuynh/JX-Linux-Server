-- ������ �ٰ� ����_�ٰ�����.lua ������ɻ�������
-- By: Dan_Deng(2004-05-27)

Include("\\script\\global\\repute_head.lua")

function main(sel)
	Uworld43 = GetTask(43)
--	if (Uworld43 < 10) and (GetLevel() >= 70) and (GetReputeLevel(GetRepute()) >= 6) then
		--		Say(10713 ,2,"������Ů��ʮ����֮��Ҽ�֪������ȻҪ�ܡ�/U43_get","û��/no")
	if (Uworld43 == 40) and (HaveItem(381) == 1) then
		Talk(6,"U43_40","Qu� nhi�n kh�ng ngo�i d� �o�n c�a ta H�i hoa t�c ��ng tr�n � L�i v�n tr�i.","Ch�nh l� n�!","Ch�nh l� h�n, nguy�n xu�t th�n v�ng t�c, sau khi ch� tr�i qua ��i h�n ti�p qu�n. kh�ng bi�t ph�t d��ng L�i v�n tr�i, l�i gi�i t�n s�n tr�i �i l�m k� h�i hoa t�c kh�ng bi�t h�n �� h�i bi�t bao nhi�u c� n��ng trong tr�ng, h�n c� khinh c�ng r�t t�t v� v�y c�ng ch�a ai b�t ���c h�n","Th�n th� c�a h�n r�t kh� n�u kh�ng ta c�ng kh�ng c�n ng��i tr� gi�p.","H�n �ang tr�n � l�i v�n tr�i mau t�m ��n ��.","Mau l�n ���ng b�t h�n n�u kh�ng c�n nhi�u c� g�i b� h�n b�t")
	elseif (Uworld43 == 80) and (HaveItem(382) == 1) then
		Talk(1,"U43_80","Qu� nhi�n kh�ng ngo�i d� �o�n c�a ta, h�n �ang c� d�u tung t�ch.")
	elseif (Uworld43 == 10) then
		Talk(1,"","L�u nh� v�y v�n ch�a t�m ���c H�i hoa t�c")
	elseif (Uworld43 == 20) then
		Talk(1,"","Kh�ng t�m th�y h�n � ,c� c�n ta ch� ���ng?")
	else
		Talk(1,"","Quan sai : � l�m an n�y ai d�m l�m lo�n th� ��ng m� t��ng tho�t kh�i tay ta.")
	end
end;

function U43_get()
	Talk(1,"","Theo ta �i�u tra th� h�i hoa t�c tr�n tay c�m c�y qu�t,ch�ng th��ng xu�t hi�n � th�c s�n v� l�i v�n ��ch s�n tr�i,nh�ng tr��c h�t ng��i n�n v�o b�i ki�n L�i bang ch�, h�n ch�c bi�t nhi�u h�n, nh�ng h�y c�n th�n ng��i n�y r�t �m hi�m.")
	SetTask(43,10)
	AddNote("C�ng sai th�nh l�m an : ti�u di�t h�i hoa t�c, th�m d� t�nh h�nh c�a b�n ch�ng.. ")
	Msg2Player("C�ng sai th�nh l�m an : ti�u di�t h�i hoa t�c, th�m d� t�nh h�nh c�a b�n ch�ng..")
end;

function U43_40()
	SetTask(43,50)
	Msg2Player("Sau �� �i t�m v�n c�m v�n thi) ")
end

function U43_80()
	SetTask(43,90)
	Msg2Player("t�m ki�m v� �ch ch�ng kh�ng tr�n � l�m an.")
end

function no()
end;
