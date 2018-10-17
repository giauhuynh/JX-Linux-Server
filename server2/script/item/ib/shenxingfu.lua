Include("\\script\\battles\\battlehead.lua")
Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\missions\\sevencity\\war.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\item\\ib\\headshenxingfu.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
Include("\\script\\_missions\\chien_long_dong\\n_leave_map.lua")
Include("\\script\\_missions\\tieu_bang_chien\\api.lua")
Include("\\script\\global\\station.lua")

-- Include("\\script\\global\\_camnangdonghanh.lua")

function main(sel)
	if bilCheckDuaTop:FuncMain() then 
		return 1
	end

	local bilCheckMap = 0
	
	if (IsDisabledUseTownP() == 1 or GetTaskTemp(200) == 1 ) or ( SubWorldIdx2ID( SubWorld ) >= 387 and SubWorldIdx2ID( SubWorld ) <= 395)then
		-- Msg2Player("Hi�n t�i ng��i kh�ng th� s� d�ng th�n h�nh ph�!");
		bilCheckMap = 1
	end
	
	local nSubWorldID = GetWorldPos();
	if (nSubWorldID >= 375 and nSubWorldID <= 386) then
		-- Msg2Player("B�n �� hi�n t�i ng��i �ang ��ng thu�c khu v�c ��c th�, kh�ng th� s� d�ng th�n h�nh ph�.");
		bilCheckMap = 1
	end
	
	if (nSubWorldID >= 416 and nSubWorldID <= 511) then
		-- Msg2Player("B�n �� hi�n t�i ng��i �ang ��ng thu�c khu v�c ��c th�, kh�ng th� s� d�ng th�n h�nh ph�.");
		bilCheckMap = 1
	end
	
	if (nSubWorldID == 44 or nSubWorldID == 197 or nSubWorldID == 208 or nSubWorldID == 209 or nSubWorldID == 210 or nSubWorldID == 211 or nSubWorldID == 212 or (nSubWorldID >= 213 and nSubWorldID <= 223)	or nSubWorldID == 336 or nSubWorldID == 341 or nSubWorldID == 342	or nSubWorldID == 175	or nSubWorldID == 337	or nSubWorldID == 338	or nSubWorldID == 339 or ( nSubWorldID >= 387 and  nSubWorldID <= 395 ) )then 
		-- Msg2Player("B�n �� hi�n t�i ng��i �ang ��ng thu�c khu v�c ��c th�, kh�ng th� s� d�ng th�n h�nh ph�.");
		bilCheckMap = 1
	end;
	
	if (nSubWorldID == 325) then
		-- Msg2Player("B�n �� hi�n t�i ng��i �ang ��ng thu�c khu v�c ��c th�, kh�ng th� s� d�ng th�n h�nh ph�.");
		bilCheckMap = 1
	end

	--����ս��֮������ǵ�ͼ������ʹ��
	if (CheckAllMaps(nSubWorldID) == 1) then
		-- Msg2Player("B�n �� hi�n t�i ng��i �ang ��ng thu�c khu v�c ��c th�, kh�ng th� s� d�ng th�n h�nh ph�.");
		bilCheckMap = 1
	end;
	
	-- if (GetLevel() < 5) then
		-- Say("Ng��i ch�i ph�i ��t ��ng c�p 5 tr� l�n m�i c� th� s� d�ng th�n h�nh ph�.", 0);
		-- return 1
	-- end;
	
	--Th�n th�nh ph� Edit l�i b�i Bil4i3n
	
	if bilCheckMap == 1 then
		-- Say("Khu v�c ��i hi�p �ang ��ng ho�c tr�ng th�i hi�n t�i  kh�ng cho ph�p truy�n t�ng, ��i hi�p ch� c� th� s�<enter>d�ng ch�c n�ng h� tr�!", 2, 
			-- "Ch�c n�ng c�m nang ��ng h�nh/cndh_CallFuncMain4Thp",
			-- "   R�i kh�i!/no"
			-- );
		
		Msg2Player("<color=yellow>Khu v�c �ang ��ng ho�c tr�ng th�i hi�n t�i kh�ng cho ph�p s� d�ng Th�n H�nh Ph�!")
		return 1	
	end
	
	local a = {}
	
	tinsert(a, "R�i kh�i!/no")
	
	--if m_TieuBangChien:api_Station(1) then
	--	tinsert(a, "   �i ��n b�n �� Ti�u Bang Chi�n/#m_TieuBangChien:api_Station()")
	--end
	
	if m_ChienLongDong:IsOpen() then
		tinsert(a, "   �i ��n b�n �� Chi�n Long ��ng/m_ChienLongDong_nJoinMap")
	end
	
	tinsert(a, "   Khu v�c luy�n c�ng /khuvucluyencongtheocapbyBil4i3n")
	tinsert(a, "   Khu v�c Th�nh th� /gopos_step2town")
	tinsert(a, "   Khu v�c Th�n trang/#gopos_step2(8)")
	tinsert(a, "   Khu v�c M�n ph�i/#gopos_step2(9)")
	tinsert(a, "   Khu v�c b�o danh T�ng Kim/gopos_step2battle")
	tinsert(a, "   Khu v�c Minh Nguy�t Tr�n/#tbVNGWORDPOS:GotoOtherMap()")


	
	Say("V�i thu�t Th�n H�nh trong tay, ��i hi�p c� th� di<enter>chuy�n ��n b�t c� khu v�c n�o cho ph�p truy�n t�ng!.", getn(a), a)

	return 1
