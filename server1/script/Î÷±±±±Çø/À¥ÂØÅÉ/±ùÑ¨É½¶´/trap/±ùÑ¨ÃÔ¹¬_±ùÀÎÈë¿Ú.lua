--��Ѩ�Թ� ������� trap
-- by��Dan_Deng(2003-07-31)

function main(sel)
	UTask_kl = GetTask(9)
	if (UTask_kl == 50*256+64) and (HaveItem(213) == 1) and (HaveItem(10) == 0) then		-- ����50��������
		SetTask(9,50*256+128)
		DelItem(213)		-- Կ��Ӧʹ��ID��
		Msg2Player("����Կ�״����� ")
		AddNote("����Կ�״����� ")
	elseif (UTask_kl == 50*256+128) then
--		SetPos()
		Msg2Player("���߽��η� ")
	else
		Msg2Player("�η��ű����� ")
	end
end;
