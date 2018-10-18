	-- ®óng giê h­íng mét tæ phôc vô khÝ së h÷u Gameserver ph¸t hÖ thèng th«ng c¸o

	Include( "\\script\\gb_modulefuncs.lua")

	tab_GameSetting =

	{

	--"mua Xuan 2006 hoat dong",-- niªn thó

	--"OpenShop",-- th­¬ng thµnh

	--"Thiep chuc mung",--Msg2SubWorld

	--"Do pho",--AddLocalNews

	--"Phuc duyen - Phao Hoa",

	--"Truyen Cong",

	--"Le Vat tinh nhan ",--AddLocalNews and AddGift

	--"YANDIBAOZANG",

	--"YANDIBAOZANG_TALK",

	--"SWITH_DAIYITOUSHI",

	--"chunjie2009_dangboss",

	}

	function TaskShedule()

	TaskName( "ThiÕt kÕ trß ch¬i hÖ thèng ");

	TaskInterval(1000000);

	TaskCountLimit(0);

	OutputMsg( " ========================================================================================");
	OutputMsg( "                      Khoi dong chuc nang he thong trong tro choi. . .");

	end

	function TaskContent()

	for i = 1, getn(tab_GameSetting) do

	gb_AutoStartModule(tab_GameSetting[i])

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


