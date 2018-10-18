Include("\\script\\missions\\fengling_ferry\\fld_head.lua");
Include("\\script\\event\\jiefang_jieri\\200904\\taskctrl.lua");

function fenglingdu_main()
	--do return end-- dong by ZhuYingTai
	orgworld = SubWorld
	for i = 1, getn( boatMAPS ) do
		mapid = boatMAPS[ i ]

		boatidx = SubWorldID2Idx(mapid)
		if (boatidx < 0) then
			local SignMapId = SubWorldIdx2ID(SubWorld);
			print("ERROR !!!BoatMap1 Is Not In This Server!", mapid); 
			SubWorld = orgworld;
			return
		end
		SubWorld = boatidx
		CloseMission(MISSIONID);
		OpenMission(MISSIONID)
		SetMissionV(MS_STATE, 1)
	end
	SubWorld = orgworld
	str = "ThuyÒn chuÈn bÞ rêi khái bÕn, h·y mau chãng tíi bê nam phong l¨ng ®é giao cho thuyÒn phu 1 tÊm lÖnh bµi phong l¨ng ®é hoÆc 200 quyÒn mËt ®å thÇn bÝ ®Ó ®i!"
	AddGlobalCountNews(str, 3)
	
	local nDate = tonumber(GetLocalDate("%Y%m%d"));		-- by bel ¿ª´¬Ç°10·ÖÖÓ·¢³öÏûÃðË®Ôô»î¶¯µÄ¹«¸æ
	if (nDate >= jf0904_act_dateS and nDate < jf0904_act_dateE) then
		local szNews = "Cßn 10 phót n÷a thuyÒn sÏ ®i, qu©n chñ ph¸t lÖnh tiªu diÖt thñy tÆc, anh hïng c¸c lé mau mau tíi hoµn thµnh nhiÖm vô ®Ó nhËn th­ëng";
		AddGlobalNews(szNews);
	end
end