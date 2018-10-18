Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- ÉèÖÃ·½°¸Ãû³Æ
	TaskName("SevenCityWar start")
	TaskInterval(24 * 60)
	TaskTime(20, 30)
	TaskCountLimit(0)
	-- Êä³öÆô¶¯ÏûÏ¢
	OutputMsg("[SEVENCITY]task[start] loaded")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- ÖÜÎå
	if (day == 5) then
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:Start",
			0)
		OutputMsg("[SEVENCITY]start")
	szMsg = "<color=pink>C«ng Thµnh §¹i ChiÕn<color=yellow> Chİnh Thøc B¾t §Çu thêi gian tranh ®o¹t gi÷a c¸c bang héi lµ <color=green>60<color> phót!"
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg))
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
