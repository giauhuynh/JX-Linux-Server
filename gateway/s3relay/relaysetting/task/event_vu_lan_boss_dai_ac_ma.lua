
function TaskShedule()
	TaskName("EVENT_VU_LAN")
	TaskTime(18, 30);
	TaskInterval(1440)
	TaskCountLimit(0)
	OutputMsg("                         Hoat dong Giet Boss Dai Ac Ma EVENT_VU_LAN");
end

function TaskContent()
	OutputMsg( " EVENT_VU_LAN Goi Boss Dai Ac Ma");
	GlobalExecute(format("dwf \\script\\_event\\vulan\\boss_dai_ac_ma.lua BossDaiAcMaCallByS3Relay(%d)", 1));
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end