--AddEventItem(489)���������
IncludeLib("FILESYS")
Include("\\script\\lib\\log.lua")

MISSIONID = 15		
FRAME2TIME = 18;		--18֡��Ϸʱ���൱��1����
boatMAPS = {337, 338, 339};		--�ϰ��ɴ���ͼ��˳��Ϊ��337�ϰ����Ρ�338���Ρ�339����
boatMAP_POS = {1646, 3233}
northMAP = 336
northMAP_POS = {{1158, 2964}, {1343, 2868}, {1482, 2796}}
TNPC_THIEF = {724, 725}
TNPC_THIEF_COUNT = 30
npcthiefpos = "\\settings\\maps\\��ԭ����\\�ɴ�\\�ɴ�ˢ�ֵ�.txt"
FLD_TIMER_1 = 20 * FRAME2TIME	--ÿ20�빫��һ��ս��
FLD_TIMER_2 = 39 * 60 * FRAME2TIME		--�ӱ���������򱦵�ͼ40����
ENDSIGN_TIME = 10 * 60 * FRAME2TIME/FLD_TIMER_1		--����ʱ�����
UPBOSS_TIME = 25 * 60 * FRAME2TIME/FLD_TIMER_1		--����15����ʱ������1��BOSS
UPBOSS_TIME2 = 30 * 60 * FRAME2TIME/FLD_TIMER_1		--����20����ʱ������2��BOSS
UPBOSS_TIME3 = 35 * 60 * FRAME2TIME/FLD_TIMER_1		--����25����ʱ������3��BOSS
REPORT_TIME = 38 * 60 * FRAME2TIME/FLD_TIMER_1 
HUOYUEDU_TIME = 3 * 60 * FRAME2TIME/FLD_TIMER_1 -- ��Ծ�Ȼ��ʱ�䣬���������3����

MS_STATE = 1
MS_TIMEACC_1MIN = 2
MS_TIMEACC_20SEC = 3




function fld_cancel()
end

function fld_wanttakeboat(addr)
	if (GetLastFactionNumber() == -1)then
		Talk(1,"","Ch�a gia nh�p m�n ph�i kh�ng th� l�n thuy�n")
		return
	end
	
	local orgworld = SubWorld
	local MapId = boatMAPS[addr]
	if (MapId <= 0) then
		print("error:fenglingdu script wrong! mapid is nil!")
		return
	end
	local idx = SubWorldID2Idx(MapId)		
	if (idx < 0) then
		Say("Ph�a tr��c c� nguy hi�m kh�ng th� l�n thuy�n!.",0)
		return
	end
	if (fld_haveroom() == 1) then
		return
	end
	local sz_msg = "Mu�n l�n thuy�n sang b� b�c c�n ph�i c� <color=red>l�nh b�i phong l�ng ��<color> !";
	local str = {	
		"N�p l�nh b�i phong l�ng ��./use_lingpai",
		--"D�ng 200 cu�n m�t �� th�n b�./use_juanzhou",
		"Kh�ng �i n�a!/fld_cancel",
			};
	 if (check_new_shuizeitask() == 1) then
		 sz_msg = format("C�n ph�i c� %s m�i c� th� tham gia v��t thuy�n sang m�n b�c phong l�ng �� nh�n th��ng.", "Th�y t�c l�nh b�i ");
		 str = {	
		format("Ta c�  %s/use_suizeilingpai", "Th�y t�c l�nh b�i"),
		 "Kh�ng �i n�a!/fld_cancel",
		};
	 end		
	if (addr == 1) then
		Say(" "..sz_msg, getn(str), str);
	elseif (addr == 2) then
		Say(" "..sz_msg, getn(str), str);
	elseif (addr == 3) then
		Say(" "..sz_msg, getn(str), str);
	end
end



function fld_TakeBoat(plindex)
	orgplayerindex = PlayerIndex
	PlayerIndex = plindex

	local orgworld = SubWorld
	if ( BOATID == 1 ) then
		boatmapid = 337
		idx = SubWorldID2Idx(boatmapid)
	elseif( BOATID == 2 ) then
		boatmapid = 338
		idx = SubWorldID2Idx(boatmapid)
	elseif ( BOATID == 3 ) then
		boatmapid = 339
		idx = SubWorldID2Idx(boatmapid)
	else
		return 0
	end

	oldsubworldindex = SubWorld
	SubWorld = SubWorldID2Idx(boatmapid)
	if (fld_haveroom() == 1) then
		return 0
	end
	t = 10 - GetMissionV(MS_TIMEACC_1MIN)
	if (t <= 0) then
		return 0
	end
	LeaveTeam()
	--DinhHQ
	--20110405: Fix bug, ����13h, 15h, 17h, 19h��2 3 ��ͷ����pk��ɱ
	if (check_new_shuizeitask() == 1) then
		if ( BOATID ~= 1 ) then
			SetTaskTemp(200,1);
			ForbidEnmity(1);			
		end		
	end
	SetCurCamp(1);	
