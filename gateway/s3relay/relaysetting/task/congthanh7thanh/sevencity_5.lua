Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- ���÷�������
	TaskName("SevenCityWar close")
	TaskInterval(24 * 60)
	TaskTime(21, 30)
	TaskCountLimit(0)
	-- ���������Ϣ
	OutputMsg("[SEVENCITY]task[close] loaded")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- ����
	if (day == 5) then
		BattleWorld:Close()
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:Close",
			0)
		OutputMsg("[SEVENCITY]close")
	szMsg = "<color=pink>C�ng Th�nh ��i Chi�n<color=yellow> Ch�nh Th�c K�t Th�c th�ng b�i �� r� xin c�c bang ch� th�ng tr�n h�y li�n h� GM nh�n th��ng."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg))
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
