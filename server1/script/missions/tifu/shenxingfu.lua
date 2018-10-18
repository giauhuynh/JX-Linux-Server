Include("\\script\\battles\\battlehead.lua")
Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\missions\\sevencity\\war.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\item\\ib\\headshenxingfu.lua")

function main(sel)
	return 1	
end;

tab_RevivePos = {
	[1] = {	--"�ɶ�"
		{"�ɶ���", 6, 11},{"�ɶ���", 7, 11},{"�ɶ���", 8, 11},{"�ɶ���", 9, 11},{"�ɶ���", 5, 11}
	},
	[2] = {	--"����"
		{"������", 30, 78},{"������", 32 , 78},{"������", 31, 78},{"������", 33, 78},{"������", 29, 78}
	},
	[3] = {	--"����"
		{"���趫", 1, 1},{"������", 2, 1},{"������", 3, 1},{"���豱", 4, 1},{"������", 0, 1}
	},
	[4] = {	--"����"
		{"����", 64, 162},{"������", 63, 162}
	},
	[5] = {	--"�꾩"
		{"�꾩��", 24, 37},{"�꾩��", 25, 37},{"�꾩��", 24, 37},{"�꾩��", 26, 37},{"�꾩��", 23, 37}
	},
	[6] = {	--"����"
		{"���ݶ�", 35, 80},{"������", 38, 80},{"������", 37, 80},{"���ݱ�", 36, 80},{"������", 34, 80}
	},
	[7] = {	--"�ٰ�"
		{"�ٰ���", 68, 176},{"�ٰ���", 67, 176},{"�ٰ���", 69, 176}
	},
	[8] = {	--"��ׯ"
		{"������", 19, 53},{"�����", 10, 20},{"������", 43, 99},{"������", 45, 100},{"�����", 47, 101},{"������", 55, 121},{"ʯ����", 59, 153},{"��Ȫ��", 65, 174}
	},
	[9] = {	--"����"
		{"������", 21, 59},{"������", 52, 103},{"����", 15, 25},{"�嶾��", 71, 183},{"������", 13, 13},{"������", 61, 154},{"���̽� ", 28, 49},{"ؤ��", 53, 115},{"�䵱��", 40, 81},{"������", 58, 131}
	},
};
--�趨�����㣨ѡ���У�
function set_backpos()
	for i = 1, getn(tbBATTLEMAP) do 
		if ( nMapId == tbBATTLEMAP[i] ) then
			Msg2Player("�ڴ��㲻��ʹ�ô˵���");
			return 1;
		end
	end	
	

	
	local tab_Content = {
		"�뿪/no",
		"�ɶ�/#setpos_step2(1)",
		"����/#setpos_step2(2)",
		"����/#setpos_step2(3)",
		"����/#setpos_step2(4)",
		"�꾩/#setpos_step2(5)",
		"����/#setpos_step2(6)",
		"�ٰ�/#setpos_step2(7)",
		"��ׯ/#setpos_step2(8)",
		"����/#setpos_step2(9)"
	}
	-- Say("�����´�ʹ�����ط��ص��ĵص�", getn(tab_Content), tab_Content);
end;

