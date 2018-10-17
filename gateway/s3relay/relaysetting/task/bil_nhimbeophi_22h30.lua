
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
	GlobalExecute(format("dw Msg2SubWorld([[%s]])", "<color=0xa9ffe0>Ho¹t ®éng s¨n lïng <color=yellow>Nhİm BĞo Ph×<color> ®· më, xin mêi c¸c vŞ anh hïng hµo kiÖt chuÈn bŞ lªn ®­êng!"));
	GlobalExecute(format("dw Msg2SubWorld([[%s]])", "<color=0xa9ffe0><color=yellow>Nhİm BĞo Ph×<color> ®· xuÊt hiÖn t¹i<color=earth><enter>7 §¹i thµnh thŞ vµ 8 T©n thñ th«n<color>,mçi con nhİm mang trªn m×nh nhiÒu ®iÓm Kinh nghiÖm cïng nhiÒu vËt phÈm gi¸ trŞ kh¸c!"));
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end