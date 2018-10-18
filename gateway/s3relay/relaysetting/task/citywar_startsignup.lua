Include("\\RelaySetting\\Task\\citywar_head.lua")
function TaskShedule()
	TaskName("凤翔-报名开始");
	TaskInterval(1440);
	TaskTime(18, 0);
	-- TaskTime(18, 35);
	TaskCountLimit(0);
	OutputMsg( "                           Cong Thanh Chien - Start Sign Up - OK");
end

function Bil_NowDayCityWar()
	local Bil_NowDayW = tonumber(date("%w"));
	return Bil_NowDayW;
end

function Bil_GetNcanCityIDWithDayW()
	local NowDay = Bil_NowDayCityWar();
	for i = 1, 7 do
		if TB_CITYWAR_ARRANGE[i][1] == NowDay then
			return i;
		end
	end
end

function TaskContent()
	if bilCheckIsLimitOpenCityWar(1) == 0 then return end
	local Bil_nweek = Bil_NowDayCityWar();
	local Bil_ncan = Bil_GetNcanCityIDWithDayW();
	cw_startsignup_fun(Bil_nweek,Bil_ncan);
	OutputMsg( " ========================= Cong Thanh Chien - Bat dau bao danh ---> ")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
