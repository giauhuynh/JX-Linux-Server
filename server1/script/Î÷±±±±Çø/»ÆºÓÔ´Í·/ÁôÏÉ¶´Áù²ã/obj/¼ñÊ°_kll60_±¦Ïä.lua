-- �ƺ�Դͷ�Թ� ���� ���س�ʦ����
-- by��Dan_Deng(2003-07-31)

function main()
	UTask_kl = GetTask(9)
	if (UTask_kl == 60*256+20) then
		if ((HaveItem(11) == 1) and (HaveItem(12) == 1) and (HaveItem(13) == 1) and (HaveItem(14) == 1) and (HaveItem(15) == 1)) then
			DelItem(11)
			DelItem(12)
			DelItem(13)
			DelItem(14)
			DelItem(15)
			AddEventItem(16)
			AddNote("����ȥ����ɫʯ")
			Msg2Player("�����Ϸ���5��Կ�״����������ʯ")
		else
			Talk("û����5��Կ�ף����޷���������ʯͷ")
		end
	else
		Talk(1,"","�������������")
	end
end;
