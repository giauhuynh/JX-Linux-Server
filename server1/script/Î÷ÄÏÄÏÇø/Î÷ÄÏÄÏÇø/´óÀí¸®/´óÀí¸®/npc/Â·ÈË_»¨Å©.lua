-- ������ˡ���ũ
-- by��Dan_Deng(2003-09-16)
-- Update: Dan_Deng(2004-05-24) ȭ����Ϣ����

function main(sel)
	Uworld75 = GetTask(75)
	U75_sub2 = GetTask(53)
	if (Uworld75 == 10) and (U75_sub2 < 10) then		-- �����У���ȡ������
		if (HaveItem(384) == 1) then
			SetTask(53,10)
			AddNote("Nh�n nhi�m v�: �i D��c V��ng C�c gi�p Hoa N�ng h�i 3 ��a c�m m�c t�c. ")
			Msg2Player("Nh�n nhi�m v�: �i D��c V��ng C�c gi�p Hoa N�ng h�i 3 ��a c�m m�c t�c.")
			Talk(1,"","L�c s� huynh l�i t�i kh�o nghi�m? Th�t t�t qu�, ��i L� b�n m�a hoa, c�n thi�u d��c v��ng c�c c�c ph�m t� m�c t�c, ng��i �i gi�p ta �i h�i 3 ��a r�i quay l�i ��y.")
		else
		 	Talk(1,"","M�t phong th� c�ng kh�ng c�. V� c�, l�m sao �� ta tin ng��i ���c ��y??")
		end
	elseif (Uworld75 == 10) and (U75_sub2 == 10) then		-- ����������ж�
		if (GetItemCount(112) >= 3) then
			DelItem(112)
			DelItem(112)
			DelItem(112)
			SetTask(53,20)
			AddNote("Nhi�m v�: Ho�n th�nh h�i c�m m�c t�c.")
			Msg2Player("Nhi�m v�: Ho�n th�nh h�i c�m m�c t�c.")
			Talk(1,"","Th�t l� t�t qu�, ��ng l� nh�t ph�m, ta s� ph�i ng��i �i th�ng b�o l�c s� huynh, ta ��ng �.")
		else
			Talk(1,"","C�n ch�a c� t�m ���c �?")
		end
	else
		i = random(0,99)
		if (i < 25) then
			Talk(1,"","�ng l�o h� �o�n n�y c� ��i y�u hoa nh� th�nh c�i b�nh, hoa tr� m� �ng �y ch� b�n cho ng��i c� duy�n v�i �ng �y, c�n ng��i kh�c th� d� cho c� �em n�i v�ng n�i b�c ��n �ng �y c�ng kh�ng b�n.")
		elseif (i < 50) then
			Talk(1,"","Hoa tr� ��p nh�t to�n ��i L� l� do �ng l�o h� �o�n tr�ng, �ng �y s�ng � m�t ng�i nh� nh� b�n b� Nh� H�i. Hoa tr� c�a l�o b�n h� �o�n m�i n�m ��n m�a b�i hoa lu�n ���c ch�n l� hoa ��p nh�t.")
		elseif (i < 75) then
			Talk(1,"","Nh� nh� � ��i L� ��u tr�ng hoa tr�, m�i n�m ��u t� ch�c tri�n l�m h�i hoa.")
		else
			Talk(1,"","V�n Nam tr� hoa nh�t thi�n h�, ��i L� tr� hoa nh�t V�n Nam, hoa tr� trong m�t ng��i ��i L� ch�ng ta l� hoa ��p nh�t thi�n h�, ngay c� M�u ��n c�ng kh�ng s�nh b�ng.")
		end
	end
end;
