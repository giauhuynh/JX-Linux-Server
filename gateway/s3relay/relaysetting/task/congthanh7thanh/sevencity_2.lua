Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- 设置方案名称
	TaskName("SevenCityWar close signup")
	TaskInterval(24 * 60)
	TaskTime(19, 01)
	TaskCountLimit(0)
	-- 输出启动消息
	OutputMsg("[SEVENCITY]task[close_signup] loaded")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- 周五
	if (day == 5) then
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:CloseSignup",
			0)
		OutputMsg("[SEVENCITY]close signup")
	szMsg = "<color=pink>C玭g Th祅h Чi Chi課<color=yellow> Х h誸 gi� b竜 danh c竎 Bang H閕 h穣 thu x誴 ch豱h n nh﹏ l鵦 trc cho gi� c玭g th祅h."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg))
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
