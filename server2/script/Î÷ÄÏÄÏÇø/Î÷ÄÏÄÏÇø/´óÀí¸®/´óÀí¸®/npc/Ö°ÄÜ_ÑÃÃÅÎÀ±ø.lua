-- ���ְ�ܡ�ѷ��ε��
-- by��Dan_Deng(2003-09-16)
--function main()
--	Talk(1,"","ѷ��ε����������������")
--end;

--ݨ��ϵݳרӷ�����ű�(BlackBay.2003.12.30)

FESTIVAL06_NPCNAME = "<color=yellow>Nha m�n v� binh:<color>";

Include([[\script\global\����_ѷ��ε��.lua]]);

function main(sel)
    gsoldier_entance();
end;

function main_former()
	--Ϣ�����ָ����ϵݳѯ�ʵ�ǰPlayer��ݨ��ϵ��״̬��Ϣ
	--��ѯ�Ľ�������Ժ�ϵݳ�ص�������ָ���ĺ�����
	--AskRelayForKillerStatus("KillerCallBack")
	Talk(1,"","��...��...")
end;

--Ϣ����������ǲ�ѯ����Ļص�����������������˳������ı�
function KillerCallBack(RewardMoney, RewardTaskID, CancelMoney, CancelTaskID, OwnCount, MyTaskCount)
	-- if (RewardMoney > 0) then
		--Ϣ���������ݨ֪ϵݳ����Ѿ���ȡ���ݽ�ע���һ������0��ʾ���ݽ𣬵����������ʾΪ�ĸ�������ݽ�
		-- GetTaskMoney(0, RewardTaskID)
		-- Earn(RewardMoney)
	-- elseif (CancelMoney > 0) then
		--Ϣ���������ݨ֪ϵݳ����Ѿ���ȡ���˻صı�Ľ�ע���һ������1��ʾ���˽𣬵����������ʾΪ�ĸ�������˽�
		-- GetTaskMoney(1, CancelTaskID)
		-- Earn(CancelMoney)
	-- elseif (OwnCount + MyTaskCount > 0) then
		-- Say("Ng��i to gan v�y, d�m x�ng v�o nha m�n c�ng ���ng, t�i n�y ng��i kh�ng g�nh n�i ��u.", 4, "Thi�t l�p nhi�m v�/CreateTask", "Nhi�m v� truy n�/QueryTask", "Xem nhi�m v�/ModifyTask", "Th�i! Kh�ng l�m g� c�/DoNothing")
	-- else
		-- Say("Ng��i to gan v�y, d�m x�ng v�o nha m�n c�ng ���ng, t�i n�y ng��i kh�ng g�nh n�i ��u.", 3, "Thi�t l�p nhi�m v�/CreateTask", "Nhi�m v� truy n�/QueryTask", "Th�i! Kh�ng l�m g� c�/ DoNothing")
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
	Say("H� h� ...", 0)
end;
