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
	zMsg2SubWorld  = "<color=yellow>Nghe n�i <color=green>L�ng ��n bang h�i �� xu�t hi�n t�i 204/206 Ba L�ng Huy�n<color=yellow> c�c bang ch� h�y c� bang ch� h�y nhanh tay t�m v� tranh �o�t."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
end
