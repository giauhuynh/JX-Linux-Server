Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- ���÷�������
	TaskName("SevenCityWar start")
	TaskInterval(24 * 60)
	TaskTime(20, 30)
	TaskCountLimit(0)
	-- ���������Ϣ
	OutputMsg("[SEVENCITY]task[start] loaded")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- ����
	if (day == 5) then
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:Start",
			0)
		OutputMsg("[SEVENCITY]start")
	szMsg = "<color=pink>C�ng Th�nh ��i Chi�n<color=yellow> Ch�nh Th�c B�t ��u th�i gian tranh �o�t gi�a c�c bang h�i l� <color=green>60<color> ph�t!"
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg))
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
