
function TaskShedule()
	TaskName("bilnhimbeophi")
	TaskTime(22, 30);
	TaskInterval(1440)
	TaskCountLimit(0)
	OutputMsg(" ========================================================================================");
end

function TaskContent()
	OutputMsg( " Hoat dong san Nhim Beo Phi - 22h30");
	GlobalExecute(format("dwf \\script\\event\\birthday_jieri\\200905\\panghaozhu\\addnpc_haozhu.lua birthday0905_addnpc_haozhu(%d)", 15));
	GlobalExecute(format("dw Msg2SubWorld([[%s]])", "<color=0xa9ffe0>Ho�t ��ng s�n l�ng <color=yellow>Nh�m B�o Ph�<color> �� m�, xin m�i c�c v� anh h�ng h�o ki�t chu�n b� l�n ���ng!"));
	GlobalExecute(format("dw Msg2SubWorld([[%s]])", "<color=0xa9ffe0><color=yellow>Nh�m B�o Ph�<color> �� xu�t hi�n t�i<color=earth><enter>7 ��i th�nh th� v� 8 T�n th� th�n<color>,m�i con nh�m mang tr�n m�nh nhi�u �i�m Kinh nghi�m c�ng nhi�u v�t ph�m gi� tr� kh�c!"));
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end