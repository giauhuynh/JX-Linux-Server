--close_citydefence_1700.lua
--�ر�����ս��

function TaskShedule()
	TaskName("Phong Hoa Lien Thanh");	

	-- һ��һ�Σ���λ����
	TaskInterval(1440);
	-- ���ô���ʱ��
	TaskTime(01, 00);
	OutputMsg(format("=====> PHONG HOA LIEN THANH DA KET THUC %d:%d...", 03, 00));
	-- ִ�����޴�
	TaskCountLimit(0);

end

function TaskContent()
	OutputMsg("=====> PHONG HOA LIEN THANH DA KET THUC 03:00 (close_citydefence_0300.lua)");
	GlobalExecute("dw CityDefence_CloseMain()");
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
