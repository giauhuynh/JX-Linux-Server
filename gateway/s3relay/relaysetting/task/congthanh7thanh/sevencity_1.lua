Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- ÉèÖÃ·½°¸Ãû³Æ
	TaskName("SevenCityWar start signup")
	TaskInterval(24 * 60)
	TaskTime(18, 15)
	TaskCountLimit(0)
	-- Êä³öÆô¶¯ÏûÏ¢
	OutputMsg("[SEVENCITY]task[start_signup] loaded")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- ÖÜÎå
	if (day == 5) then
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:StartSignup",
			0)
		OutputMsg("[SEVENCITY]start signup")
	szMsg = "<color=pink>C«ng Thµnh §¹i ChiÕn<color=yellow> §· ®Õn giê b¸o danh c¸c Bang Chñ bang héi h·y ®Õn NPC T©n Thñ nhËn khiªu chiÕn lÖnh ®Ó b¸o danh thêi gian b¸o danh lµ <color=green>60<color> phót!"
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg))
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
