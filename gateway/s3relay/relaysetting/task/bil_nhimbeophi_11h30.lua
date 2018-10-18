
function TaskShedule()
	TaskName("bilnhimbeophi")
	TaskTime(11, 30);
	TaskInterval(1440)
	TaskCountLimit(0)
	OutputMsg("                         Hoat dong san Nhim Beo Phi vao 11h30 va 22h30");
	OutputMsg("             moi lan xuat hien 15 con nhim, nhan duoc 2tr Exp va 2 van khi tieu diet");
	OutputMsg("                           toi da mot ngay san duoc 10 Nhim Beo Phi");
end

function TaskContent()
	OutputMsg( " Hoat dong san Nhim Beo Phi - 11h30");
	GlobalExecute(format("dwf \\script\\event\\birthday_jieri\\200905\\panghaozhu\\addnpc_haozhu.lua birthday0905_addnpc_haozhu(%d)", 15));
	GlobalExecute(format("dw Msg2SubWorld([[%s]])", "<color=0xa9ffe0>Ho¹t ®éng s¨n lïng <color=yellow>NhÝm BÐo Ph×<color> ®· më, xin mêi c¸c vÞ anh hïng hµo kiÖt chuÈn bÞ lªn ®­êng!"));
	GlobalExecute(format("dw Msg2SubWorld([[%s]])", "<color=0xa9ffe0><color=yellow>NhÝm BÐo Ph×<color> ®· xuÊt hiÖn t¹i<color=earth><enter>7 §¹i thµnh thÞ vµ 8 T©n thñ th«n<color>,mçi con nhÝm mang trªn m×nh nhiÒu ®iÓm Kinh nghiÖm cïng nhiÒu vËt phÈm gi¸ trÞ kh¸c!"));
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end