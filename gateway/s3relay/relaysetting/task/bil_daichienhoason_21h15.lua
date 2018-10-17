
function TaskShedule()
	TaskName( "Hoa S¬n ®¹i chiÕn ")
	TaskTime(15, 01);
	TaskInterval(1440) 
	TaskCountLimit(0)
	OutputMsg(" ========================================================================================");
end

function TaskContent()
	local weekdate = tonumber(date( "%w "))
	if weekdate == 2 or weekdate == 4 or weekdate == 6 then
		GlobalExecute("dwf \\script\\missions\\huashanqunzhan\\missionctrl.lua startHuaShanQunZhanMission()")
		GlobalExecute(format( "dw AddLocalCountNews([[%s]], 2)", "Hoa S¬n §¹i ChiÕn ®· b¾t ®Çu b¸o danh, <color=red>ng­êi th¾ng cuéc sÏ nhËn ®­îc sè phÇn th­ëng v« cïng gi¸ trÞ, h·y mau chãng tham gia."))
		GlobalExecute(format( "dw Msg2SubWorld([[%s]])", "<color=0xa9ffe0><color=yellow>Hoa S¬n §¹i ChiÕn<color> ®· b¾t ®Çu b¸o  danh, cã thÓ ®Õn chç <color=Orange>Hoa S¬n L·o TÈu<color> ë <color=earth>Hoa s¬n c¶nh kü tr­êng<color> ®Ó tiÕn hµnh b¸o danh!, thêi  gian b¸o danh lµ 10 phót!"))
		OutputMsg(" ================= Hoa Son Dai Chien => Start Hour: 21 - Start Min: 15");
	else
		return 0
	end
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end


