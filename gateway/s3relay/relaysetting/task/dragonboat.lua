INTERVAL_TIME = 60	-- √ø–° ±¥•∑¢

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
	TaskName("»¸¡˙÷€");	

	-- 60∑÷÷”“ª¥Œ
	TaskInterval(INTERVAL_TIME);
	-- …Ë÷√¥•∑¢ ±º‰
	local h, m = GetNextTime();
	TaskTime(h, m);
	OutputMsg(format("DUA THUYEN RONG SE BAT DAU VAO LUC %d:%d...", h, m));
	-- ÷¥––Œﬁœﬁ¥Œ
	TaskCountLimit(0);

	-- OutputMsg("∆Ù∂Ø◊‘∂Øπˆ∂Øπ´∏Ê...");
end

function TaskContent()
-- M‰i ng≠Íi nhanh ch©n Æ’n L‘ Quan Æ” ghi danh tham gia
	OutputMsg("ßua thuy“n rÂng Æ∑ bæt Æ«u ghi danh....");
	-- ¥•∑¢GameServer…œµƒΩ≈±æ
	GlobalExecute("dw LoadScript([[\\settings\\trigger.lua]])");
end
