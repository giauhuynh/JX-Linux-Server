Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- ���÷�������
	TaskName("SevenCityWar prepare")
	TaskInterval(24 * 60)
	TaskTime(20, 56)
	TaskCountLimit(0)
	-- ���������Ϣ
	OutputMsg("[SEVENCITY]task[prepare] loaded")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- ����
	-- if (day == 5) then
	if (day == 4) then
		BattleWorld:Clear()
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:Prepare",
			0)
		OutputMsg("[SEVENCITY]prepare")
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
