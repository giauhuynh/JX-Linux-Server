
function TaskShedule()
	TaskName( "V� qu�c phong h�a li�n th�nh ");
	-- m�t ng�y ��m m�t l�n, ��n v� ph�t
	TaskInterval(1440);
	-- thi�t tr� g�y ra th�i gian
	TaskTime(16, 21);
	OutputMsg(format( "                            Phong hoa lien thanh ket thuc %d:%d.", 10, 30));
	-- ch�p h�nh v� h�n th�
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


