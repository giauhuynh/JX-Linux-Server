function OnDeath ()
	Uworld128 = GetTask(128)
	Uworld134 = GetTask(134)
	if (Uworld128 == 30) then
		Uworld134 = SetBit(Uworld134,5,1)
		if (Uworld134 == 1023) then
			SetTask(128,40)
			Msg2Player("�� gi�t ���c s�t th�, tr� v� g�p gi�i v� t�!!! ")
			AddNote("�� gi�t ���c s�t th�, tr� v� g�p gi�i v� t�!!! ")
		elseif (Uworld134 ~= GetTask(134)) then
			SetTask(134,Uworld134)
			Msg2Player("Ta v�i ng��i c� th� o�n g� sao?")
		else
			-- �ظ�ɱ��ͬһֻNPC��������ʾ
		end
	end
end