--	if ( BOATID ~= 1 ) then
--		ForbidEnmity(1);
--		SetCurCamp(1);
--	end
	
--	SetTaskTemp(200,1);
	SetFightState(0)
	posx, posy = fld_getadata(npcthiefpos)
	posx = floor(posx/32)
	posy = floor(posy/32)
	AddMSPlayer(MISSIONID,1)
	NewWorld(boatmapid, posx, posy)
	Msg2Player("C�n "..t.." ph�t thuy�n s� r�i b�n sang m�n b�c")
	DisabledUseTownP(1)	--�������ڶɴ���ʹ�ûسǷ�
	SetRevPos(175,1);		--��������������ɽ��
	SetLogoutRV(1)
	SetCreateTeam(0);
	SetDeathScript("\\script\\missions\\fengling_ferry\\fld_death.lua")
	SubWorld = oldsubworldindex
	PlayerIndex = orgplayerindex
	return 1
end

function fld_haveroom()
	if (GetMSPlayerCount(MISSIONID, 1) >= 100 ) then
		if (BOATID == 1) then
			Say("Ng��i t�i mu�n! Thuy�n �� ��y. h�y ��i chuy�n sau �i!", 0)
			return 1
		elseif (BOATID == 2) then
			Say("Ng��i t�i mu�n�! Thuy�n �� ��y. h�y ��i chuy�n sau �i!", 0)
			return 1
		elseif (BOATID == 3) then
			Say("Ng��i t�i mu�n�! Thuy�n �� ��y. h�y ��i chuy�n sau �i!", 0)
			return 1
		end
	end
end

function GetTabFileHeight(mapfile)
	if (TabFile_Load(mapfile, mapfile) == 0) then
		print("Load TabFileError!"..mapfile);
		return 0
	end
	return TabFile_GetRowCount(mapfile)
end

function GetTabFileData(mapfile, row, col)
	if (TabFile_Load(mapfile, mapfile) == 0) then
		print("Load TabFile Error!"..mapfile)
		return 0
	else
		return tonumber(TabFile_GetCell(mapfile, row, col))
	end
end

function fld_landingpos(posation)
	if (posation <= 0 and posation >3) then
		print("error: i still not know why!")
		return
	end
	return northMAP, northMAP_POS[posation][1], northMAP_POS[posation][2]
end

function fld_getadata(file)
	local totalcount = GetTabFileHeight(file) - 1;
	id = random(totalcount);
	x = GetTabFileData(file, id + 1, 1);
	y = GetTabFileData(file, id + 1, 2);
	return x,y
end

-- ���ؾ��ύ������
function	use_juanzhou()	--ʹ�����ؾ���
	GiveItemUI( "N�p m�t �� th�n b�", "Mang ��ng 200 quy�n m�t �� th�n b�. �t h�n ho�c nhi�u h�n ta ��u kh�ng nh�n.", "exchange_juanzhou", "no" );
end;

-- ȷ�����ؾ�����������
function exchange_juanzhou(ncount)
	local scrollarray = {}
	local scrollcount = 0
	local scrollidx = {}
	local y = 0
	for i=1, ncount do
		local nItemIdx = GetGiveItemUnit(i);
		itemgenre, detailtype, parttype = GetItemProp(nItemIdx)
		if (itemgenre == 6 and detailtype == 1 and parttype ==196) then	
			y = y + 1
			scrollidx[y] = nItemIdx;
			scrollarray[i] = GetItemStackCount(nItemIdx)
			scrollcount = scrollcount + scrollarray[i]
		end
	end
	if (y ~= ncount) then
		Say("H�nh nh� kh�ng ��ng l��ng m�t �� th�n b� ta c�n.", 2, "�� ta xem l�i./use_juanzhou", "��i ta ki�m tra m�t ch�t/no")
		return
	end
	if (scrollcount > 200) then
		Say("Nhi�u h�n 200 quy�n r�i. H�y l�y b�t �i!", 2, "�� ta xem l�i./use_juanzhou", "��i ta ki�m tra m�t ch�t/no")
		return
	end
	if (scrollcount < 200) then
		Say("Ng��i t�nh l�a ta ah!", 2, "�� ta xem l�i./use_juanzhou", "��i ta ki�m tra m�t ch�t/no")
		return
	end
	if (scrollcount == 200) then
		if (fld_TakeBoat(PlayerIndex) ~= 1) then
			Say("Th�i gian kh�ng ��i ai c�. Thuy�n �� �i r�i. H�y ch� t�i l�n sau!", 0)
			return
		end
		for i = 1, y do
			RemoveItemByIndex(scrollidx[i])
		end
	end;		
