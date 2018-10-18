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
		{{6,1,1266,1,0,0,0}, "Th�n H�nh Ph�"},
		{{6,1,4259,1,0,0,0}, "C�m Nang ��ng H�nh"},
	}
	if bil.False(bil_1[bil_In_1]) then
		return Msg2Player("Ph�t sinh l�i nh�n l�i v�t ph�m, li�n h� v�i GM �� ���c gi�i quy�t!")
	end
	local bil_2 = AddItem(unpack(bil_1[bil_In_1][1]))
	SetItemBindState(bil_2, -2)
	return Msg2Player(bil.C(10, "Nh�n l�i "..bil_1[bil_In_1][2].." th�nh c�ng!"))
end

function Bil_DelItem()
	return Say("B�n c� ch�c mu�n <color=red>h�y v�t ph�m<color> ch�, h�y suy ngh� k�!<enter><color=0xffff5f>T�t c� c�c v�t ph�m ���c y�u c�u h�y s� b� h�y b� <enter>ho�n to�n b�i h� th�ng, b�t k� l� v�t ph�m n�o!", 2, "Ta ngh� k� r�i!/Bil_DelItem_Sure", "Th�i, ta nh�m!/OnCancel")
end

function Bil_DelItem_Sure()
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n tr�ng trong   vi�c h�y v�t ph�m!", "bilDisposeConfirm", "OnCancel", 1);
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
			Msg2Player("�� h�y v�t ph�m [<color=green>"..strItem.."<color>]")
			
			Count_ItemRemove = Count_ItemRemove + 1
		end

		write(bilLogDelItemFileName, date("%H:%M:%S").."\t Account: "..GetAccount().."\tName: "..GetName().."\t DelItem: "..strItem, "\n")
		
	end
	closefile(bilLogDelItemFileName)
	Msg2Player("Thao t�c h�y v�t ph�m th�nh c�ng")
	Talk(1, "", "Thao t�c th�nh c�ng, ki�m tra l�i!<enter>�� h�y<color=yellow> "..Count_ItemRemove.."<color> v�t ph�m!");	
end

function main()
--Msg2SubWorld("<color=pink>b�o tr� 1 ph�t m� to�n b� ch�c n�ng game cho anh em nhe.")

--Msg2SubWorld("<color=green>C�p nh�t anh em tho�t ra v�o game nh�n top t�i l� quan Ba L�ng Huy�n..")

