--�������� ���ɶ��Ĳ�4to���ɶ����1
--TrapID���������� 37
--�ƺ�Դͷ�Թ� F4-F5 trap
-- by��Dan_Deng(2003-07-31)

function main(sel)
	Talk(1,"L60_q4","�㿴��һ�����أ�������ż����֣�")
--	AddTermini(47)		--����ʲô������
end;

function L60_q4()
	Say("��������������಻Զ�����������¥������ͥ�����˵�����˺�����������ʵ���ǻ��磬�������������ǰ���ظ�Զ����֪��������Щ�����������?",4,"��ĵ���/L60_S4_wrong","���ƽ��/L60_S4_correct","���ϵر�/L60_S4_wrong","��ߵ���/L60_S4_wrong")
end

function L60_S4_correct()
	UTask_kl = GetTask(9)
	if (GetFaction() == "kunlun") and ((UTask_kl >= 70*256) or ((UTask_kl == 60*256+20) and (HaveItem(14) == 1))) then
--	if ((UTask_kl == 60*256+20) and (HaveItem(14) == 1)) then
		Msg2Player("�㰴��ǰ�ĵڶ��������ػ���㵽�����")
		SetFightState(1);
		NewWorld(129, 1694, 3143);
	else
		Msg2Player("���Ұ�һͨ������û�з�Ӧ")
	end
end;

function L60_S4_wrong()
	Msg2Player("���Ұ�һͨ������û�з�Ӧ")
end;
