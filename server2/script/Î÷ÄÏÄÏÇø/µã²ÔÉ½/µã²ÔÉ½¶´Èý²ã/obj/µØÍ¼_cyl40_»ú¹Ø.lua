-- ���ɽ��Զ� ·��NPC ���أ�������40������
-- by��Dan_Deng(2003-07-26)

function main()
	UTask_cy = GetTask(6)
	if (UTask_cy == 40*256+20) then
		if (HaveItem(197) == 1) and (HaveItem(196) == 1) and (HaveItem(198) == 1) then		--����40��������Կ����ȫ
			DelItem(197)
			DelItem(196)
			DelItem(198)
			SetTask(6,40*256+30)
			AddNote("��ܶ�Ե����֣���3��Կ�״�3���ڷ��䣬�ȳ���������Ů. ")
			Msg2Player("��ܶ�Ե����֣���3��Կ�״�3���ڷ��䣬�ȳ���������Ů. ")
		else
			Msg2Player("���ҳ�����Ů�ĺڰ�������أ�����ֻ��Ҫ3��Կ�ײ��ܴ��������. ")
		end
	else
		Msg2Player(" ������һ�����أ����ǲ���������ʲô��")
	end
end;
