Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- 设置方案名称
	TaskName("SevenCityWar start")
	TaskInterval(24 * 60)
	TaskTime(20, 30)
	TaskCountLimit(0)
	-- 输出启动消息
	OutputMsg("[SEVENCITY]task[start] loaded")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- 周五
	if (day == 5) then
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:Start",
			0)
		OutputMsg("[SEVENCITY]start")
	szMsg = "<color=pink>C玭g Th祅h Чi Chi課<color=yellow> Ch輓h Th鴆 B総 u th阨 gian tranh 畂箃 gi鱝 c竎 bang h閕 l� <color=green>60<color> ph髏!"
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg))
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
