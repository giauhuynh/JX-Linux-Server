--�������� ���ɶ�����4to���ɶ�����1
--TrapID���������� 27
--�ƺ�Դͷ�Թ� F2-F3 trap
-- by��Dan_Deng(2003-07-31)

function main(sel)
	Talk(1,"L60_q2","�㿴��һ�����أ�������м�����:")
--	AddTermini(47)		--����ʲô������
end;

function L60_q2()
	Say("�׵�ԭ��̫����Ҳ��һλũҵ������֤���ϵ�̫�������⣬���������������ʱ�����ϵ��˲���Դ�������������������ũ�ϡ���ũ��Ҳ��һλҽҩ����Ϊ���ǳ����ϰ��ֲݣ�����ж�������������һ��Ů������������ʱ������ˮ�������Ӵ˱�ΪһֻС�񣬿ں�ʯͷ���붫�����������󺣡���֪�����С���������",4,"�丸/L60_S2_wrong","�޹�/L60_S2_wrong","����/L60_S2_wrong","����/L60_S2_correct")
end

function L60_S2_correct()
	UTask_kl = GetTask(9)
	if (GetFaction() == "kunlun") and ((UTask_kl >= 70*256) or ((UTask_kl == 60*256+20) and (HaveItem(12) == 1))) then
--	if ((UTask_kl == 60*256+20) and (HaveItem(12) == 1)) then
		Msg2Player("�㰴��4���𰸣����ػ���㵽��3��. ")
		SetFightState(1);
		NewWorld(127, 1678, 2991);

	else
		Msg2Player("���Ұ�һͨ������û��ʲô��Ӧ")
	end
end;

function L60_S2_wrong()
	Msg2Player("���Ұ�һͨ������û��ʲô��Ӧ")
end;