--ѡ�ص�
function setpos_step2(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#setpos_step3( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "�뿪/no");
	-- Say("�����´�ʹ�����ط��ص��ĵص�", getn(tab_Content), tab_Content);
end;

--ѡ�ص�
function setpos_step3(nIdx, nSubIdx)
	SetRevPos(tab_RevivePos[nIdx][nSubIdx][3], tab_RevivePos[nIdx][nSubIdx][2]);
	-- Say("������������ó���"..tab_RevivePos[nIdx][nSubIdx][1], 0);
	Msg2Player("������������ó���"..tab_RevivePos[nIdx][nSubIdx][1]);
end;

--�س�
function gototown()
	
	local tab_Content = {
		"�뿪/no",
		"����/gopos_step2town",
		"��ׯ/#gopos_step2(8)",
		"����/#gopos_step2(9)",
		"lv90��ͼ/#gopos_step2lv90()",
		--�����ν�ս������ - Modified By DinhHQ - 20120604
		"�ν�/gopos_step2battle",
		--"�߳Ǵ�ս/gopos_sevencityfield"
	}
	-- Say("���з����ɵ�����Ҫȥ�ĵط���", getn(tab_Content), tab_Content);
end;


function gopos_step2town()
	local tab_Content = {
		"�뿪/no",
		"�ɶ�/#gopos_step2(1)",
		"����/#gopos_step2(2)",
		"����/#gopos_step2(3)",
		"����/#gopos_step2(4)",
		"�꾩/#gopos_step2(5)",
		"����/#gopos_step2(6)",
		"�ٰ�/#gopos_step2(7)",
	}
	-- Say("���з����ɵ�����Ҫȥ�ĵط���", getn(tab_Content), tab_Content);
end

--���з����������ڶ���
function gopos_step2(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#gopos_step3( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "�뿪/no");
	-- Say("���з����ɵ�����Ҫȥ�ĵط���", getn(tab_Content), tab_Content);
end;

--���з���������������
function gopos_step3(nIdx, nSubIdx)
	local file = [[\settings\RevivePos.ini]];
	ini_loadfile(file, 0)
	local szData = ini_getdata(file, tab_RevivePos[nIdx][nSubIdx][3], tab_RevivePos[nIdx][nSubIdx][2]);

	local szArr = split(szData);
	local nPosX = floor(tonumber(szArr[1]) / 32);
	local nPosY = floor(tonumber(szArr[2]) / 32);
	
	if (not nPosX or not nPosY) then
		return
	end;
	NewWorld(tab_RevivePos[nIdx][nSubIdx][3], nPosX, nPosY)
	SetFightState(0);
	Msg2Player("���ÿ�������ȥ"..tab_RevivePos[nIdx][nSubIdx][1].."��");
end;


tab_lv90map = {
--		{875,1576,3177	,"��ɳ��",},
		{322,1589,3164	,"����ɽ��´",},
		{321,967,2313	,"����ɽ��´",},
		{75,1811,3012	,"��ȶ��Թ�",},
		{227,1588,3237	,"ɳĮ�Թ�3",},
		{225,1474,3275	,"ɳĮ�Թ�1",},
		{226,1560,3184	,"ɳĮ�Թ�2",},
		{336,1124,3187	,"�����",},
		{340,1845,3438	,"Ī�߿�",},
		{144,1691,3020	,"ҩ�����Ĳ�",},
		{93,1529,3166	,"���ն��ܹ�",},
		{124,1675,3418	,"��ԯ���Թ�",},
		{152,1672,3361	,"ѩ�����Թ��˲�",},
--		{325,1569,3086	,"�𷽱�����",},
--		{325,1541,3178	,"�η�������",},
	}

function gopos_step2lv90(ns, ne)
	print(ns, ne)
	if (not ns) then
		ns_1 = 1;
		ne_1 = 7;
	else
		ns_1 = ns;
		ne_1 = ne;
	end
	
	if (ne_1 - ns_1 > 6) then
		ne_1 = ns_1 + 6;
	end
	
	local n_count = getn(tab_lv90map);
	
	local tab_Content = {};
	for i = ns_1, ne_1 do
		tinsert(tab_Content, tab_lv90map[i][4].."/#gopos_step3lv90( "..i..")");
	end
	
	if (ns_1 ~= 1) then
		tinsert(tab_Content, "��һҳ/#gopos_step2lv90( 1,"..(ns_1-1)..")");
	end
	
	if (ne_1 < n_count) then
		tinsert(tab_Content, "��һҳ/#gopos_step2lv90( "..(ne_1+1)..","..n_count..")");
	end
	
	tinsert(tab_Content, "ȡ��/no");
	Say("���з����ɵ�����Ҫȥ�ĵط���", getn(tab_Content), tab_Content);
end


function gopos_step3lv90(nIdx)
	NewWorld(tab_lv90map[nIdx][1], tab_lv90map[nIdx][2], tab_lv90map[nIdx][3])
	SetFightState(1);
	Msg2Player("���ÿ�������ȥ"..tab_lv90map[nIdx][4].."��");
end


function gopos_step2battle()
	if ( GetLevel() < 120 ) then
		Talk( 1, "", "�����۽����пᣬ�㻹δ�ﵽ120�����������ϵ��˵." );
	else
		-- Say ( "���з����ɵ�����Ҫȥ�ĵط����Ƿ�Ҫǰ���ν�ս����", 3, "�ξ�������/#DoRescriptFunc(1)", "���������/#DoRescriptFunc(2)","��...�����ӱ�/no" );
	end;
end

function gopos_sevencityfield()
	Say("�߳Ǵ�ս���ͣ���ѡ��Ҫǰ���ĳ��У�", 8,
		"�ɶ�ս��/#goto_sevencityfield(1)",
		"����ս��/#goto_sevencityfield(2)",
		"����ս��/#goto_sevencityfield(3)",
		"����ս��/#goto_sevencityfield(4)",
		"�꾩ս��/#goto_sevencityfield(5)",
		"����ս��/#goto_sevencityfield(6)",
		"�ٰ�ս��/#goto_sevencityfield(7)",
		"����/Cancel")
end

function goto_sevencityfield(nIndex)
	local player = PlayerList:GetPlayer(PlayerIndex)
	local tbErr = {}
	if (BattleWorld:CheckMapPermission(player, tbErr) == 0) then
		player:Say(tbErr.Msg)
		return
	end
	local nMapId = FIELD_LIST[nIndex]
	BattleWorld:Transfer(player, nMapId)
end

function DoRescriptFunc(nSel)
	if ( GetLevel() < 120 ) then
		Talk( 1, "", "�����۽����пᣬ�㻹δ�ﵽ120�����������ϵ��˵." );
		return
	end
	local tbsongjin_pos = {1608,3254};	--�η������
	local szstr = "�ξ�������";
	if (nSel == 2) then
		tbsongjin_pos = {1566,3277};
		szstr = "���������";
	end;
	szstr = ""
	if ( GetLevel() >= 40 and GetLevel() < 80 ) then
		NewWorld( 323, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		Msg2Player( "�����ν�ս��" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
		NewWorld( 324, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		Msg2Player( "�м��ν�ս��" );
	else
		NewWorld( 162, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		Msg2Player( "�߼��ν�ս��" );
	end
end


function no()
end
