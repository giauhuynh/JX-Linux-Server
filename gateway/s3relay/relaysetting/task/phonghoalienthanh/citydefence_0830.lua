--citydefence.lua
-- ÎÀ¹úÕ½ÕùÖ®·é»ðÁ¬³Ç

function TaskShedule()
	TaskName("Phong hoa lien thanh");	

	-- Ò»ÌìÒ»´Î£¬µ¥Î»·ÖÖÓ
	TaskInterval(1440);
	-- ÉèÖÃ´¥·¢Ê±¼ä
	TaskTime(08, 20);
	OutputMsg(format("=====> PHONG HOA LIEN THANH BAT DAU %d:%d...", 08, 20));
	-- Ö´ÐÐÎÞÏÞ´Î
	TaskCountLimit(0);

end

function TaskContent()
		OutputMsg("'Thu Thanh' Phe Tong da mo ghi danh.");
		GlobalExecute("dw NewCityDefence_OpenMain(1)");
	zMsg2SubWorld  = "<color=yellow>ChiÕn tr­êng<color> <color=green>Phong Háa Liªn Thµnh<color>, <color=green>Phe Thñ Thµnh<color> ®· ®Õn giê b¸o danh, c¸c nh©n sÜ giang hå nhanh ch©n ®Õn Ba L¨ng HuyÖn LÔ Quan ®Ó b¸o danh, Thêi gian b¸o danh lµ <color=pink>10<color> phót."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
