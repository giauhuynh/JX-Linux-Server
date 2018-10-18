function TaskShedule()
	TaskName("LongDenBangHoi")
	TaskInterval(24 * 60)
	TaskTime(19,30)
	TaskCountLimit(0)
	OutputMsg("=====>LongDenBangHoi")
end

function TaskContent()
	RemoteExecute("\\script\\global\\longdenbanghoi\\longden.lua",	"add_npc_click", 0)
	OutputMsg("=====> LongDenBangHoi")
	zMsg2SubWorld  = "<color=yellow>Nghe nãi <color=green>Lång ®Ìn bang héi ®· xuÊt hiÖn t¹i 204/206 Ba L¨ng HuyÖn<color=yellow> c¸c bang chñ h·y cö bang chñ h·y nhanh tay t×m vµ tranh ®o¹t."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
end
