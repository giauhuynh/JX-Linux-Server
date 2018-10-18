Include("\\RelaySetting\\Task\\citywar_head.lua")

Bil_DayStarCityWar ={{4,4},{2,2},{3,3},{6,6},{5,5},{1,1},{0,0},}

function TaskShedule()
	TaskName("凤翔-攻城战开始 ");
	TaskInterval(1440);
	TaskTime(20, 0);
	-- TaskTime(18, 37);
	TaskCountLimit(0);
	OutputMsg( "                           Cong Thanh Chien - Start City War - OK");
end

function Bil_NowDayCityWar()
	local Bil_NowDayW = tonumber(date("%w"));
	return Bil_NowDayW;
end

function Bil_GetNcanCityIDWithDayW()
	local NowDay = Bil_NowDayCityWar();
	for i = 1, 7 do
		if Bil_DayStarCityWar[i][1] == NowDay then
			return i;
		end
	end
end

function TaskContent()
	if bilCheckIsLimitOpenCityWar(2) == 0 then return end
	local Bil_nweek = Bil_NowDayCityWar();
	local Bil_ncan = Bil_GetNcanCityIDWithDayW();
	cw_start_fun(Bil_nweek,Bil_ncan)
	OutputMsg( " ========================= Cong Thanh Chien - Bat dau chien dau, cong thanh khoi dong ---> ")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
