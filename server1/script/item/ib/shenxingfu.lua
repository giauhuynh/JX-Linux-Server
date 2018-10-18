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
		-- Msg2Player("HiÖn t¹i ng­¬i kh«ng thÓ sö dông thÇn hµnh phï!");
		bilCheckMap = 1
	end
	
	local nSubWorldID = GetWorldPos();
	if (nSubWorldID >= 375 and nSubWorldID <= 386) then
		-- Msg2Player("B¶n ®å hiÖn t¹i ng­¬i ®ang ®øng thuéc khu vùc ®Æc thï, kh«ng thÓ sö dông thÇn hµnh phï.");
		bilCheckMap = 1
	end
	
	if (nSubWorldID >= 416 and nSubWorldID <= 511) then
		-- Msg2Player("B¶n ®å hiÖn t¹i ng­¬i ®ang ®øng thuéc khu vùc ®Æc thï, kh«ng thÓ sö dông thÇn hµnh phï.");
		bilCheckMap = 1
	end
	
	if (nSubWorldID == 44 or nSubWorldID == 197 or nSubWorldID == 208 or nSubWorldID == 209 or nSubWorldID == 210 or nSubWorldID == 211 or nSubWorldID == 212 or (nSubWorldID >= 213 and nSubWorldID <= 223)	or nSubWorldID == 336 or nSubWorldID == 341 or nSubWorldID == 342	or nSubWorldID == 175	or nSubWorldID == 337	or nSubWorldID == 338	or nSubWorldID == 339 or ( nSubWorldID >= 387 and  nSubWorldID <= 395 ) )then 
		-- Msg2Player("B¶n ®å hiÖn t¹i ng­¬i ®ang ®øng thuéc khu vùc ®Æc thï, kh«ng thÓ sö dông thÇn hµnh phï.");
		bilCheckMap = 1
	end;
	
	if (nSubWorldID == 325) then
		-- Msg2Player("B¶n ®å hiÖn t¹i ng­¬i ®ang ®øng thuéc khu vùc ®Æc thï, kh«ng thÓ sö dông thÇn hµnh phï.");
		bilCheckMap = 1
	end

	--ÎÀ¹úÕ½ÕùÖ®·é»ðÁ¬³ÇµØÍ¼£¬²»ÄÜÊ¹ÓÃ
	if (CheckAllMaps(nSubWorldID) == 1) then
		-- Msg2Player("B¶n ®å hiÖn t¹i ng­¬i ®ang ®øng thuéc khu vùc ®Æc thï, kh«ng thÓ sö dông thÇn hµnh phï.");
		bilCheckMap = 1
	end;
	
	-- if (GetLevel() < 5) then
		-- Say("Ng­êi ch¬i ph¶i ®¹t ®¼ng cÊp 5 trë lªn míi cã thÓ sö dông thÇn hµnh phï.", 0);
		-- return 1
	-- end;
	
	--ThÇn thµnh phï Edit l¹i bëi Bil4i3n
	
	if bilCheckMap == 1 then
		-- Say("Khu vùc ®¹i hiÖp ®ang ®øng hoÆc tr¹ng th¸i hiÖn t¹i  kh«ng cho phÐp truyÒn tèng, ®¹i hiÖp chØ cã thÓ sö<enter>dông chøc n¨ng hç trî!", 2, 
			-- "Chøc n¨ng cÈm nang ®ång hµnh/cndh_CallFuncMain4Thp",
			-- "   Rêi khái!/no"
			-- );
		
		Msg2Player("<color=yellow>Khu vùc ®ang ®øng hoÆc tr¹ng th¸i hiÖn t¹i kh«ng cho phÐp sö dông ThÇn Hµnh Phï!")
		return 1	
	end
	
	local a = {}
	
	tinsert(a, "Rêi khái!/no")
	
	--if m_TieuBangChien:api_Station(1) then
	--	tinsert(a, "   §i ®Õn b¶n ®å Tiªu Bang ChiÕn/#m_TieuBangChien:api_Station()")
	--end
	
	if m_ChienLongDong:IsOpen() then
		tinsert(a, "   §i ®Õn b¶n ®å ChiÕn Long §éng/m_ChienLongDong_nJoinMap")
	end
	
	tinsert(a, "   Khu vùc luyÖn c«ng /khuvucluyencongtheocapbyBil4i3n")
	tinsert(a, "   Khu vùc Thµnh thÞ /gopos_step2town")
	tinsert(a, "   Khu vùc Th«n trang/#gopos_step2(8)")
	tinsert(a, "   Khu vùc M«n ph¸i/#gopos_step2(9)")
	tinsert(a, "   Khu vùc b¸o danh Tèng Kim/gopos_step2battle")
	tinsert(a, "   Khu vùc Minh NguyÖt TrÊn/#tbVNGWORDPOS:GotoOtherMap()")


	
	Say("Víi thuËt ThÇn Hµnh trong tay, ®¹i hiÖp cã thÓ di<enter>chuyÓn ®Õn bÊt cø khu vùc nµo cho phÐp truyÒn tèng!.", getn(a), a)

	return 1
