INTERVAL_TIME = 60	-- ÿСʱ����

function GetNextTime()
    local hour = tonumber(date("%H"));
    if (hour == 23) then
    	hour = 0;
    else
    	hour = hour + 1;
    end
    return hour, 20;
end

function TaskShedule()
	TaskName("������");	

	-- 60����һ��
	TaskInterval(INTERVAL_TIME);
	-- ���ô���ʱ��
	local h, m = GetNextTime();
	TaskTime(h, m);
	OutputMsg(format("DUA THUYEN RONG SE BAT DAU VAO LUC %d:%d...", h, m));
	-- ִ�����޴�
	TaskCountLimit(0);

	-- OutputMsg("�����Զ���������...");
end

function TaskContent()
-- M�i ng��i nhanh ch�n ��n L� Quan �� ghi danh tham gia
	OutputMsg("�ua thuy�n r�ng �� b�t ��u ghi danh....");
	-- ����GameServer�ϵĽű�
	GlobalExecute("dw LoadScript([[\\settings\\trigger.lua]])");
end
