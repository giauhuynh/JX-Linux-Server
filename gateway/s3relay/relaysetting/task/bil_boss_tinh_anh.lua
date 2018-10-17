Include("\\script\\bil4i3n\\bil4i3n_boss_tinh_anh.lua")

function bilGetNextTime()
	local bil_1 = tonumber(date( "%H"))
	local bil_2 = tonumber(date( "%M")) + 5
	if bil_2 >= 60 then
		bil_2 = bil_2 - 60
		bil_1 = bil_1 + 1
	end
	if bil_1 >= 24 then
		bil_1 = 0
	end
	return bil_1, bil_2
end

function TaskShedule()
	TaskName( "Boss tinh anh - th«n trÊn ")
	local bil_H, bil_M = bilGetNextTime()
	TaskTime(bil_H, bil_M);
	TaskInterval(5) 
	TaskCountLimit(0)
	OutputMsg("                                       Bosss Tinh Anh");
	OutputMsg("                           Xuat hien vao moi 1 gio sau khi Boss chet");
	OutputMsg("                            Thoi gian xuat hien lan tiep theo: "..bil_H..":"..bil_M);
	OutputMsg(" ========================================================================================");
end

function TaskContent()
	m_BossTinhAnh:Send2Gsv()
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end


