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
Include("\\script\\global\\·��_���.lua")




function main()
dofile("script/global/quanlygame/sukien/event2thang9/cotco.lua")
tamuontreoco()
end

function tamuontreoco()
	local tbDialog = 
{ 
"<npc><color=green>2 th�ng 9 l� ngay khai xin ra n��c Vi�t Nam ch�ng ta.",
"D�ng C� Cho T��ng L�nh/treolacolen",
"Ki�m tra s� m�c s� d�ng v�ng hoa/mocvonghoa",
--"Ta mu�n reset m�c 150/resetmocvonghoa",
"Ta ch� gh� qua th�i/",
} 
CreateTaskSay(tbDialog)
end



function mocvonghoa()
local nGoldPoint5 = GetExtPoint(5);
Talk(1,"","Hi�n t�i ��i hi�p:<color=green>\n�� s� d�ng ���c <color=yellow>"..nGoldPoint5.."<color> V�ng H�a Qu�c Kh�nh!")
Msg2SubWorld("<pic=7> C�p nh�t n�ng h�i <color=green>"..GetName().."<color=yellow> �� s� d�ng ���c <color=yellow>"..nGoldPoint5.."<color> V�ng H�a Qu�c Kh�nh")
end


function treolacolen()
	local tbDialog = 
{ 
"<npc><color=green>2 th�ng 9 l� ngay khai xin ra n��c Vi�t Nam ch�ng ta ��y l� l� c� thi�n li�n c�a t� qu�c ��i hi�p c� mu�n?.",
"D�ng 1 c� 1 l�n/treolacolen1",
"D�ng 5 c� 1 l�n/treolacolen5",
"D�ng 10 c� 1 l�n/treolacolen10",
"D�ng 100 c� 1 l�n/treolacolen100",

"Ta ch� gh� qua th�i/",
} 
CreateTaskSay(tbDialog)
end


function treolacolen1()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� d�ng th�nh c�ng c� nh�n ���c <color=gold><%s><color=green><enter><color=yellow>< T�i T��ng ��i Ng��i L�nh><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="d�y th�ng",tbProp={6,1,4356},nCount=1},
				{szName="l� c�",tbProp={6,1,4357},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={6,1,4358,1},nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� d�ng th�nh c�ng c� nh�n ���c <color=gold><%s><color=green><enter><color=yellow>< T�i T��ng ��i Ng��i L�nh><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="d�y th�ng",tbProp={6,1,4356},nCount=5},
				{szName="l� c�",tbProp={6,1,4357},nCount=5},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={6,1,4358,1},nCount = 5,CallBack= _Message},
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
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� d�ng th�nh c�ng c� nh�n ���c <color=gold><%s><color=green><enter><color=yellow>< T�i T��ng ��i Ng��i L�nh><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="d�y th�ng",tbProp={6,1,4356},nCount=10},
				{szName="l� c�",tbProp={6,1,4357},nCount=10},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={6,1,4358,1},nCount = 10,CallBack= _Message},
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
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� d�ng th�nh c�ng c� nh�n ���c <color=gold><%s><color=green><enter><color=yellow>< T�i T��ng ��i Ng��i L�nh><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="d�y th�ng",tbProp={6,1,4356},nCount=100},
				{szName="l� c�",tbProp={6,1,4357},nCount=100},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={6,1,4358,1},nCount = 100,CallBack= _Message},
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
		Talk(1,"","c�n 3 t�i T�ng Kim T�ch L�y Bao mua t�i shop t�ng kim m�i c� th� reset m�c.") -- go
	return end
ConsumeEquiproomItem(3,6,1,4429,1)
PayExtPoint(5,150)
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> reset th�nh c�ng m�c 150 V�ng Hoa Qu�c Kh�nh")
end