end;

tab_RevivePos = {
	[1] = {	--"�ɶ�"
		{"   Th�nh �� ��ng", 6, 11},{"   Th�nh �� t�y", 7, 11},{"   Th�nh �� nam", 8, 11},{"   Th�nh �� b�c", 9, 11},{"   Th�nh �� trung t�m", 5, 11}
	},
	[2] = {	--"����"
		{"   T��ng D��ng ��ng", 30, 78},{"   T��ng D��ng t�y", 32 , 78},{"   T��ng D��ng nam", 31, 78},{"   T��ng D��ng b�c", 33, 78},{"   T��ng D��ng trung t�m", 29, 78}
	},
	[3] = {	--"����"
		{"   Ph��ng T��ng ��ng", 1, 1},{"   Ph��ng T��ng t�y", 2, 1},{"   Ph��ng T��ng nam", 3, 1},{"   Ph��ng T��ng b�c", 4, 1},{"   Ph��ng T��ng trung t�m", 0, 1}
	},
	[4] = {	--"����"
		{"   ��i l� b�c", 64, 162},{"   ��i l� trung t�m", 63, 162}
	},
	[5] = {	--"�꾩"
		{"   Bi�n Kinh ��ng", 24, 37},{"   Bi�n Kinh t�y", 25, 37},{"   Bi�n Kinh nam", 24, 37},{"   Bi�n Kinh b�c", 26, 37},{"   Bi�n Kinh trung t�m", 23, 37}
	},
	[6] = {	--"����"
		{"   D��ng Ch�u ��ng", 35, 80},{"   D��ng Ch�u t�y", 38, 80},{"   D��ng Ch�u nam", 37, 80},{"   D��ng Ch�u b�c", 36, 80},{"   D��ng Ch�u trung t�m", 34, 80}
	},
	[7] = {	--"�ٰ�"
		{"   L�m An ��ng", 68, 176},{"   L�m An nam", 67, 176},{"   L�m An b�c", 69, 176}
	},
	[8] = {	--"��ׯ"
		{"   Ba L�ng huy�n", 19, 53},{"   Giang T�n Th�n", 10, 20},{"   V�nh L�c tr�n", 43, 99},{"   Chu Ti�n tr�n", 45, 100},{"   ��o H��ng th�n", 47, 101},{"   Long M�n tr�n", 55, 121},{"   Th�ch C� tr�n", 59, 153},{"   Long Tuy�n th�n", 65, 174},{"   T�y S�n th�n", 1, 175}
	},
	[9] = {	--"����"
		{"   Thi�n V��ng Bang", 21, 59},{"   Thi�u L�m ph�i", 52, 103},{"   ���ng M�n", 15, 25},{"   Ng� ��c Gi�o", 71, 183},{"   Nga My ph�i", 13, 13},{"   Th�y Y�n m�n", 61, 154},{"   Thi�n Nh�n gi�o", 28, 49},{"   C�i Bang", 53, 115},{"   V� �ang ph�i", 40, 81},{"   C�n L�n ph�i", 58, 131}
	},
};
--�趨�����㣨ѡ���У�
function set_backpos()
	for i = 1, getn(tbBATTLEMAP) do 
		if ( nMapId == tbBATTLEMAP[i] ) then
			Msg2Player("L�c n�y b�n kh�ng th� s� d�ng v�t ph�m n�y");
			return 1;
		end
	end	
	

	
	local tab_Content = {
		"R�i kh�i/no",
		"Th�nh ��/#setpos_step2(1)",
		"T��ng D��ng/#setpos_step2(2)",
		"Ph��ng T��ng/#setpos_step2(3)",
		"��i L�/#setpos_step2(4)",
		"Bi�n Kinh/#setpos_step2(5)",
		"D��ng Ch�u/#setpos_step2(6)",
		"L�m An/#setpos_step2(7)",
		"Th�n trang/#setpos_step2(8)",
		"m�n ph�i/#setpos_step2(9)"
	}
	Say("Thi�t ��t �i�m h�i th�nh cho l �n sau s� d�ng th� ��a ph�", getn(tab_Content), tab_Content);
