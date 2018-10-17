Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- ÉèÖÃ·½°¸Ãû³Æ
	TaskName("SevenCityWar close")
	TaskInterval(24 * 60)
	TaskTime(21, 30)
	TaskCountLimit(0)
	-- Êä³öÆô¶¯ÏûÏ¢
	OutputMsg("[SEVENCITY]task[close] loaded")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- ÖÜÎå
	if (day == 5) then
		BattleWorld:Close()
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:Close",
			0)
		OutputMsg("[SEVENCITY]close")
	szMsg = "<color=pink>C«ng Thµnh §¹i ChiÕn<color=yellow> Chİnh Thøc KÕt Thóc th¾ng b¹i ®· râ xin c¸c bang chñ th¾ng trËn h·y liªn hÖ GM nhËn th­ëng."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg))
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
