--citydefence.lua
-- ����ս��֮�������

function TaskShedule()
	TaskName("Phong hoa lien thanh");	

	-- һ��һ�Σ���λ����
	TaskInterval(1440);
	-- ���ô���ʱ��
	TaskTime(16, 20);
	OutputMsg(format("=====> PHONG HOA LIEN THANH BAT DAU %d:%d...", 16, 20));
	-- ִ�����޴�
	TaskCountLimit(0);

end

function TaskContent()
		OutputMsg("'Thu Thanh' Phe Tong da mo ghi danh.");
		GlobalExecute("dw NewCityDefence_OpenMain(1)");
	zMsg2SubWorld  = "<color=yellow>Chi�n tr��ng<color> <color=green>Phong H�a Li�n Th�nh<color>, <color=green>Phe Th� Th�nh<color> �� ��n gi� b�o danh, c�c nh�n s� giang h� nhanh ch�n ��n Ba L�ng Huy�n L� Quan b�o danh, Th�i gian b�o danh l� <color=pink>10<color> ph�t."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
