Include("\\script\\missions\\fengling_ferry\\fld_head.lua")
function main()
	--do return end-- dong by ZhuYingTai
	mapid = boatMAPS[3]
	orgworld = SubWorld
	boatidx = SubWorldID2Idx(mapid)
	if (boatidx < 0) then
		local SignMapId = SubWorldIdx2ID(SubWorld);
		print("ERROR !!!BoatMap3 Is Not In This Server!", mapid); 
		return
	end
	SubWorld = boatidx
	OpenMission(MISSIONID)
	str = "ThuyÒn chuÈn bÞ rêi khái bÕn, h·y mau chãng tíi bê nam phong l¨ng ®é giao cho thuyÒn phu 1 tÊm lÖnh bµi phong l¨ng ®é hoÆc 200 quyÒn mËt ®å thÇn bÝ ®Ó ®i!"
	AddGlobalCountNews(str, 3)
	SetMissionV(MS_STATE, 3)
	SubWorld = orgworld
end
