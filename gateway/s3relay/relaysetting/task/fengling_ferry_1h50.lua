function TaskShedule()

	TaskName("�����0200")
	
	TaskTime(1, 50);
	
	TaskInterval(1440)
	
	TaskCountLimit(0)
	
	OutputMsg( " ======================================================================================== " );
	OutputMsg( "               Ben thuyen Phong Lang Do mo cua vao cac gio chan trong ngay" );
	
end

function TaskContent()

    GlobalExecute("dwf \\script\\missions\\fengling_ferry\\fldmap_boat1.lua fenglingdu_main()")
	
	OutputMsg( " =========================Phong Lang Do bat dau bao danh ---> ")
	
	szMsg = "B�n thuy�n Phong L�ng �� �� b�t ��u m� c�a, c�c v� ��i hi�p mau ��n b� nam g�p thuy�n phu b�o danh ra tay ti�u di�t th�y t�c. Th�i gian b�o danh l� 15 ph�t."
	
	zMsg2SubWorld = "<color=0xa9ffe0>B�n thuy�n <color=yellow>Phong L�ng ��<color> �� b�t   ��u m� c�a, c�c v� ��i hi�p mau ��n b� nam g�p <color=pink>thuy�n phu<color> �� b�o danh ra tay ti�u di�t th�y t�c. Th�i gian b�o danh l� <color=pink>15<color> ph�t."
	
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)",szMsg))
	
	GlobalExecute(format("dw Msg2SubWorld([[%s]])", zMsg2SubWorld))
	
end

function GameSvrConnected(dwGameSvrIP)

end
function GameSvrReady(dwGameSvrIP)

end