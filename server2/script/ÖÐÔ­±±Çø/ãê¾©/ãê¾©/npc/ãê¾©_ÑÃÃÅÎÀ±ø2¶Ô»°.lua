--��ԭ���� �꾩�� ��������2�Ի�

--function main(sel)
--Say("��������������е��ϰ�����Ͷ����ǽ��˸��׳Ƴ����ѵ�������ʢ���ɣ�", 0);
--end;

--ͨ��ϵͳר�������ű�(BlackBay.2003.12.30)

FESTIVAL06_NPCNAME = "<color=yellow>Nha m�n v� binh:<color>";
Include([[\script\global\����_��������.lua]]);

function main(sel)
    -- gsoldier_entance();
	Say("D�n ch�ng trong th�nh n�y �� c�i ��u ��i v�i ng��i Kim ch�ng ta, ch�ng l� nh� ng��i kh�ng thu�n?", 0); 
end;

function main_former()
	--Ϣ�����ָ����ϵͳѯ�ʵ�ǰPlayer��ͨ��ϵ��״̬��Ϣ
	--��ѯ�Ľ�������Ժ�ϵͳ�ص�������ָ���ĺ�����
	--AskRelayForKillerStatus("KillerCallBack")
	Say("Trong th�nh n�y d�n ch�ng �� s�m ��i v�i ch�ng ta ng��i Kim c�i ��u x�ng th�n, ch�ng l� ng��i ngh� g�y chuy�n b�t th�nh ?", 0);
end;

--Ϣ����������ǲ�ѯ����Ļص�����������������˳������ı�
function KillerCallBack(RewardMoney, RewardTaskID, CancelMoney, CancelTaskID, OwnCount, MyTaskCount)
	-- if (RewardMoney > 0) then
		--Ϣ���������֪ͨϵͳ����Ѿ���ȡ���ͽ�ע���һ������0��ʾ���ͽ𣬵ڶ���������ʾΪ�ĸ��������ͽ�
		-- GetTaskMoney(0, RewardTaskID)
		-- Earn(RewardMoney)
	-- elseif (CancelMoney > 0) then
		--Ϣ���������֪ͨϵͳ����Ѿ���ȡ���˻صı�Ľ�ע���һ������1��ʾ���˽𣬵ڶ���������ʾΪ�ĸ��������˽�
		-- GetTaskMoney(1, CancelTaskID)
		-- Earn(CancelMoney)
	-- elseif (OwnCount + MyTaskCount > 0) then
		-- Say("Ng��i th�t l� gan l�n, t� ti�n x�ng v�o c�ng ���ng c�ng nha m�n ��ch t�i danh ng��i ��m ���ng kh�i sao ?", 4, "Th�nh l�p nhi�m v� �u�i b�t/CreateTask", "Nh�n nhi�m v� �u�i b�t/QueryTask", "Xem nhi�m v� c�a m�nh/ModifyTask", "Kh�ng l�m g� c�/DoNothing")
	-- else
		-- Say("Ng��i th�t l� gan l�n, t� ti�n x�ng v�o c�ng ���ng c�ng nha m�n ��ch t�i danh ng��i ��m ���ng kh�i sao ?", 3, "Th�nh l�p nhi�m v� �u�i b�t/CreateTask", "Nh�n nhi�m v� �u�i b�t/QueryTask", "Kh�ng l�m g� c�/DoNothing")
	-- end
end;

function CreateTask()
	--Ϣ���������֪ͨ�ͻ��˴򿪴�������Ľ���
	OpenCreateTask()
end;

function QueryTask()
	--Ϣ�������������������ȡ�������͸���ҿͻ���
	OpenAllTask()
end;

function ModifyTask()
	--Ϣ�����������������ȡ�������Լ��Ѵ����������͸���ҿͻ���
	OpenOwnTask()
end;

function DoNothing()
	Say("Trong th�nh n�y d�n ch�ng �� s�m ��i v�i ch�ng ta ng��i Kim c�i ��u x�ng th�n, ch�ng l� ng��i ngh� g�y chuy�n b�t th�nh ?", 0)
end;
