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
	str = "Thuy�n chu�n b� r�i kh�i b�n, h�y mau ch�ng t�i b� nam phong l�ng �� giao cho thuy�n phu 1 t�m l�nh b�i phong l�ng �� ho�c 200 quy�n m�t �� th�n b� �� �i!"
	AddGlobalCountNews(str, 3)
	
	local nDate = tonumber(GetLocalDate("%Y%m%d"));		-- by bel ����ǰ10���ӷ�������ˮ����Ĺ���
	if (nDate >= jf0904_act_dateS and nDate < jf0904_act_dateE) then
		local szNews = "C�n 10 ph�t n�a thuy�n s� �i, qu�n ch� ph�t l�nh ti�u di�t th�y t�c, anh h�ng c�c l� mau mau t�i ho�n th�nh nhi�m v� �� nh�n th��ng";
		AddGlobalNews(szNews);
	end
end