end;

tab_RevivePos = {
	[1] = {	--"³É¶¼"
		{"   Thµnh §« ®«ng", 6, 11},{"   Thµnh §« t©y", 7, 11},{"   Thµnh §« nam", 8, 11},{"   Thµnh §« b¾c", 9, 11},{"   Thµnh §« trung t©m", 5, 11}
	},
	[2] = {	--"ÏåÑô"
		{"   T­¬ng D­¬ng ®«ng", 30, 78},{"   T­¬ng D­¬ng t©y", 32 , 78},{"   T­¬ng D­¬ng nam", 31, 78},{"   T­¬ng D­¬ng b¾c", 33, 78},{"   T­¬ng D­¬ng trung t©m", 29, 78}
	},
	[3] = {	--"·ïÏè"
		{"   Ph­îng T­êng ®«ng", 1, 1},{"   Ph­îng T­êng t©y", 2, 1},{"   Ph­îng T­êng nam", 3, 1},{"   Ph­îng T­êng b¾c", 4, 1},{"   Ph­îng T­êng trung t©m", 0, 1}
	},
	[4] = {	--"´óÀí"
		{"   §¹i lý b¾c", 64, 162},{"   §¹i lý trung t©m", 63, 162}
	},
	[5] = {	--"ãê¾©"
		{"   BiÖn Kinh ®«ng", 24, 37},{"   BiÖn Kinh t©y", 25, 37},{"   BiÖn Kinh nam", 24, 37},{"   BiÖn Kinh b¾c", 26, 37},{"   BiÖn Kinh trung t©m", 23, 37}
	},
	[6] = {	--"ÑïÖÝ"
		{"   D­¬ng Ch©u ®«ng", 35, 80},{"   D­¬ng Ch©u t©y", 38, 80},{"   D­¬ng Ch©u nam", 37, 80},{"   D­¬ng Ch©u b¾c", 36, 80},{"   D­¬ng Ch©u trung t©m", 34, 80}
	},
	[7] = {	--"ÁÙ°²"
		{"   L©m An ®«ng", 68, 176},{"   L©m An nam", 67, 176},{"   L©m An b¾c", 69, 176}
	},
	[8] = {	--"´å×¯"
		{"   Ba L¨ng huyÖn", 19, 53},{"   Giang T©n Th«n", 10, 20},{"   VÜnh L¹c trÊn", 43, 99},{"   Chu Tiªn trÊn", 45, 100},{"   §¹o H­¬ng th«n", 47, 101},{"   Long M«n trÊn", 55, 121},{"   Th¹ch Cæ trÊn", 59, 153},{"   Long TuyÒn th«n", 65, 174},{"   T©y S¬n th«n", 1, 175}
	},
	[9] = {	--"ÃÅÅÉ"
		{"   Thiªn V­¬ng Bang", 21, 59},{"   ThiÕu L©m ph¸i", 52, 103},{"   §­êng M«n", 15, 25},{"   Ngò §éc Gi¸o", 71, 183},{"   Nga My ph¸i", 13, 13},{"   Thóy Yªn m«n", 61, 154},{"   Thiªn NhÉn gi¸o", 28, 49},{"   C¸i Bang", 53, 115},{"   Vâ §ang ph¸i", 40, 81},{"   C«n L«n ph¸i", 58, 131}
	},
};
--Éè¶¨ÖØÉúµã£¨Ñ¡³ÇÊÐ£©
function set_backpos()
	for i = 1, getn(tbBATTLEMAP) do 
		if ( nMapId == tbBATTLEMAP[i] ) then
			Msg2Player("Lóc nµy b¹n kh«ng thÓ sö dông vËt phÈm nµy");
			return 1;
		end
	end	
	

	
	local tab_Content = {
		"Rêi khái/no",
		"Thµnh §«/#setpos_step2(1)",
		"T­¬ng D­¬ng/#setpos_step2(2)",
		"Ph­îng T­êng/#setpos_step2(3)",
		"§¹i Lý/#setpos_step2(4)",
		"BiÖn Kinh/#setpos_step2(5)",
		"D­¬ng Ch©u/#setpos_step2(6)",
		"L©m An/#setpos_step2(7)",
		"Th«n trang/#setpos_step2(8)",
		"m«n ph¸i/#setpos_step2(9)"
	}
	Say("ThiÕt ®Æt ®iÓm håi thµnh cho l Çn sau sö dông thæ ®Þa phï", getn(tab_Content), tab_Content);
