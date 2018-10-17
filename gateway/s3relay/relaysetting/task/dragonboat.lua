INTERVAL_TIME = 60	-- 每小时触发

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
	TaskName("赛龙舟");	

	-- 60分钟一次
	TaskInterval(INTERVAL_TIME);
	-- 设置触发时间
	local h, m = GetNextTime();
	TaskTime(h, m);
	OutputMsg(format("DUA THUYEN RONG SE BAT DAU VAO LUC %d:%d...", h, m));
	-- 执行无限次
	TaskCountLimit(0);

	-- OutputMsg("启动自动滚动公告...");
end

function TaskContent()
-- M鋓 ngi nhanh ch﹏ n L� Quan  ghi danh tham gia
	OutputMsg("a thuy襫 r錸g  b総 u ghi danh....");
	-- 触发GameServer上的脚本
	GlobalExecute("dw LoadScript([[\\settings\\trigger.lua]])");
end
