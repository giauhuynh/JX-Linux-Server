--close_citydefence_1700.lua
--�ر�����ս��

function TaskShedule()
	TaskName("Phong Hoa Lien Thanh");	

	-- һ��һ�Σ���λ����
	TaskInterval(1440);
	-- ���ô���ʱ��
	TaskTime(09, 00);
	OutputMsg(format("=====> PHONG HOA LIEN THANH DA KET THUC %d:%d...", 09, 00));
	-- ִ�����޴�
	TaskCountLimit(0);

end

function TaskContent()
	OutputMsg("=====> PHONG HOA LIEN THANH DA KET THUC 13:00 (close_citydefence_0900.lua)");
	GlobalExecute("dw CityDefence_CloseMain()");
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
