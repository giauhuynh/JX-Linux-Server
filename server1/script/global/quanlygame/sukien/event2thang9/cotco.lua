--Include("\\script\\global\\lbadmin.lua")
-------------------------------------------------Script*By* NguyenKhai-----------------------------------------
IncludeLib("LEAGUE");
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\lib\\progressbar.lua")
IncludeLib("ITEM")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\task\\partner\\education\\swordking_people.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")




function main()
dofile("script/global/quanlygame/sukien/event2thang9/cotco.lua")
tamuontreoco()
end

function tamuontreoco()
	local tbDialog = 
{ 
"<npc><color=green>2 th¸ng 9 lµ ngay khai xin ra n­íc ViÖt Nam chóng ta.",
"D©ng Cê Cho T­îng LÝnh/treolacolen",
"KiÓm tra sè mèc sö dông vßng hoa/mocvonghoa",
--"Ta muèn reset mèc 150/resetmocvonghoa",
"Ta chØ ghÐ qua th«i/",
} 
CreateTaskSay(tbDialog)
end



function mocvonghoa()
local nGoldPoint5 = GetExtPoint(5);
Talk(1,"","HiÖn t¹i ®¹i hiÖp:<color=green>\n§· sö dông ®­îc <color=yellow>"..nGoldPoint5.."<color> Vßng Hßa Quèc Kh¸nh!")
Msg2SubWorld("<pic=7> CËp nhËt nãng hæi <color=green>"..GetName().."<color=yellow> §· sö dông ®­îc <color=yellow>"..nGoldPoint5.."<color> Vßng Hßa Quèc Kh¸nh")
end


function treolacolen()
	local tbDialog = 
{ 
"<npc><color=green>2 th¸ng 9 lµ ngay khai xin ra n­íc ViÖt Nam chóng ta ®©y lµ l¸ cê thiªn liªn cña tæ quèc ®¹i hiÖp cã muèn?.",
"D©ng 1 cê 1 lÇn/treolacolen1",
"D©ng 5 cê 1 lÇn/treolacolen5",
"D©ng 10 cê 1 lÇn/treolacolen10",
"D©ng 100 cê 1 lÇn/treolacolen100",

"Ta chØ ghÐ qua th«i/",
} 
CreateTaskSay(tbDialog)
end


function treolacolen1()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· d©ng thµnh c«ng cê nhËn ®­îc <color=gold><%s><color=green><enter><color=yellow>< T¹i T­îng §µi Ng­êi LÝnh><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="d©y thõng",tbProp={6,1,4356},nCount=1},
				{szName="l¸ cê",tbProp={6,1,4357},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={6,1,4358,1},nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function treolacolen5()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· d©ng thµnh c«ng cê nhËn ®­îc <color=gold><%s><color=green><enter><color=yellow>< T¹i T­îng §µi Ng­êi LÝnh><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="d©y thõng",tbProp={6,1,4356},nCount=5},
				{szName="l¸ cê",tbProp={6,1,4357},nCount=5},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={6,1,4358,1},nCount = 5,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function treolacolen10()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· d©ng thµnh c«ng cê nhËn ®­îc <color=gold><%s><color=green><enter><color=yellow>< T¹i T­îng §µi Ng­êi LÝnh><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="d©y thõng",tbProp={6,1,4356},nCount=10},
				{szName="l¸ cê",tbProp={6,1,4357},nCount=10},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={6,1,4358,1},nCount = 10,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function treolacolen100()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· d©ng thµnh c«ng cê nhËn ®­îc <color=gold><%s><color=green><enter><color=yellow>< T¹i T­îng §µi Ng­êi LÝnh><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="d©y thõng",tbProp={6,1,4356},nCount=100},
				{szName="l¸ cê",tbProp={6,1,4357},nCount=100},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={6,1,4358,1},nCount = 100,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function resetmocvonghoa()
	local nSilverCount = CalcEquiproomItemCount(6,1,4429,1) ;
	if(nSilverCount < 3) then -- gia xu
		Talk(1,"","cÇn 3 tói Tèng Kim TÝch Lòy Bao mua t¹i shop tèng kim míi cã thÓ reset mèc.") -- go
	return end
ConsumeEquiproomItem(3,6,1,4429,1)
PayExtPoint(5,150)
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> reset thµnh c«ng mèc 150 Vßng Hoa Quèc Kh¸nh")
end
