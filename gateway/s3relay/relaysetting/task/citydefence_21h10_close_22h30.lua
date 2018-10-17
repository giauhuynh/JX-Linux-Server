
function TaskShedule()
	TaskName( "VÖ quèc phong háa liªn thµnh ");
	-- mét ngµy ®ªm mét lÇn, ®¬n vÞ phót
	TaskInterval(1440);
	-- thiÕt trÝ g©y ra thêi gian
	TaskTime(19, 20);
	OutputMsg(format( "                            Phong hoa lien thanh ket thuc %d:%d. ", 22, 30));
	OutputMsg( " ========================================================================================");
	-- chÊp hµnh v« h¹n thø
	TaskCountLimit(0);
end

function TaskContent()
	OutputMsg( "Ve quoc phong hoa lien thanh da ket thuc ");
	GlobalExecute( "dw CityDefence_CloseMain() ");
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end


