
function TaskShedule()
	TaskName( "Hoa S�n ��i chi�n ")
	TaskTime(15, 01);
	TaskInterval(1440) 
	TaskCountLimit(0)
	OutputMsg(" ========================================================================================");
end

function TaskContent()
	local weekdate = tonumber(date( "%w "))
	if weekdate == 2 or weekdate == 4 or weekdate == 6 then
		GlobalExecute("dwf \\script\\missions\\huashanqunzhan\\missionctrl.lua startHuaShanQunZhanMission()")
		GlobalExecute(format( "dw AddLocalCountNews([[%s]], 2)", "Hoa S�n ��i Chi�n �� b�t ��u b�o danh, <color=red>ng��i th�ng cu�c s� nh�n ���c s� ph�n th��ng v� c�ng gi� tr�, h�y mau ch�ng tham gia."))
		GlobalExecute(format( "dw Msg2SubWorld([[%s]])", "<color=0xa9ffe0><color=yellow>Hoa S�n ��i Chi�n<color> �� b�t ��u b�o  danh, c� th� ��n ch� <color=Orange>Hoa S�n L�o T�u<color> � <color=earth>Hoa s�n c�nh k� tr��ng<color> �� ti�n h�nh b�o danh!, th�i  gian b�o danh l� 10 ph�t!"))
		OutputMsg(" ================= Hoa Son Dai Chien => Start Hour: 21 - Start Min: 15");
	else
		return 0
	end
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end


