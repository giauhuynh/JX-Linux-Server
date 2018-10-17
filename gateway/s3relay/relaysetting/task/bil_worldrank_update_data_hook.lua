Include("\\script\\bil4i3n\\bil4i3n_worldrank_hook.lua")

function TaskShedule()
	TaskName("UpDateRankHook");
	TaskCountLimit(0);
end

function TaskContent()
	bilRankHook:UpdateRank()
end

function GameSvrConnected(dwGameSvrIP) end
function GameSvrReady(dwGameSvrIP) end


