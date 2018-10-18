Include("\\script\\missions\\fengling_ferry\\fld_head.lua");
Include("\\script\\event\\jiefang_jieri\\200904\\shuizei\\shuizei.lua");
Include("\\script\\lib\\common.lua");
local tbNpcname	= {"Thuy�n phu gi�p", "Thuy�n phu �t", "Thuy�n phu b�nh"};

function south_boatman_main(BOATID)
	local MapId = boatMAPS[ BOATID ]
	if (MapId > 0) then
		local idx = SubWorldID2Idx(MapId)
		if (idx < 0) then
			Say("Xin l�i ph�a tr��c c� nguy hi�m, t�m th�i kh�ng th� l�n thuy�n.",0)
			local SignMapId = SubWorldIdx2ID(SubWorld);
			print("ERROR !!!BoatMap[%d] and SignMap[%d] Must In Same Server!", MapId, SignMapId); 
			return
		end
		local orgworld = SubWorld
		SubWorld = idx

		boatstate = GetMissionV(MS_STATE)

		nowtime = GetMissionV(MS_TIMEACC_1MIN)

		SubWorld = orgworld

		local szNpcname = %tbNpcname[BOATID];
		if (boatstate == 1) then
			remaintime = 10 - nowtime
			if (remaintime > 0) then
				local nDate = tonumber(GetLocalDate("%Y%m%d"));
				tbBoatmanDialog	= {format("Ta mu�n l�n thuy�n/#fld_wanttakeboat(%d)", BOATID), "�� ta �i chu�n b� l�i./fld_cancel"};
--				if (nDate >= jf0904_act_dateS) then
--					tinsert(tbBoatmanDialog, 2, "�����μ�����ˮ���'/join_shuizei_act");
--				end
				Say(format("%s: Vui v� l�n thuy�n, c�n %d ph�t n�a thuy�n r�i b�n.", szNpcname, remaintime), getn(tbBoatmanDialog), unpack(tbBoatmanDialog));
			else
				Say(format("%s: Thuy�n �� r�i b�n h�y ��i chuy�n sau ", szNpcname), 0)
				end
			else
				Say(format("%s: Ch�a ��n gi� xu�t ph�t h�y ki�n nh�n ch� ��i. ", szNpcname), 0)
		end
		SubWorld = orgworld
	end
end