end;


-- L�nh b�i phong l�ng ��????
function	use_lingpai()	--??L�nh b�i phong l�ng ��
	GiveItemUI( format("N�p %s l�nh b�i", "L�nh b�i phong l�ng ��"), format("��t v�o m�t c�i %s v�o � ph�a d��i. ��ng c� ��t �� linh tinh v�o nh�.", "L�nh b�i phong l�ng ��"), "exchange_lingpai_1", "no" );
end;

function use_suizeilingpai()
--Modified By DinhHQ - 20110930
	GiveItemUI( format("N�p %s l�nh b�i", "L�nh b�i th�y t�c"), format("��t v�o m�t c�i %s v�o � ph�a d��i. ��ng c� ��t �� linh tinh v�o nh�.", "L�nh b�i th�y t�c"), "exchange_lingpai_2", "no", 1 );
end

function exchange_lingpai_1(ncount)
	exchange_lingpai(ncount, 1)
end

function exchange_lingpai_2(ncount)
	exchange_lingpai(ncount, 2)
end

-- ??
function exchange_lingpai(ncount, ntype)
	if (ncount == 0) then
		Say("Kh�ng c� l�nh b�i m� c�ng mu�n l�n thuy�n ah?", 0)
		return
	end
	
	if (ncount > 1) then
		Say("Ta �� n�i cho ng��i bi�t l� kh�ng ���c ��t lo�n �� v�o sao?", 0)
		return
	end

	local nItemIdx = GetGiveItemUnit(1);
	local nStackCount = GetItemStackCount(nItemIdx);
	
	if (nStackCount > 1) then
		Say("Ta ch� c�n 1 l�nh b�i nh�ng th� kh�c ta kh�ng c�n", 0)
		return
	end
	
	local itemgenre, detailtype, particular = GetItemProp(nItemIdx);
	
	if (ntype ==1) then
		if (itemgenre ~= 4 or detailtype ~= 489) then
			Say(format("Thuy�n phu:Ta ch� c�n 1 l�nh b�i nh�ng th� kh�c ta kh�ng c�n", "L�nh b�i phong l�ng ��"), 2, "�� ta xem l�i./use_lingpai", "��i ta ki�m tra m�t ch�t/no")
			return
		end
	else
		if (itemgenre ~= 6 or particular ~= 2745) then
			Say(format("Thuy�n phu:Ta ch� c�n 1 l�nh b�i nh�ng th� kh�c ta kh�ng c�n", "L�nh b�i th�y t�c"), 2, "�� ta xem l�i./use_suizeilingpai", "��i ta ki�m tra m�t ch�t/no")
			return
		end
	end
	
	if (fld_TakeBoat(PlayerIndex) ~= 1) then
		Say("Th�i gian kh�ng ��i ng��i, h�y quay l�i chuy�n sau nh�!", 0)
		return
	end
	
	RemoveItemByIndex(nItemIdx);
	if particular == 2745 then
		AddStatData("shuizeilingpai_shiyongshuliang", 1)	--???????
	end
	tbLog:PlayerActionLog("EventChienThang042011","BaoDanhPhongLangDo")	-- ????
	--ghi log ?? key - Modified By DinhHQ - 20120410
	if particular == 2745 then
		tbLog:PlayerActionLog("TinhNangKey","BaoDanhPLD_SDLenhBaiThuyTac")
	else
		tbLog:PlayerActionLog("TinhNangKey","BaoDanhPLD_SDLenhBaiPLD")
	end
end;

function check_new_shuizeitask()
	local nHour = tonumber(GetLocalDate("%H"));
	--????????? - Modified by DinhHQ - 20110504
	local tb_sptime = {
		[10] = 1,
		[14] = 1,
		[16] = 1,
		[18] = 1,
		[20] = 1,
	};
	if (tb_sptime[nHour] and tb_sptime[nHour] == 1) then
		return 1
	else
		return 0
	end
end	

function no()
end;
