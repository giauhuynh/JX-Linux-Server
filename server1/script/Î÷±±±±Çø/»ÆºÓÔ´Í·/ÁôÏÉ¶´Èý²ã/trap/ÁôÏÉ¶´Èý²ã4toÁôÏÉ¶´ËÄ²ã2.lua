--�������� ���ɶ�����4to���ɶ��Ĳ�2
--TrapID���������� 33
--�ƺ�Դͷ�Թ� F3-F4 trap
-- by��Dan_Deng(2003-07-31)

function main(sel)
	Talk(1,"L60_q3","�㿴��һ�����أ��������")
--	AddTermini(47)		--����ʲô������
end;

function L60_q3()
	Say("��껵ĸ�����̫�׽��ǣ�����һ��ƶ��Ĵ�ׯ�������ֳ���ɣ�ϡ�������ڶ������������������ڵ�����ٹٶ����������������ĸ�����е�һֻ����֪�����ĳ�����ʲô�����",4,"�� /L60_S3_correct","��/L60_S3_wrong","��/L60_S3_wrong","�� /L60_S3_wrong")
end

function L60_S3_correct()
	UTask_kl = GetTask(9)
	if (GetFaction() == "kunlun") and ((UTask_kl >= 70*256) or ((UTask_kl == 60*256+20) and (HaveItem(13) == 1))) then
--	if ((UTask_kl == 60*256+20) and (HaveItem(13) == 1)) then
		Msg2Player("�㰴��һ�����ػ���㵽���Ĳ�")
		SetFightState(1);
		NewWorld(128, 1586, 3217);
	else
		Msg2Player("���Ұ�һͨ��û���κη�Ӧ")
	end
end;

function L60_S3_wrong()
	Msg2Player("���Ұ�һͨ��û���κη�Ӧ")
end;
