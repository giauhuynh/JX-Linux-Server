--��ԭ���� ���ݸ� ��������1�Ի�
--function main(sel)
--Say("������������ү��ȥ�Ի����ˣ�����ȴ�����������治ˬ��", 0);
--end;

--ͨ��ϵͳר�������ű�(BlackBay.2003.12.30)

FESTIVAL06_NPCNAME = "<color=yellow>��������:<color>";
Include([[\script\global\·��_��������.lua]]);

function main(sel)
    gsoldier_entance();
end;

function main_former()
	--�������ָ����ϵͳѯ�ʵ�ǰPlayer��ͨ�����״̬��Ϣ
	--��ѯ�Ľ�������Ժ�ϵͳ�ص�������ָ���ĺ�����
	Say("N�y ��i hi�p n�n �i �i th� h�n, ��ng lang thang � ��y. ", 0);
	--AskRelayForKillerStatus("KillerCallBack")
end;

--������������ǲ�ѯ����Ļص�����������������˳������ı�
function KillerCallBack(RewardMoney, RewardTaskID, CancelMoney, CancelTaskID, OwnCount, MyTaskCount)
end;

function CreateTask()
	--�����������֪ͨ�ͻ��˴򿪴�������Ľ���
	OpenCreateTask()
end;

function QueryTask()
	--���������������������ȡ�������͸���ҿͻ���
	OpenAllTask()
end;

function ModifyTask()
	--�������������������ȡ�������Լ��Ѵ����������͸���ҿͻ���
	OpenOwnTask()
end;

function DoNothing()
	Say("��ү��ȥ�Ի����ˣ�����ȴ�����������治ˬ!", 0)
end;


