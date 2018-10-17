Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- 设置方案名称
	TaskName("SevenCityWar start signup")
	TaskInterval(24 * 60)
	TaskTime(18, 15)
	TaskCountLimit(0)
	-- 输出启动消息
	OutputMsg("[SEVENCITY]task[start_signup] loaded")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- 周五
	if (day == 5) then
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:StartSignup",
			0)
		OutputMsg("[SEVENCITY]start signup")
	szMsg = "<color=pink>C玭g Th祅h Чi Chi課<color=yellow> Х n gi� b竜 danh c竎 Bang Ch� bang h閕 h穣 n NPC T﹏ Th� nh薾 khi猽 chi課 l謓h  b竜 danh th阨 gian b竜 danh l� <color=green>60<color> ph髏!"
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg))
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