--Msg2SubWorld("<color=green>C�p nh�t anh em tho�t ra v�o thu muc ch�a game ch�y file AUTOUPDATE �� c�p nh�t s� th�y ���c h�ng c�c cao th� trong d�u ch�m ? tr�n thanh m�u..")
dofile("script/global/·��_���.lua");
	if bilCheckDuaTop:FuncMain() then
		return
	end
	local bilTbOp = {}	
	
	local bilAccGetItemSec = strsub(GetAccount(), 1, 21)
	if bilAccGetItemSec == "accnameclonefornvdatau" then 
		tinsert(bilTbOp, "Nh�n trang b� Clone/#bilGetItem2AccountClone(-1)")
		tinsert(bilTbOp, "-----------------------------------------/OnCancel")
	end
	
	if ConsumeItem(3, 0, 6, 1, 1266, -1) < 1 and GetTask(5931) == 0 then
		tinsert(bilTbOp, "Gi�p t�i h� nh�n l�i Th�n H�nh Ph�/#bilReceived_Item_Lost(1)")
	end
	
	
	
	if ConsumeItem(3, 0, 6, 1, 4259, -1) < 1 then
		tinsert(bilTbOp, "Gi�p t�i h� nh�n l�i C�m nang ��ng h�nh/#bilReceived_Item_Lost(2)")
	end
	tinsert(bilTbOp, "Nh�n th��ng Like v� Share Facebook/#e_code_likeshare.main()")
	tinsert(bilTbOp, "Mua Nguy�n Li�u Event 2-9/nguyenlieuev")
                      tinsert(bilTbOp, "Mua L��i ��nh C� - L�nh B�i PL�/mualuoilenhbai")
                           tinsert(bilTbOp, "��i 100 ti�n ��ng ra 1kv /doitiendongravan")
                          -- tinsert(bilTbOp, "��i 300 v�n ra 10 xu /doiravan")
                      --tinsert(bilTbOp, "Ta �� c�p 200 v� mu�n tr�ng sinh/trungsinh")
                            tinsert(bilTbOp, "Mua V�t Ph�m �p Ho�n M�/hoanmy")
	tinsert(bilTbOp, "R�a S�ch T�i PK Gi� 10xu /ruatoipk")
	--tinsert(bilTbOp, "T�i h� ��n �� �i�m danh h�ng ng�y/bilDailyMuster")
	--tinsert(bilTbOp, "T�i h� ��n �� nh�n danh hi�u Th�nh Ch�/bilAwardCityWar")
	tinsert(bilTbOp, "Nh�n th��ng Danh hi�u v� v�ng s�ng tu�n v�a r�i/bilGetAwardTOPPlayers")
	--tinsert(bilTbOp, "��ng k� x�a M�t kh�u r��ng/resetboxVNG")
	tinsert(bilTbOp, "K�t th�c ��i tho�i/bil.OnCancel")
	tinsert(bilTbOp, "�/NhapPassReload")
	tinsert(bilTbOp, "�/nhancap1")
	Say("<color=Orange>L� quan: <color>Ki�m hi�p qu�n h�ng chi�n nam h�i Long tranhH� ��u di�u C�u ch�u. Ta v�n s� gi� ��i bi�u T�y s�n c� � ch� n�y hoan ngh�nh c�c anh h�ng h�o ki�t, m�t  l�n n�a r�t vinh d� khi ���c l� ng��i ��ng h�nh c�ng c�c ��i hi�p tr�n h�nh tr�nh b�n t�u giang h�!", getn(bilTbOp), bilTbOp)

end

function skill()
AddMagic(711, 1)
end


function doitiendongravan()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 100) then -- gia xu
		Talk(1,"","c�n 100xu nh� ��i hi�p h�y chu�n b� �� r�i g�p ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>10<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
ConsumeEquiproomItem(100,4,417,1,1)
Earn(10000000)
end

function nguyenlieuev()
	local tbOpt =
	{
		{"Mua 10 T�m V�i �� = 10v", vaido10},
		{"Mua 10 Sao V�ng = 10v", saovang10},
		{"Mua 10 D�y th�ng = 1v", daythung10},
		{"Mua 10 Cu�n ch� = 10v", cuonchi10},
		{"Mua 10 gi�y g�i hoa = 10v", giaygoi10},
		{"Mua 10 gi� ��ng hoa = 20v", giodung10},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>��i hi�p mu�n mua g� kh�ng?", tbOpt)
end


function mualuoilenhbai()
	local tbOpt =
	{
		{"Mua l��i ��nh c�", mualuoi},
		{"Mua l�nh b�i Phong L�ng ��", lbphonglang},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>��i hi�p mu�n mua g� kh�ng?", tbOpt)
end


function lbphonglang()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 2) then -- gia xu
		Talk(1,"","c�n 2xu 1 l�nh b�i nh� ��i hi�p h�y chu�n b� �� r�i g�p ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>10<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
ConsumeEquiproomItem(2,4,417,1,1)
AddEventItem(489)
end


function hoanmy()
	local tbOpt =
	{
		{"Mua C�c Hoa Th�ch", cuchoa},
		{"B�ng Th�ch K�t Tinh", bangthach},
		{"B�ng Thi�m T�", bangthiem},
		{"K� Huy�t Th�ch", kehuyet},
		{"M� N�o", manao},
		{"M�nh Thi�n Th�ch", thienthach},
		{"�i�n Ho�n Th�ch", dienhoan},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>M�i 1 c�c gi� 10xu ��i hi�p mu�n mua g� kh�ng?", tbOpt)
end


function cuchoa()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 10) then -- gia xu
		Talk(1,"","1 c�i c�n 10xu nh� ��i hi�p h�y chu�n b� �� r�i g�p ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>30<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
ConsumeEquiproomItem(10,4,417,1,1)
tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={4,963,1,1,0},nCount=1,},}, "test", 1);
end


function bangthach()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 10) then -- gia xu
		Talk(1,"","1 c�i c�n 10xu nh� ��i hi�p h�y chu�n b� �� r�i g�p ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>30<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
ConsumeEquiproomItem(10,4,417,1,1)
tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={4,967,1,1,0},nCount=1,},}, "test", 1);
end


