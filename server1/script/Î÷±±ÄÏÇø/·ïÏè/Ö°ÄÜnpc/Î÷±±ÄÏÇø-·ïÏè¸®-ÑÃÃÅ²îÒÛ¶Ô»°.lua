--�������� ���踮 ѷ�Ų��۶Ի�
--function main(sel)
--Say("ѷ�Ų��ۣ�ѷ���صأ���ʢ����Ҫ�����Ϲת�ƣ�", 0)
--end;
-- VH by anhdung9992001 clbgamesvn--
--ݨ��ϵݳרӷ�����ű�(BlackBay.2003.12.30)
FESTIVAL06_NPCNAME = "<color=yellow>:<color>";

Include([[\script\global\����_ѷ��ε��.lua]]);

function main(sel) 
-- gsoldier_entance(); 
Talk(1, "", "Ah ha, t�n kia l�o, d�m x�ng v�o nha m�n, bay ��u b�m t�n n�y cu�n ch� cho ta <pic=6>")
end; 

function main_former()
	--Ϣ�����ָ����ϵݳѯ�ʵ�ǰPlayer��ݨ��ϵ��״̬��Ϣ
	--��ѯ�Ľ�������Ժ�ϵݳ�ص�������ָ���ĺ�����
	--AskRelayForKillerStatus("KillerCallBack")
	Say("�i m�t ch�t �i! N�i n�y ch�nh l?tr�ng ��a", 0)
end;

--Ϣ����������ǲ�ѯ����Ļص�����������������˳������ı�
function KillerCallBack(RewardMoney, RewardTaskID, CancelMoney, CancelTaskID, OwnCount, MyTaskCount)
	-- if (RewardMoney > 0) then
		-- GetTaskMoney(0, RewardTaskID)
		-- Earn(RewardMoney)
	-- elseif (CancelMoney > 0) then
		-- GetTaskMoney(1, CancelTaskID)
		-- Earn(CancelMoney)
	-- elseif (OwnCount + MyTaskCount > 0) then
		-- Say("��Ը����ı��ӵ��ˢ��Ţ�ѷ�����㵣�������", 4, "����׽ķ����/CreateTask", "����׽ķ����/QueryTask", "���Լ�������/ModifyTask", "ʲ��Ҳ����/DoNothing")
	-- else
		-- Say("��Ը����ı��ӵ��ˢ��Ţ�ѷ�����㵣�������?", 3, "����׽ķ����/CreateTask", "����׽ķ����/QueryTask","ʲ��Ҳ����/DoNothing")
	-- end
end;

function CreateTask()
	--Ϣ���������ݨ֪�ݻ��˴򿪴�������Ľ��
	OpenCreateTask()
end;

function QueryTask()
	--Ϣ����������������ܸ�ȡ�������ݸ���ҿݻ���
	OpenAllTask()
end;

function ModifyTask()
	--Ϣ��������������Ѹ�ȡ�������Լ��Ѵ����������ݸ���ҿݻ���
	OpenOwnTask()
end;

function DoNothing()
	Say("�����ߣ���Ҫ�����ߵ���ȥ�ģ��������ص�", 0)
end;
