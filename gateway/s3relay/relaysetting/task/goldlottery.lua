STARTHOUR = 22;
STARTMIN = 30;

FIRSTDAY = 816;--8��16����Ϊ��һ�ο��ƽ��Ʊʱ��
GoldResultTab = {};--��ʱ����ƽ��Ʊ�Ľ��


function GameSvrConnected(dwGameSvrIP)
	nIntervalDay = tonumber(getCurrTime()) - FIRSTDAY;
	for i = 1, nIntervalDay do 
		if (GoldResultTab[i] ~= 0 or GoldResultTab[i] ~= nil) then 
			strsomeday = format("%.4d", FIRSTDAY + i - 1)
			ResultString = szResultString..strsomeday
			result , P1, P2 = GetCustomDataFromSDB(ResultString, 0, 0, "ii")
			if (result > 0) then 
				NotifySDBRecordChanged(ResultString, 0 ,0 ,1);		
			end
		end;
	end;
end;

function GameSvrReady(dwGameSvrIP)
end

function getCurrTime()
	return date( "%m%d" );
end

szMainString = "GoldLottery";
szResultString = "GoldLtyResult"

function TaskShedule()
	--���÷�������
	TaskName("Olympic Gold")
	TaskInterval(1440)
	
	
	-- 22��00�ֿ�ʼ����
	TaskTime(STARTHOUR , STARTMIN);
	
	TaskCountLimit(0);
end

--"GoldLottery" timestamp id 

function TaskContent()
	OutputMsg("----------------ȡ�ƽ��ƱGoldLottery -----------------");
	OutputMsg(date());
	if (tonumber(getCurrTime()) >= 903 ) then 
		OutputMsg("���˲�Ʊ��ѽ������رջƽ��Ʊ����!")
		return
	end

	randomseed( tonumber( date("%m%d%H%M%S") ) )
	nIntervalDay = tonumber(getCurrTime()) - FIRSTDAY;
	for i = 1, nIntervalDay + 1 do 
		GetGoldLotteryInfo(FIRSTDAY + i - 1)
	end;
	OutputMsg("----------------------------------------------------------");
end

function GetGoldLotteryInfo(someday)
	strsomeday = format("%.4d", someday)
	OutputMsg("��Ʊ����"..strsomeday.."--------------")
	RecordString = szMainString..strsomeday
	ResultString = szResultString..strsomeday
	result , P1, P2 = GetCustomDataFromSDB(ResultString, 0, 0, "ii")
	
	if (result > 0 ) then
		GoldResultTab[someday - FIRSTDAY + 1] = P2
		OutputMsg("ͬ���ƽ��ƱID "..P2.."-"..P1)
		NotifySDBRecordChanged(ResultString, 0, 0, 1)
	else
		GenGoldLottery(RecordString, ResultString, someday)
	end
end;

function GenGoldLottery(RdString, RsString, someday)
	GoldResultTab[someday - FIRSTDAY + 1] = 0
	nCount = GetRecordCount(RdString,0,0,0,0);
	OutputMsg("GoldLottery Count "..nCount);
	if (nCount > 0) then
		nRand =	random(1, nCount)
		bFound , P1,P2 = GetRecordInfoFromNO(RdString, 0, 0, 0, 0, nRand)
		if(bFound == 1) then
			bResult , m = GetCustomDataFromSDB(RdString, P1, P2, "i");		
			str = format("�ƽ��Ʊ����IDΪ %d-%d", P2, P1);
			success = SaveCustomDataToSDBOw(RsString, 0, 0, "ii", P1, P2);
			NotifySDBRecordChanged(RsString, 0, 0 ,1);
			nMonth = floor(someday / 100)
			nDay = mod(someday, 100);
			strNews = format("dw AddLocalNews ( [ [�ƽ��Ʊ�н���%d �� %d ���ѿ�������Ϊ[%d-%d]. ���н���ҿ�ȥ��ٴ��콱!]], 1) ", nMonth, nDay, P2,P1)
			GlobalExecute(strNews);
			GoldResultTab[someday - FIRSTDAY + 1] = P2
			OutputMsg(str);
		else
			OutputMsg("�����������δ�ҵ��н���")
		end
	else
		OutputMsg("�����н�������û�н���.")
	end
end;