end;

--ѡ�ص�
function setpos_step2(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#setpos_step3( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "R�i kh�i/no");
	Say("Thi�t ��t �i�m h�i th�nh cho l �n sau s� d�ng th� ��a ph�", getn(tab_Content), tab_Content);
end;

--ѡ�ص�
function setpos_step3(nIdx, nSubIdx)
	SetRevPos(tab_RevivePos[nIdx][nSubIdx][3], tab_RevivePos[nIdx][nSubIdx][2]);
	Say("��i hi�p �� ��t th�nh c�ng �i�m h�i sinh"..tab_RevivePos[nIdx][nSubIdx][1], 0);
	Msg2Player("��i hi�p �� ��t th�nh c�ng �i�m h�i sinh"..tab_RevivePos[nIdx][nSubIdx][1]);
end;

function gopos_step2town()
	local tab_Content = {
		"R�i kh�i!/no",
		"   Th�nh ��/#gopos_step2(1)",
		"   T��ng D��ng/#gopos_step2(2)",
		"   Ph��ng T��ng/#gopos_step2(3)",
		"   ��i L�/#gopos_step2(4)",
		"   Bi�n Kinh/#gopos_step2(5)",
		"   D��ng Ch�u/#gopos_step2(6)",
		"   L�m An/#gopos_step2(7)",
	}
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end

--���з����������ڶ���
function gopos_step2(nIdx)
	local tab_Content = {};
	tinsert(tab_Content, "R�i kh�i!/no");
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#gopos_step3( "..nIdx..","..i..")");
	end;
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
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
	Msg2Player("<color=0xa9ffe0>Xin h�y ng�i y�n, ch�ng ta �i  "..tab_RevivePos[nIdx][nSubIdx][1].." n�o");
end;


tab_lv90map = {
		{875,1576,3177	,"H�c Sa ��ng",},
		{322,1589,3164	,"Tr��ng B�ch s�n B�c",},
		{321,967,2313	,"Tr��ng B�ch s�n Nam ",},
		{75,1811,3012	,"Kho� Lang ��ng",},
		{227,1588,3237	,"Sa M�c 3",},
		{225,1474,3275	,"Sa M�c 1",},
		{226,1560,3184	,"Sa M�c 2",},
		{336,1124,3187	,"Phong L�ng ��",},
		{340,1845,3438	,"M�c Cao Qu�t",},
		{144,1691,3020	,"D��c V��ng ��ng t�ng 4",},
		{93,1529,3166	,"Ti�n C�c ��ng",},
		{124,1675,3418	,"C�n Vi�n ��ng",},
		{152,1672,3361	,"Tuy�t B�o ��ng t�ng 8",},
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
		tinsert(tab_Content, "Trang tr��c/#gopos_step2lv90( 1,"..(ns_1-1)..")");
	end
	
	if (ne_1 < n_count) then
		tinsert(tab_Content, "Trang k� /#gopos_step2lv90( "..(ne_1+1)..","..n_count..")");
	end
	
	tinsert(tab_Content, "R�i kh�i/no");
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end


function gopos_step3lv90(nIdx)
	NewWorld(tab_lv90map[nIdx][1], tab_lv90map[nIdx][2], tab_lv90map[nIdx][3])
	SetFightState(1);
	Msg2Player("Xin h�y ng�i y�n, ch�ng ta �i"..tab_lv90map[nIdx][4].." n�o");
end


function gopos_step2battle()
	--if ( GetLevel() < 120 ) then
		--Talk( 1, "", "T�ng Kim gian kh� kh�c li�t, ng��i ch�a ��t ��n c�p 120 h�y v� luy�n th�m r�i h�y t�nh." );
	--else
		--Say ( "Trong T�ng Kim, b�n l�i th� v� s� ng��i tuy c� chi�m �u th� nh�ng s� nh�n ���c �i�m t�ch l�y �t h�n, c�c h� mu�n ch�n b�o danh b�n n�o?", 3, "V�o �i�m b�o danh phe V�ng (T)/#DoRescriptFunc(1)", "V�o �i�m b�o danh phe T�m (K)/#DoRescriptFunc(2)","�� ta suy ngh� l�i./no" );
	--end;
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "T�ng Kim l� n�i r�t nguy hi�m, ch�a ��t c�p 40 kh�ng th� tham gia chi�n tr��ng." );
	else
		Say ( "Trong T�ng Kim, b�n l�i th� v� s� ng��i tuy c� chi�m �u th� nh�ng s� nh�n ���c �i�m t�ch l�y �t h�n, c�c h� mu�n ch�n b�o danh b�n n�o?", 3, "R�i kh�i!/no", "   V�o �i�m b�o danh phe T�ng /ToSong", "   V�o �i�m b�o danh phe Kim /ToJin");
	end;
end

function gopos_sevencityfield()
	Say("Ng��i mu�n �i chi�n tr��ng n�o c�a Th�t Th�nh ��i Chi�n?", 8,
		"Chi�n tr��ng Th�nh ��/#goto_sevencityfield(1)",
		"Chi�n tr��ng Bi�n Kinh/#goto_sevencityfield(2)",
		"Chi�n tr��ng ��i L�/#goto_sevencityfield(3)",
		"Chi�n tr��ng Ph��ng T��ng/#goto_sevencityfield(4)",
		"Chi�n tr��ng L�m An/#goto_sevencityfield(5)",
		"Chi�n tr��ng T��ng D��ng/#goto_sevencityfield(6)",
		"Chi�n tr��ng D��ng Ch�u/#goto_sevencityfield(7)",
		"�� ta suy ngh� l�i/Cancel")
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
function ToSong()	-- �����η�������	
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "Chi�n tr��ng T�ng Kim gian kh� kh�c li�t, ng��i ch�a ��t ��n c�p 40 h�y v� luy�n th�m r�i h�y t�nh." );
	elseif ( GetLevel() >= 40 and GetLevel() < 80 ) then
			NewWorld( 323, 1541, 3178);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim S� C�p" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
			NewWorld( 324, 1541, 3178);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Trung C�p" );
	else
			NewWorld( 325, 1541, 3178);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Cao C�p" );
	end
