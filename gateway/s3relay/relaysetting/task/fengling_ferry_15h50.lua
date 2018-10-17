function TaskShedule()

	TaskName("·çÁê¶É0200")
	
	TaskTime(15, 50);
	
	TaskInterval(1440)
	
	TaskCountLimit(0)
	
	-- OutputMsg( "                                   Phong Lang Do 15 : 50  " );
	
end

function TaskContent()

    GlobalExecute("dwf \\script\\missions\\fengling_ferry\\fldmap_boat1.lua fenglingdu_main()")
	
	OutputMsg( " =========================Phong Lang Do bat dau bao danh ---> ")
	
	szMsg = "BÕn thuyÒn Phong L¨ng §é ®· b¾t ®Çu më cña, c¸c vŞ §¹i hiÖp mau ®Õn bê nam gÆp thuyÒn phu b¸o danh ra tay tiªu diÖt thñy tÆc. Thêi gian b¸o danh lµ 15 phót."
	
	zMsg2SubWorld = "<color=0xa9ffe0>BÕn thuyÒn <color=yellow>Phong L¨ng §é<color> ®· b¾t   ®Çu më cña, c¸c vŞ §¹i hiÖp mau ®Õn bê nam gÆp <color=pink>thuyÒn phu<color> ®Ó b¸o danh ra tay tiªu diÖt thñy tÆc. Thêi gian b¸o danh lµ <color=pink>15<color> phót."
	
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)",szMsg))
	
	GlobalExecute(format("dw Msg2SubWorld([[%s]])", zMsg2SubWorld))
	
end

function GameSvrConnected(dwGameSvrIP)

end
function GameSvrReady(dwGameSvrIP)

end