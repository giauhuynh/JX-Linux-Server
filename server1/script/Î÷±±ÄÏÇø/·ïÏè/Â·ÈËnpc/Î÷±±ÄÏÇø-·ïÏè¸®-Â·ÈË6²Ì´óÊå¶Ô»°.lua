--�������� ���踮 ����6�̴���Ի�����ȭ����Ϣ����
-- By: Dan_Deng(2004-05-24)

function main(sel)
	Uworld75 = GetTask(75)
	U75_sub3 = GetTask(54)
	if (Uworld75 == 10) and (U75_sub3 < 10) then		-- �����У���ȡ������
		if (HaveItem(384) == 1) then
			SetTask(54,10)
			AddNote("��n Thi�u l�m t� gi�p Th�i ��i th�c t�m kim li�n hoa. ")
			Msg2Player("��n Thi�u l�m t� gi�p Th�i ��i th�c t�m kim li�n hoa. ")
			Talk(1,"","Ti�c l� ta c� ��i nghi�n c�u h�c t�p nh�ng kh�ng c� h�i t�. Nghe n�i � Thi�u L�m c� kim li�n hoa c� th� gi�p ta c� h�i t�.")
		else
		 	Talk(1,"","B�y gi� ngay c� c�i b�ng c�ng kh�ng th�y, l�m sao ta c� th� giao nhi�m v� cho ng��i ��y?")
		end
	elseif (Uworld75 == 10) and (U75_sub3 == 10) then		-- ����������ж�
		if (HaveItem(26) == 1) then
			DelItem(26)
			SetTask(54,20)
			AddNote("T�m ���c Kim li�n hoa. Ho�n th�nh nhi�m v�. ")
			Msg2Player("T�m ���c Kim li�n hoa. Ho�n th�nh nhi�m v�. ")
			Talk(1,"","Ha ha! ��y ch�nh l� ��ch ng�c b�i trong truy�n thuy�t ��y. H�o ti�u t�, th�t c�m �n nh� ng��i.")
		else
			Talk(1,"","Ch�a t�m ���c Kim li�n hoa sao.")
		end
	else
		i = random(0,1)
		if (i == 0) then
			Talk(1,"","Th�i ��i th�c: Th�i gia ta m�y ��i danh ti�ng, nh�ng ��n ��i ta kh�ng c� nam t� n�i d�i, th�t l� c� l�i v�i li�t t� li�t t�ng.")
		else
			Talk(1,"","Th�i ��i th�c: B�t hi�u h�u tam, v� h�u vi ��i nha!")
		end
	end
end;