end

function ToJin()	-- ����𷽱�����
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "Chi�n tr��ng T�ng Kim gian kh� kh�c li�t, ng��i ch�a ��t ��n c�p 40 h�y v� luy�n th�m r�i h�y t�nh." );
	elseif ( GetLevel() >= 40 and GetLevel() < 80 ) then
			NewWorld( 323, 1570, 3085);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim S� C�p" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
			NewWorld( 324, 1570, 3085);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Trung C�p" );
	else
			NewWorld( 325, 1570, 3085);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Cao C�p" );
	end
end

function DoRescriptFunc(nSel)
	if ( GetLevel() < 120 ) then
		Talk( 1, "", "T�ng Kim gian kh� kh�c li�t, ng��i ch�a ��t ��n c�p 120 h�y v� luy�n th�m r�i h�y t�nh." );
		return
	end
	local tbsongjin_pos = {1608,3254};	--�η������
	local szstr = "Phe V�ng (T)";
	if (nSel == 2) then
		tbsongjin_pos = {1566,3277};
		szstr = "Phe T�m (K)";
	end;
	szstr = ""
	if ( GetLevel() >= 40 and GetLevel() < 80 ) then
		NewWorld( 323, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		Msg2Player( "�� ��n th�nh ��i L�" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
		NewWorld( 324, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		Msg2Player( "�� ��n th�nh ��i L�" );
	else
		NewWorld( 162, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		Msg2Player( "�� ��n th�nh ��i L�" );
	end
end


function no()
end




