Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- ���÷�������
	TaskName("SevenCityWar start signup")
	TaskInterval(24 * 60)
	TaskTime(18, 15)
	TaskCountLimit(0)
	-- ���������Ϣ
	OutputMsg("[SEVENCITY]task[start_signup] loaded")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- ����
	if (day == 5) then
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:StartSignup",
			0)
		OutputMsg("[SEVENCITY]start signup")
	szMsg = "<color=pink>C�ng Th�nh ��i Chi�n<color=yellow> �� ��n gi� b�o danh c�c Bang Ch� bang h�i h�y ��n NPC T�n Th� nh�n khi�u chi�n l�nh �� b�o danh th�i gian b�o danh l� <color=green>60<color> ph�t!"
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg))
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