end;

--Ñ¡µØµã
function setpos_step2(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#setpos_step3( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "Rêi khái/no");
	Say("ThiÕt ®Æt ®iÓm håi thµnh cho l Çn sau sö dông thæ ®Þa phï", getn(tab_Content), tab_Content);
end;

--Ñ¡µØµã
function setpos_step3(nIdx, nSubIdx)
	SetRevPos(tab_RevivePos[nIdx][nSubIdx][3], tab_RevivePos[nIdx][nSubIdx][2]);
	Say("§¹i hiÖp ®· ®Æt thµnh c«ng ®iÓm håi sinh"..tab_RevivePos[nIdx][nSubIdx][1], 0);
	Msg2Player("§¹i hiÖp ®· ®Æt thµnh c«ng ®iÓm håi sinh"..tab_RevivePos[nIdx][nSubIdx][1]);
end;

function gopos_step2town()
	local tab_Content = {
		"Rêi khái!/no",
		"   Thµnh §«/#gopos_step2(1)",
		"   T­¬ng D­¬ng/#gopos_step2(2)",
		"   Ph­îng T­êng/#gopos_step2(3)",
		"   §¹i Lý/#gopos_step2(4)",
		"   BiÖn Kinh/#gopos_step2(5)",
		"   D­¬ng Ch©u/#gopos_step2(6)",
		"   L©m An/#gopos_step2(7)",
	}
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end

--ÉñÐÐ·û£­£­£­£­µÚ¶þ²½
function gopos_step2(nIdx)
	local tab_Content = {};
	tinsert(tab_Content, "Rêi khái!/no");
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#gopos_step3( "..nIdx..","..i..")");
	end;
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end;

--ÉñÐÐ·û£­£­£­£­µÚÈý²½
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
	Msg2Player("<color=0xa9ffe0>Xin h·y ngåi yªn, chóng ta ®i  "..tab_RevivePos[nIdx][nSubIdx][1].." nµo");
end;


tab_lv90map = {
		{875,1576,3177	,"H¾c Sa ®éng",},
		{322,1589,3164	,"Tr­êng B¹ch s¬n B¾c",},
		{321,967,2313	,"Tr­êng B¹ch s¬n Nam ",},
		{75,1811,3012	,"Kho¶ Lang ®éng",},
		{227,1588,3237	,"Sa M¹c 3",},
		{225,1474,3275	,"Sa M¹c 1",},
		{226,1560,3184	,"Sa M¹c 2",},
		{336,1124,3187	,"Phong L¨ng ®é",},
		{340,1845,3438	,"M¹c Cao QuËt",},
		{144,1691,3020	,"D­îc V­¬ng ®éng tÇng 4",},
		{93,1529,3166	,"TiÕn Cóc ®éng",},
		{124,1675,3418	,"C¸n Viªn ®éng",},
		{152,1672,3361	,"TuyÕt B¸o ®éng tÇng 8",},
--		{325,1569,3086	,"½ð·½±¨Ãû´¦",},
--		{325,1541,3178	,"ËÎ·½±¨Ãû´¦",},
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
		tinsert(tab_Content, "Trang tr­íc/#gopos_step2lv90( 1,"..(ns_1-1)..")");
	end
	
	if (ne_1 < n_count) then
		tinsert(tab_Content, "Trang kÕ /#gopos_step2lv90( "..(ne_1+1)..","..n_count..")");
	end
	
	tinsert(tab_Content, "Rêi khái/no");
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end


function gopos_step3lv90(nIdx)
	NewWorld(tab_lv90map[nIdx][1], tab_lv90map[nIdx][2], tab_lv90map[nIdx][3])
	SetFightState(1);
	Msg2Player("Xin h·y ngåi yªn, chóng ta ®i"..tab_lv90map[nIdx][4].." nµo");
end


function gopos_step2battle()
	--if ( GetLevel() < 120 ) then
		--Talk( 1, "", "Tèng Kim gian khæ khèc liÖt, ng­¬i ch­a ®¹t ®Õn cÊp 120 h·y vÒ luyÖn thªm råi h·y tÝnh." );
	--else
		--Say ( "Trong Tèng Kim, bªn lîi thÕ vÒ sè ng­êi tuy cã chiÕm ­u thÕ nh­ng sÏ nhËn ®­îc ®iÓm tÝch lòy Ýt h¬n, c¸c h¹ muèn chän b¸o danh bªn nµo?", 3, "Vµo ®iÓm b¸o danh phe Vµng (T)/#DoRescriptFunc(1)", "Vµo ®iÓm b¸o danh phe TÝm (K)/#DoRescriptFunc(2)","§Ó ta suy nghÜ l¹i./no" );
	--end;
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "Tèng Kim lµ n¬i rÊt nguy hiÓm, ch­a ®¹t cÊp 40 kh«ng thÓ tham gia chiÕn tr­êng." );
	else
		Say ( "Trong Tèng Kim, bªn lîi thÕ vÒ sè ng­êi tuy cã chiÕm ­u thÕ nh­ng sÏ nhËn ®­îc ®iÓm tÝch lòy Ýt h¬n, c¸c h¹ muèn chän b¸o danh bªn nµo?", 3, "Rêi khái!/no", "   Vµo ®iÓm b¸o danh phe Tèng /ToSong", "   Vµo ®iÓm b¸o danh phe Kim /ToJin");
	end;
end

function gopos_sevencityfield()
	Say("Ng­¬i muèn ®i chiÕn tr­êng nµo cña ThÊt Thµnh §¹i ChiÕn?", 8,
		"ChiÕn tr­êng Thµnh §«/#goto_sevencityfield(1)",
		"ChiÕn tr­êng BiÖn Kinh/#goto_sevencityfield(2)",
		"ChiÕn tr­êng §¹i Lý/#goto_sevencityfield(3)",
		"ChiÕn tr­êng Ph­îng T­êng/#goto_sevencityfield(4)",
		"ChiÕn tr­êng L©m An/#goto_sevencityfield(5)",
		"ChiÕn tr­êng T­¬ng D­¬ng/#goto_sevencityfield(6)",
		"ChiÕn tr­êng D­¬ng Ch©u/#goto_sevencityfield(7)",
		"§Ó ta suy nghÜ l¹i/Cancel")
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
function ToSong()	-- ½øÈëËÎ·½±¨Ãûµã	
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "ChiÕn tr­êng Tèng Kim gian khæ khèc liÖt, ng­¬i ch­a ®¹t ®Õn cÊp 40 h·y vÒ luyÖn thªm råi h·y tÝnh." );
	elseif ( GetLevel() >= 40 and GetLevel() < 80 ) then
			NewWorld( 323, 1541, 3178);
			DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
			Msg2Player( "§Õn n¬i b¸o danh ChiÕn Tr­êng Tèng Kim S¬ CÊp" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
			NewWorld( 324, 1541, 3178);
			DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
			Msg2Player( "§Õn n¬i b¸o danh ChiÕn Tr­êng Tèng Kim Trung CÊp" );
	else
			NewWorld( 325, 1541, 3178);
			DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
			Msg2Player( "§Õn n¬i b¸o danh ChiÕn Tr­êng Tèng Kim Cao CÊp" );
	end
end

function ToJin()	-- ½øÈë½ð·½±¨Ãûµã
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "ChiÕn tr­êng Tèng Kim gian khæ khèc liÖt, ng­¬i ch­a ®¹t ®Õn cÊp 40 h·y vÒ luyÖn thªm råi h·y tÝnh." );
	elseif ( GetLevel() >= 40 and GetLevel() < 80 ) then
			NewWorld( 323, 1570, 3085);
			DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
			Msg2Player( "§Õn n¬i b¸o danh ChiÕn Tr­êng Tèng Kim S¬ CÊp" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
			NewWorld( 324, 1570, 3085);
			DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
			Msg2Player( "§Õn n¬i b¸o danh ChiÕn Tr­êng Tèng Kim Trung CÊp" );
	else
			NewWorld( 325, 1570, 3085);
			DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
			Msg2Player( "§Õn n¬i b¸o danh ChiÕn Tr­êng Tèng Kim Cao CÊp" );
	end
end

function DoRescriptFunc(nSel)
	if ( GetLevel() < 120 ) then
		Talk( 1, "", "Tèng Kim gian khæ khèc liÖt, ng­¬i ch­a ®¹t ®Õn cÊp 120 h·y vÒ luyÖn thªm råi h·y tÝnh." );
		return
	end
	local tbsongjin_pos = {1608,3254};	--ËÎ·½×ø±êµã
	local szstr = "Phe Vµng (T)";
	if (nSel == 2) then
		tbsongjin_pos = {1566,3277};
		szstr = "Phe TÝm (K)";
	end;
	szstr = ""
	if ( GetLevel() >= 40 and GetLevel() < 80 ) then
		NewWorld( 323, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
		Msg2Player( "§· ®Õn thµnh §¹i Lý" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
		NewWorld( 324, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
		Msg2Player( "§· ®Õn thµnh §¹i Lý" );
	else
		NewWorld( 162, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
		Msg2Player( "§· ®Õn thµnh §¹i Lý" );
	end
end


function no()
end




