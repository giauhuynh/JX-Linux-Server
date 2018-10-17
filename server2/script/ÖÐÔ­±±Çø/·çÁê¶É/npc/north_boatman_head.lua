-- ·çÁê¶É±±°¶´¬·ò
Include("\\script\\event\\jiefang_jieri\\200904\\shuizei\\shuizei.lua");
Include("\\script\\lib\\common.lua");

local tbNorth_Boatman_Info	=
{
	[1]	= {szNpcname = "ThuyÒn phu gi¸p", tbMap = {336, 1165, 3043}},
	[2]	= {szNpcname = "ThuyÒn phu Êt", tbMap = {336, 1299, 2933}},
	[3]	= {szNpcname = "ThuyÒn phu bÝnh", tbMap = {336, 1555, 2829}},
};

function north_boatman_main(nId)
	local szNpcname = %tbNorth_Boatman_Info[nId].szNpcname;
	tbBoatmanDialog	= {format("Ngµi gióp ta trë vÒ trung nguyªn nhÐ!/#tosouth(%d)", nId), "Ch¼ng qua lµ ghÐ th¨m «ng chót th«i!/no"};
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
--	if (nDate >= jf0904_act_dateS) then
--		tinsert(tbBoatmanDialog, 2, "ÎÒÀ´½»ÏûÃðË®ÔôÈÎÎñ/fullfill_shuizei_act");
--	end
	Say(format("%s:Chµo vÞ thiÕu hiÖp, l©u råi kh«ng gÆp", szNpcname), getn(tbBoatmanDialog), unpack(tbBoatmanDialog));
end

function tosouth(nId)
	local tbMap 	= %tbNorth_Boatman_Info[nId].tbMap;
	local szNpcname	= %tbNorth_Boatman_Info[nId].szNpcname;
	
	if( GetCash() >= 200 ) then
		NewWorld(unpack(tbMap));
		Pay( 200 );
		DisabledUseTownP(0);
		SetRevPos(53, 19)
	else
		Talk(1,"",format("%s: Kh«ng cã tiÒn mµ còng ®ßi vÒ trung nguyªn?", szNpcname));
	end
end

function no()
end