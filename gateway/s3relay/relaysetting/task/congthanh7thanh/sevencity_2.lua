Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- ���÷�������
	TaskName("SevenCityWar close signup")
	TaskInterval(24 * 60)
	TaskTime(19, 01)
	TaskCountLimit(0)
	-- ���������Ϣ
	OutputMsg("[SEVENCITY]task[close_signup] loaded")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- ����
	if (day == 5) then
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:CloseSignup",
			0)
		OutputMsg("[SEVENCITY]close signup")
	szMsg = "<color=pink>C�ng Th�nh ��i Chi�n<color=yellow> �� h�t gi� b�o danh c�c Bang H�i h�y thu x�p ch�nh ��n nh�n l�c tr��c cho gi� c�ng th�nh."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg))
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
