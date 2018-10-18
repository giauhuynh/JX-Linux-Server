Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- ÉèÖÃ·½°¸Ãû³Æ
	TaskName("SevenCityWar close signup")
	TaskInterval(24 * 60)
	TaskTime(19, 01)
	TaskCountLimit(0)
	-- Êä³öÆô¶¯ÏûÏ¢
	OutputMsg("[SEVENCITY]task[close_signup] loaded")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- ÖÜÎå
	if (day == 5) then
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:CloseSignup",
			0)
		OutputMsg("[SEVENCITY]close signup")
	szMsg = "<color=pink>C«ng Thµnh §¹i ChiÕn<color=yellow> §· hÕt giê b¸o danh c¸c Bang Héi h·y thu xÕp chØnh ®èn nh©n lùc tr­íc cho giê c«ng thµnh."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg))
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
