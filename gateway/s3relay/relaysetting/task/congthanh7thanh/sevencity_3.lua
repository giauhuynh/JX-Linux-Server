Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- 设置方案名称
	TaskName("SevenCityWar prepare")
	TaskInterval(24 * 60)
	TaskTime(20,01)
	TaskCountLimit(0)
	-- 输出启动消息
	OutputMsg("[SEVENCITY]task[prepare] loaded")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- 周五
	if (day == 5) then
		BattleWorld:Clear()
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:Prepare",
			0)
		OutputMsg("[SEVENCITY]prepare")
	szMsg = "<color=pink>C玭g Th祅h Чi Chi課<color=yellow> Х c� th� cho binh s� khu v鵦 c玭g th祅h c竎 bang h閕 h穣 chu萵 b� n 20h30 b総 u khai chi課."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg))
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
