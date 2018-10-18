Include("\\script\\missions\\fengling_ferry\\fld_head.lua");
Include("\\script\\event\\jiefang_jieri\\200904\\shuizei\\shuizei.lua");
Include("\\script\\lib\\common.lua");
local tbNpcname	= {"ThuyÒn phu gi¸p", "ThuyÒn phu Êt", "ThuyÒn phu bİnh"};

function south_boatman_main(BOATID)
	local MapId = boatMAPS[ BOATID ]
	if (MapId > 0) then
		local idx = SubWorldID2Idx(MapId)
		if (idx < 0) then
			Say("Xin lçi phİa tr­íc cã nguy hiÓm, t¹m thêi kh«ng thÓ lªn thuyÒn.",0)
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
				tbBoatmanDialog	= {format("Ta muèn lªn thuyÒn/#fld_wanttakeboat(%d)", BOATID), "§Ó ta ®i chuÈn bŞ l¹i./fld_cancel"};
--				if (nDate >= jf0904_act_dateS) then
--					tinsert(tbBoatmanDialog, 2, "ÎÒÀ´²Î¼ÓÏûÃğË®Ôô»î¶¯'/join_shuizei_act");
--				end
				Say(format("%s: Vui vÎ lªn thuyÒn, cßn %d phót n÷a thuyÒn rêi bÕn.", szNpcname, remaintime), getn(tbBoatmanDialog), unpack(tbBoatmanDialog));
			else
				Say(format("%s: ThuyÒn ®· rêi bÕn h·y ®îi chuyÕn sau ", szNpcname), 0)
				end
			else
				Say(format("%s: Ch­a ®Õn giê xuÊt ph¸t h·y kiªn nhÉn chê ®îi. ", szNpcname), 0)
		end
		SubWorld = orgworld
	end
end