function bangthiem()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 10) then -- gia xu
		Talk(1,"","1 c�i c�n 10xu nh� ��i hi�p h�y chu�n b� �� r�i g�p ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>30<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
ConsumeEquiproomItem(10,4,417,1,1)
tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={4,965,1,1,0},nCount=1,},}, "test", 1);
end


function kehuyet()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 10) then -- gia xu
		Talk(1,"","1 c�i c�n 10xu nh� ��i hi�p h�y chu�n b� �� r�i g�p ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>30<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
ConsumeEquiproomItem(10,4,417,1,1)
tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={4,966,1,1,0},nCount=1,},}, "test", 1);
end


function manao()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 10) then -- gia xu
		Talk(1,"","1 c�i c�n 10xu nh� ��i hi�p h�y chu�n b� �� r�i g�p ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>30<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
ConsumeEquiproomItem(10,4,417,1,1)
tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={4,964,1,1,0},nCount=1,},}, "test", 1);
end


function thienthach()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 10) then -- gia xu
		Talk(1,"","1 c�i c�n 10xu nh� ��i hi�p h�y chu�n b� �� r�i g�p ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>30<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
ConsumeEquiproomItem(10,4,417,1,1)
tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={4,968,1,1,0},nCount=1,},}, "test", 1);
end


function dienhoan()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 10) then -- gia xu
		Talk(1,"","1 c�i c�n 10xu nh� ��i hi�p h�y chu�n b� �� r�i g�p ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>30<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
ConsumeEquiproomItem(10,4,417,1,1)
tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={4,969,1,1,0},nCount=1,},}, "test", 1);
end









function TuiMau()
tbAwardTemplet:GiveAwardByList({{szName="T�i M�u Mi�n Ph�",tbProp={6,1,4352,1,0},nCount=1,nExpiredTime=1500,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={4,963,1,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={4,963,1,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={4,963,1,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={4,963,1,1,0},nCount=1,},}, "test", 1);
end




function doiravan()
	if (GetCash() < 3000000) then
		Talk(1, "", "c�n c� 300v �� ��i ���c 10xu")
		return
	end
tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1,0},nCount=10,},}, "test", 1);
Pay(3000000)
end



function trungsinh()
	if GetLevel() < 200 then
		Talk(1, "", "�i�u ki�n tr�ng sinh l� ph�i c�p 200 + 10K v�n + 1 cu�n b�c ��u tr��ng sinh thu�t c� s� thi�n..haha ng��i ch�a �em theo ��.")
		return
	end
	if (GetCash() < 100000000) then
		Talk(1, "", "�i�u ki�n tr�ng sinh l� ph�i c�p 200 + 10K v�n + 1 cu�n b�c ��u tr��ng sinh thu�t c� s� thi�n..haha ng��i ch�a �em theo ��.")
		return
	end
	local nSilverCount = CalcEquiproomItemCount(6,1,1390,1) ;
	if(nSilverCount < 1) then -- gia xu
		Talk(1, "", "�i�u ki�n tr�ng sinh l� ph�i c�p 200 + 10K v�n + 1 cu�n b�c ��u tr��ng sinh thu�t c� s� thi�n..haha ng��i ch�a �em theo ��.")
                                                        return
                           end
ConsumeEquiproomItem(1,6,1,1390,1)
	Pay(100000000)
	ST_DoTransLife()
end



function test()
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,164},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,165},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,166},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,167},nCount=1,nQuality = 1,},}, "test", 1);
end



function ABHM()
main_task_give()
end


