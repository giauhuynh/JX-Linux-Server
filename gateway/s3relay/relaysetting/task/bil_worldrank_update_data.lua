function TaskShedule()
	TaskName( "bilWorldRank")
	TaskTime(23, 50);
	TaskInterval(1440) 
	TaskCountLimit(0)
	OutputMsg("         Cap nhat thong tin moi nhat ve THU HANG GIANG HO vao luc 23h50 moi ngay");
end

function TaskContent()
	OutputMsg(" ================= bilWorldRank => Start Update 23h50 -> Start");
	GlobalExecute("dwf \\script\\global\\bil4i3n\\bil4i3n_worldrank.lua bilWorldRank:UpdateRankData()")
	OutputMsg(" ================= bilWorldRank => End Update "..(date("%H:%M ")).." -> Complete");
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end