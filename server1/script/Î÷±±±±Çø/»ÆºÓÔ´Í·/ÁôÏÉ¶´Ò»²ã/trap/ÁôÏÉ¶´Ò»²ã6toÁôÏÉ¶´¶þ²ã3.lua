--�������� ���ɶ�һ��6to���ɶ�����3
--TrapID���������� 25
-- by��Dan_Deng(2003-07-31)

function main(sel)
	Talk(1,"L60_q1","�㿴��һ�����أ���������֣�")
--	AddTermini(47)		--����ʲô������
end;

function L60_q1()
	Say("��˵����������Ķ��ӣ�������Ȼ�Ļ������õ��˻��ִ����˼䣬����֮�󣬲������꣬����ȡ����˭������? ",4,"��ĸ/L60_S1_wrong","˥��/L60_S1_correct","Ů�/L60_S1_wrong","��ĸ/L60_S1_wrong")
end

function L60_S1_correct()
	UTask_kl = GetTask(9)
	if (GetFaction() == "kunlun") and ((UTask_kl >= 70*256) or ((UTask_kl == 60*256+20) and (HaveItem(11) == 1))) then
		Msg2Player("�㿴��һ�����أ�������ţ�")
		SetFightState(1);
		NewWorld(126,1483,3039)
	else
		Msg2Player("����Ұ���һͨ����û�з�Ӧ")
	end
end;

function L60_S1_wrong()
	Msg2Player("����Ұ���һͨ����û�з�Ӧ")
end;