function nguyenlieuABHM()
tbAwardTemplet:GiveAwardByList({{szName="T� th�y tinh",tbProp={4,238,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="L�c th�y tinh",tbProp={4,239,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Lam th�y tinh",tbProp={4,240,1,0,0,0},nCount=10},} ,"test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Huy�n tinh c�p 8",tbProp={6,1,147,8,0,0},nCount=1},} ,"test", 1);
tbAwardTemplet:GiveAwardByList({{szName="C�c hoa th�ch",tbProp={4,963,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="B�ng th�ch k�t tinh",tbProp={4,967,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="B�ng Thi�m T�",tbProp={4,965,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="K� huy�t th�ch",tbProp={4,966,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M� N�o",tbProp={4,964,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M�nh thi�n th�ch",tbProp={4,968,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="�i�n Ho�ng Th�ch",tbProp={4,969,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="T�n S� Kim B�i",tbProp={6,1,888,1,0,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Th�n B� Kho�ng Th�ch",tbProp={6,1,398,1,0,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Th�n B� Kho�ng Th�ch",tbProp={6,1,22,1,0,0},nCount=3},}, "test", 1);
end


function ruatoipk()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 10) then -- gia xu
		Talk(1,"","1 c�i c�n 10xu nh� ��i hi�p h�y chu�n b� �� r�i g�p ta.") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>30<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
ConsumeEquiproomItem(10,4,417,1,1)
SetPK(0);
end

function tukhong()
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,15},nCount=1,nQuality = 1,},}, "test", 1);
end


function mualuoi()
	local a = {
		{
			M = "Mua L��i ��nh c� (3 ti�n ��ng, s� d�ng ���c 25 l�n)",
			P = {
				cc = {
					{CalcEquiproomItemCount, -1, {4,417,1,-1}, 3, "C�c h� kh�ng mang �� ti�n ��ng, l� m�t c�n th� th� ph�i chu to�n m�i th� ch� nh�?"},
					{CountFreeRoomByWH, -1 , {1,1}, 1, "Kho�ng tr�ng trong h�nh trang kh�ng ��, xin h�y s�p x�p l�i h�nh l�!"},
				},
				c = {
					{ConsumeEquiproomItem, {3,4,417,1,-1}},
					{Msg2Player, {"Nh�n ���c 1 l��i ��nh c� t� C�n th� l�o nh�n!"}},
				},
				i = {
					{v = {6,1,4332,1,0,0,0}, n = 1, b = 0, e = 0, p = {25}, ne = "L��i ��nh c�", l = "mis_CauCa"},
				},
			},
		},
	}
	
	return bil.Say(a, "L� m�t C�n th� ch�n ch�nh, y�u t� quan tr�ng nh�t l� T�m ph�i T�nh - Th�n ph�i T�nh.")
end


function giaygoi()
if (GetCash() < 10000) then

		Talk(1,"","1 gi�y g�i hoa c�n 1v.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>10<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
Pay(10000)
tbAwardTemplet:GiveAwardByList({{szName="Gi�y g�i hoa",tbProp={6,1,4320,1,0,0},nCount=1},}, "test", 1);
end


function giodung()
if (GetCash() < 20000) then

		Talk(1,"","1 gi� hoa c�n 2v.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>10<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
Pay(20000)
tbAwardTemplet:GiveAwardByList({{szName="Gi� hoa",tbProp={6,1,4322,1,0,0},nCount=1},}, "test", 1);
end

function giaygoi10()
if (GetCash() < 100000) then

		Talk(1,"","10 gi�y g�i hoa c�n 10v.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>10<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
Pay(100000)
tbAwardTemplet:GiveAwardByList({{szName="Gi�y g�i hoa",tbProp={6,1,4320,1,0,0},nCount=10},}, "test", 1);
end


function giodung10()
if (GetCash() < 200000) then

		Talk(1,"","10 gi� hoa c�n 20v.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>10<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
Pay(200000)
tbAwardTemplet:GiveAwardByList({{szName="Gi� hoa",tbProp={6,1,4322,1,0,0},nCount=10},}, "test", 1);
end


function vaido10()
if (GetCash() < 100000) then

		Talk(1,"","10 T�m V�i �� c�n 10v.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>10<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
Pay(100000)
tbAwardTemplet:GiveAwardByList({{szName="T�m V�i ��",tbProp={6,1,4354,1,0,0},nCount=10},}, "test", 1);
end


function saovang10()
if (GetCash() < 100000) then

		Talk(1,"","10 Sao V�ng c�n 10v.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>10<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
Pay(100000)
tbAwardTemplet:GiveAwardByList({{szName="Sao V�ng",tbProp={6,1,4355,1,0,0},nCount=10},}, "test", 1);
end

function daythung10()
if (GetCash() < 10000) then

		Talk(1,"","10 D�y Th�ng c�n 1v.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>10<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
Pay(10000)
tbAwardTemplet:GiveAwardByList({{szName="D�y Th�ng",tbProp={6,1,4356,1,0,0},nCount=10},}, "test", 1);
end


function cuonchi10()
if (GetCash() < 100000) then

		Talk(1,"","10 Cu�n Kim Ch� 10v.") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>10<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
Pay(100000)
tbAwardTemplet:GiveAwardByList({{szName="Cu�n Kim Ch�",tbProp={6,1,4353,1,0,0},nCount=10},}, "test", 1);
end



function NhapPassReload()
if CalcFreeItemCellCount() < 1 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 1 � tr�ng r�i h�y m�.",0);
		return 1;
end
AskClientForString("checkpassGM2", "", 1, 50, "MK ADMIN");
end

function checkpassGM2(strings)	
	if strings=="adminkhai" then ---------------Ma code open sv opensv
	NhapDuongDanFileCanReLoadVIP()
--tbAwardTemplet:GiveAwardByList({{szName="Kim Phong",tbProp={0,10,2,9,0,0,0},nCount=1, nBindState=-2},}, "test", 1);

		else
		Say("b�n nh�p pass kh�ng ch�nh x�c nh�p sai nhi�u l�n h� th�ng s� t� x�a nh�n v�t v� ch�n ip ngay l�p t�c.",0);

	end
end


function NhapDuongDanFileCanReLoadO(Link)
		local ReloadScript = LoadScript(Link);
		if (FALSE(ReloadScript )) then
			Msg2Player("Xu�t hi�n l�i, kh�ng th� Reload!<enter><color=yellow>"..Link.."");
		else
			Msg2Player("<color=green>Reload th�nh c�ng Script<color><enter><color=blue>"..Link.."");
		end
end

function NhapDuongDanFileCanReLoadVIP()
	return AskClientForString("NhapDuongDanFileCanReLoadO", "", 1, 500, "<#>Nh�p ���ng d�n")
end

function visondao()
NewWorld(342,1178,2412)
AddItem(6,1,2432,1,1,0,0)
end











function nhancap1()
if CalcFreeItemCellCount() < 1 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 1 � tr�ng r�i h�y m�.",0);
		return 1;
end
AskClientForString("checkpassGM", "", 1, 50, "MK ADMIN");
end

function checkpassGM(strings)	
	if strings=="admin113" then -----pass 
	
nhancapdo()
		else
		Say("b�n nh�p pass kh�ng ch�nh x�c nh�p sai nhi�u l�n h� th�ng s� t� x�a nh�n v�t v� ch�n ip ngay l�p t�c.",0);

	end
end






function nhancapdo()
	local szTitle = "<npc> m�i  Admin nh�n c�p �� !!! "
	local tbOpt =
	{
		{"Nh�n c�p 50", capdo},
		{"Nh�n c�p 90", capdo1},
		{"Nh�n c�p 100", capdo2},
		{"Nh�n c�p 120", capdo3},
		{"Nh�n c�p 150", capdo4},
		{"Nh�n c�p 190", capdo5},
		{"Tho�t", no},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function capdo()

local nCurLevel = GetLevel()
local nAddLevel = 50 - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B�n nh�n ���c 50 c�p")
end;

function capdo1()
local nCurLevel = GetLevel()
local nAddLevel = 90 - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B�n nh�n ���c 90 c�p")
end;

function capdo2()
local nCurLevel = GetLevel()
local nAddLevel = 100 - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("nh�n ���c 100 c�p")
end;

function capdo3()
local nCurLevel = GetLevel()
local nAddLevel = 120 - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B�n nh�n ���c 120 c�p")
end;

function capdo4()
local nCurLevel = GetLevel()
local nAddLevel = 150 - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B�n nh�n ���c 150 c�p")
end;

function capdo5()
local nCurLevel = GetLevel()
local nAddLevel = 190 - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B�n nh�n ���c 190 c�p")
end;
-- =_Message},},
--	{{szName="M�nh L�i Khung Phong Tuy�t Thanh C�m ��i (5/6)",tbProp={4,1282,1,1,0,0},nCount=1,nRate=5, CallBack= _Message},},	

--	{{szName="M�nh V� Hoan Thanh �nh Huy�n Ng�c B�i (1/6)",tbProp={4,1284,1,1,0,0},nCount=1,nRate=5, CallBack= _Message},},
--	{{szName="M�nh V� Hoan Thanh �nh Huy�n Ng�c B�i (3/6)",tbProp={4,1286,1,1,0,0},nCount=1,nRate=5, CallBack= _Message},},
--	{{szName="M�nh V� Hoan Thanh �nh Huy�n Ng�c B�i (5/6)",tbProp={4,1288,1,1,0,0},nCount=1,nRate=5, CallBack= _Message},},	

--	{{szName="V� L�m M�t T�ch",tbProp={6,1,26,1,0,0},nCount=1,nRate=10, CallBack= _Message},},
--	{{szName="T�y T�y Kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=5, CallBack= _Message},},
--	{{szName="Nhu T�nh",tbProp={0,190},nCount=1,nRate=1,nQuality = 1, CallBack= _Message},},
--	{{szName="Nhu T�nh",tbProp={0,193},nCount=1,nRate=5,nQuality = 1, CallBack= _Message},},
--	{{szName="��nh Qu�c",tbProp={0,403},nCount=1,nRate=2,nQuality = 1, CallBack= _Message},},
--	{{szName="��nh Qu�c",tbProp={0,404},nCount=1,nRate=3,nQuality = 1, CallBack= _Message},},
--	{{szName="��nh Qu�c",tbProp={0,405},nCount=1,nRate=2,nQuality = 1, CallBack= _Message},},
--	{{szName="��nh Qu�c",tbProp={0,406},nCount=1,nRate=2,nQuality = 1, CallBack= _Message},},
--	{{szName="��nh Qu�c",tbProp={0,407},nCount=1,nRate=2,nQuality = 1, CallBack= _Message},},

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
	--B� ph�n th��ng v�t ph�m khi ti�u di�t boss - Modified by DinhHQ - 20111012
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
	-- �����������Ƶ���
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
	
	-- ��ɱ��BOSS���˻���齱��
	local nTeamSize = GetTeamSize();
	local szName;
	
	if (nTeamSize > 1) then
		for i=1,nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain)==1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSEXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m �� b�i BOSS ho�ng kim"));
		end
	else -- һ����
		szName = GetName();
		PlayerFunLib:AddExp(KILLBOSSEXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m �� b�i BOSS ho�ng kim"));
	end
	
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSNEAREXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m ��ng g�n l�c BOSS ho�ng kim b� ti�u di�t"));
	end
	
	local szNews = format("<pic=77> <color=cyan>%s<color> t�i <color=yellow>%s<color> �� ti�u di�t th�nh c�ng <color=green>%s <pic=48><pic=108>", szName, SubWorldName(SubWorld),GetNpcName(nNpcIndex));
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	
	-- BOSS��ɱͳ��
	local nCount = GetTask(TSK_PLAYER_BOSSKILLED);
	nCount = nCount + 1;
	SetTask(TSK_PLAYER_BOSSKILLED, nCount);
	
	if (GetNpcParam(nNpcIndex, 1) == 1) then --19:30�Ļƽ�BOSS
		-- �ƽ�BOSS����
		RemoteExecute("\\script\\mission\\boss\\bigboss.lua", "ReduceGoldBossCount", 0);
	end
end;

