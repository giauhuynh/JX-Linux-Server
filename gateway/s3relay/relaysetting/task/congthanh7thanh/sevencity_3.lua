Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- ÉèÖÃ·½°¸Ãû³Æ
	TaskName("SevenCityWar prepare")
	TaskInterval(24 * 60)
	TaskTime(20,01)
	TaskCountLimit(0)
	-- Êä³öÆô¶¯ÏûÏ¢
	OutputMsg("[SEVENCITY]task[prepare] loaded")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- ÖÜÎå
	if (day == 5) then
		BattleWorld:Clear()
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:Prepare",
			0)
		OutputMsg("[SEVENCITY]prepare")
	szMsg = "<color=pink>C«ng Thµnh §¹i ChiÕn<color=yellow> §· cã thÓ cho binh sÜ khu vùc c«ng thµnh c¸c bang héi h·y chuÈn bŞ ®Õn 20h30 b¾t ®Çu khai chiÕn."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg))
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
