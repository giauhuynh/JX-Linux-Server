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
	str = "Thuy�n chu�n b� r�i kh�i b�n, h�y mau ch�ng t�i b� nam phong l�ng �� giao cho thuy�n phu 1 t�m l�nh b�i phong l�ng �� ho�c 200 quy�n m�t �� th�n b� �� �i!"
	AddGlobalCountNews(str, 3)
	SetMissionV(MS_STATE, 3)
	SubWorld = orgworld
end
