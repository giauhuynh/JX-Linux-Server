Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- 设置方案名称
	TaskName("SevenCityWar close")
	TaskInterval(24 * 60)
	TaskTime(21, 30)
	TaskCountLimit(0)
	-- 输出启动消息
	OutputMsg("[SEVENCITY]task[close] loaded")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- 周五
	if (day == 5) then
		BattleWorld:Close()
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:Close",
			0)
		OutputMsg("[SEVENCITY]close")
	szMsg = "<color=pink>C玭g Th祅h Чi Chi課<color=yellow> Ch輓h Th鴆 K誸 Th骳 th緉g b筰  r� xin c竎 bang ch� th緉g tr薾 h穣 li猲 h� GM nh薾 thng."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg))
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
