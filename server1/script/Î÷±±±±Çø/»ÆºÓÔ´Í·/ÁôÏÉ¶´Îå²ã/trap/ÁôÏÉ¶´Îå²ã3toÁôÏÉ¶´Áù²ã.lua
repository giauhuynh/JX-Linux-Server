--�������� ���ɶ����3to���ɶ�����
--TrapID���������� 41
-- by��Dan_Deng(2003-07-31)

function main(sel)
	Talk(1,"L60_q5","�㿴��һ�����أ�������У�")
--	AddTermini(47)		--����ʲô������
end;

function L60_q5()
	Say("�Ƶ�����ͥ�����ģ�����������������Ƶ��쳵����˳�Ϊ��ԯ�ϣ���֪������ָ�����Ĳ�����",4,"����/L60_S5_wrong","����/L60_S5_wrong","������ľͷ����������/L60_S5_correct","�����ľͷ��/L60_S5_wrong")
end

function L60_S5_correct()
	UTask_kl = GetTask(9)
	if (GetFaction() == "kunlun") and ((UTask_kl >= 70*256) or ((UTask_kl == 60*256+20) and (HaveItem(15) == 1))) then
--	if ((UTask_kl == 60*256+20) and (HaveItem(15) == 1)) then
		Msg2Player("�㰴��3���𰸣������������㵽һ������")
		SetFightState(1);
		NewWorld(130, 1547, 3143);
	else
		Msg2Player("���Ұ�һͨ����û�з�Ӧ")
	end
end;

function L60_S5_wrong()
	Msg2Player("���Ұ�һͨ����û�з�Ӧ")
end;
