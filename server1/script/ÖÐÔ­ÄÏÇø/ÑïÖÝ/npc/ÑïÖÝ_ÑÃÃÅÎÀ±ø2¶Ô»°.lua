--��ԭ���� ���ݸ� ��������2�Ի�
--function main(sel)
--Say("�������������ỻ�˰�ȥ�����������أ�", 0);
--end;

--ͨ��ϵͳר�������ű�(BlackBay.2003.12.30)

FESTIVAL06_NPCNAME = "<color=yellow>��������:<color>";
Include([[\script\global\·��_��������.lua]]);

function main(sel)
    gsoldier_entance();
end;

function main_former()
	Say("N�y, ��i hi�p n�n �i �i th� h�n, ��ng lang thang � ��y. ", 0);
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
	Say("���ỻ�˰�ȥ������������", 0)
end;


