-- ����ɱ�������
Include("\\script\\event\\jiefang_jieri\\200904\\shuizei\\shuizei.lua");
Include("\\script\\lib\\common.lua");

local tbNorth_Boatman_Info	=
{
	[1]	= {szNpcname = "Thuy�n phu gi�p", tbMap = {336, 1165, 3043}},
	[2]	= {szNpcname = "Thuy�n phu �t", tbMap = {336, 1299, 2933}},
	[3]	= {szNpcname = "Thuy�n phu b�nh", tbMap = {336, 1555, 2829}},
};

function north_boatman_main(nId)
	local szNpcname = %tbNorth_Boatman_Info[nId].szNpcname;
	tbBoatmanDialog	= {format("Ng�i gi�p ta tr� v� trung nguy�n nh�!/#tosouth(%d)", nId), "Ch�ng qua l� gh� th�m �ng ch�t th�i!/no"};
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
--	if (nDate >= jf0904_act_dateS) then
--		tinsert(tbBoatmanDialog, 2, "����������ˮ������/fullfill_shuizei_act");
--	end
	Say(format("%s:Ch�o v� thi�u hi�p, l�u r�i kh�ng g�p", szNpcname), getn(tbBoatmanDialog), unpack(tbBoatmanDialog));
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
		Talk(1,"",format("%s: Kh�ng c� ti�n m� c�ng ��i v� trung nguy�n?", szNpcname));
	end
end

function no()
end