	Include( "\\RelaySetting\\Task\\bosswhere.lua")

	Include( "\\RelaySetting\\Task\\GoldBossHead.lua");

	Sid = 511

	Interval = 1440;

	Count = 0;

	StartHour=-1;

	StartMin=-1;

	function NewBoss()

	str = "Quan ph� g�n ��y ph�i tr��ng t�ng ch�nh �u�i b�t ��o ph�m!"

	GlobalExecute(format( "dw AddLocalNews([[%s]])", str));

	return 1, where[ "zhangzongzheng "][Random(getn(where. zhangzongzheng))+1], 511, 90;

	end;


