Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\_event\\vulan\\_inc.lua")
IncludeLib("RELAYLADDER");

function Descr()
	-- ®¸nh qu¸i 8x 9x nhËn ®­îc: tói nguyªn liÖu më ra ngÉu nhiªn nhËn ®­îc hoa hång, tói ®­êng, tói bét
	-- hoa hång vµ tói ®­êng sö dông nhËn ®­îc ngÉu nhiªn kinh nghiÖm
		-- - nô hoa hång mua ë Kú tr©n c¸c
		-- - ®¸nh boss xuÊt hiÖn 1 lÇn trong ngµy nhËn ®­îc nhiÒu phÇn th­ëng sù kiÖn vµ vËt phÈm gi¸ trÞ
	-- tham gia c¸c ho¹t ®éng nhËn ®­îc hoa hång, tói ®­êng, tói bét

	-- 4 hoa hång + 1 nô hoa hång + 5000 l­îng = giá hoa hång
	-- 2 hoa hång + 1 nô hoa hång + 1 ghim cµi ¸o = b«ng hång cµi ¸o
	-- 2 tói ®­êng + 4 tói bét + 5000 l­îng = b¸nh chay

	-- 1000 hoa hång + 20 b«ng hång cµi ¸o + 500 b¸nh chay + 100 v¹n = hép lÔ vËt tiÓu
	-- 2000 hoa hång + 50 b«ng hång cµi ¸o + 500 b¸nh chay + 200 v¹n = hép lÔ vËt ®¹i

	-- nô hoa hång 6,1,4261
	-- hoa hång 6,1,4262
	-- tói ®­êng 6,1,4263
	-- tói bét 6,1,4264
	-- tói nguyªn liÖu 6,1,4265
	-- b¸nh chay 6,1,4266
	-- ghim cµi ¸o 6,1,4267
	-- b«ng hång cµi ¸o 6,1,4268
	-- hép lÔ vËt tiÓu 6,1,4269
	-- hép lÔ vËt ®¹i 6,1,4270
	-- giá hoa hång 6,1,4271
	
	

-- IncludeLib("RELAYLADDER");


-- Ladder_NewLadder(10123, GetName(), GetTask(5969), 1); 	-- hoa hång

-- Ladder_NewLadder(10124, GetName(), GetTask(5969), 1);	-- tói ®­êng

-- Ladder_NewLadder(10234, GetName(), GetTask(5967), 1);	-- b¸nh chay

-- Ladder_NewLadder(10125, GetName(), GetTask(5968), 1);	-- giá hoa hång

-- Ladder_NewLadder(10127, GetName(), GetTask(5958), 1);	-- hoa hång cµi ¸o

-- Ladder_NewLadder(10128, GetName(), GetTask(5957), 1)	-- hép lÔ vËt tiÓu

-- Ladder_NewLadder(10126, GetName(), GetTask(5959), 1);	-- hép lÔ vËt ®¹i
end

function main()
	if bilEventIsActive() == nil then 
		Talk(1, "", "<color=yellow>HiÖn t¹i ®· hÕt thêi gian sù kiÖn!")
		return 0
	end
	local bil_1 = "Thªm 1 mïa Vu Lan l¹i vÒ Vâ l©m sÏ më ho¹t ®éng Hoa Vu Lan ®Ó Quý b»ng h÷u kh¸m ph¸ nh÷ng nÐt c¬ b¶n ®Æc s¾c cña ngµy lÔ ý nghÜa, mang ®Ëm tÝnh nh©n v¨n! Thêi gian ho¹t ®éng hÕt hÕt ngµy 31-8."
	local bilTbOp = {}
	tinsert(bilTbOp, "Ta muèn ®æi B¸nh Chay/#bilDoiBanhChay(11111)")
	tinsert(bilTbOp, "Ta muèn ®æi Giá Hoa Hång/#bilDoiGioHoaHong(11111)")
	tinsert(bilTbOp, "Ta muèn ®æi B«ng Hång Cµi ¸o/#bilDoiBongHongCaiAo(11111)")
	tinsert(bilTbOp, "Ta muèn ®æi Hép lÔ vËt TiÓu/#bilDoiHopLeVatTieu(11111)")
	tinsert(bilTbOp, "Ta muèn ®æi Hép lÔ vËt §¹i/#bilDoiHopLeVatDai(11111)")
	tinsert(bilTbOp, "Ta muèn nhËn th­ëng ®¹t mèc sù kiÖn/#bilThuongDatMocEvent(11111)")
	tinsert(bilTbOp, "KÕt thóc ®èi tho¹i/OnCancel")
	return Say(bil_1, getn(bilTbOp), bilTbOp)
end

function bilThuongDatMocEvent(bilSel)
	local bil_1 = {}
	if bilSel == 11111 then
		tinsert(bil_1, "Th­ëng mèc sö dông Hoa Hång!/#bilMocThuongHoaHong(11111)")
		tinsert(bil_1, "Th­ëng mèc sö dông Tói ®­êng!/#bilMocThuongTuiDuong(11111)")
		-- tinsert(bil_1, "Th­ëng mèc sö dông B¸nh Chay!")
		-- tinsert(bil_1, "Th­ëng mèc sö dông Giá Hoa Hång!")
		-- tinsert(bil_1, "Th­ëng mèc sö dông B«ng Hång Cµi ¸o!")
		-- tinsert(bil_1, "Th­ëng mèc sö dông Hép LÔ VËt TiÓu!")
		-- tinsert(bil_1, "Th­ëng mèc sö dông Hép LÔ VËt §¹i!")
		-- tinsert(bil_1, "Th­ëng mèc Tèi ®a tÊt c¶ c¸c vËt phÈm!")
		tinsert(bil_1, "KÕt thóc ®èi tho¹i/OnCancel")
	end	
	return Say("C¸c h¹ ®· ®¹t ®Õn mèc th­ëng cña vËt phÈm nµo råi!", getn(bil_1), bil_1)
end

function bilMocThuongTuiDuong(bilSel)
	if CalcFreeItemCellCount() < 10 then Say("§¹i hiÖp cÇn ®Ó trèng hµnh trang cña m×nh 10 « míi cã thÓ §æi vËt phÈm!") return 1 end
	if bilSel == 11111 then
		return Say("C¸c h¹ xin chän mèc th­ëng cÇn nhËn!", 10,
			"Mèc Tói §­êng 200/#bilMocThuongTuiDuong(1)",
			"Mèc Tói §­êng 700/#bilMocThuongTuiDuong(2)",
			"Mèc Tói §­êng 1200/#bilMocThuongTuiDuong(3)",
			"Mèc Tói §­êng 1700/#bilMocThuongTuiDuong(4)",
			"KÕt thóc ®èi tho¹i/OnCancel"
		)
	elseif bilSel > 0 and bilSel < 5 then
		local bil_1 = {
			{204, "Hång ¶nh ThÈm Viªn UyÓn",200},
			{205, "Hång ¶nh KiÕm Bµi",700},
			{206, "Hång ¶nh Môc Tóc",1200},
			{207, "Hång ¶nh Tô Chiªu",1700},
		}
		if GetTask(5958) < bil_1[bilSel][3] then
			return Talk(1, "", "C¸c h¹ vÉn ch­a ®¹t mèc th­ëng nµy, kh«ng thÓ nhËn, h·y cè g¾n h¬n!")
		end
		if GetTask(5956) >=  bil_1[bilSel][3] then
			return Talk(1, "", "Ch¼ng ph¶i c¸c h¹ ®· nhËn th­ëng råi sao!")
		end
		SetTask(5956, bil_1[bilSel][3])
		local bilItemIndex = AddGoldItem(0, bil_1[bilSel][1])
		local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
		ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
		SyncItem(bilItemIndex);
		AddLocalNews(GetName().." §· ®¹t mèc Tói §­êng "..bil_1[bilSel][3].." nhËn ®­îc "..bil_1[bilSel][2])
	end
end

function bilMocThuongHoaHong(bilSel)
	if CalcFreeItemCellCount() < 10 then Say("§¹i hiÖp cÇn ®Ó trèng hµnh trang cña m×nh 10 « míi cã thÓ §æi vËt phÈm!") return 1 end
	if bilSel == 11111 then
		return Say("C¸c h¹ xin chän mèc th­ëng cÇn nhËn!", 10,
			"Mèc Hoa hång 100/#bilMocThuongHoaHong(1)",
			"Mèc Hoa hång 400/#bilMocThuongHoaHong(2)",
			"Mèc Hoa hång 700/#bilMocThuongHoaHong(3)",
			"Mèc Hoa hång 1000/#bilMocThuongHoaHong(4)",
			"Mèc Hoa hång 1300/#bilMocThuongHoaHong(5)",
			"Mèc Hoa hång 1800/#bilMocThuongHoaHong(6)",
			"Mèc Hoa hång 2100/#bilMocThuongHoaHong(7)",
			"Mèc Hoa hång 2400/#bilMocThuongHoaHong(8)",
			"Mèc Hoa hång 2700/#bilMocThuongHoaHong(9)",
			"KÕt thóc ®èi tho¹i/OnCancel"
		)
	elseif bilSel > 0 and bilSel < 10 then
		local bil_1 = {
			{168, "Thiªn Hoµng Long §µi",100},
			{169, "Thiªn Hoµng Long B¹ch Long Tøc",400},
			{170, "Thiªn Hoµng Long TrÊn Minh Liªn",700},
			{171, "Thiªn Hoµng Long Cöu HiÖn chØ",1000},
			{172, "Thiªn Hoµng Long Ngäc Tiªu Diªu",1300},
			{173, "Thiªn Hoµng Long Hoµng Kim L©n",1800},
			{174, "Thiªn Hoµng Long Bµn Long c«i",2100},
			{175, "Thiªn Hoµng Long Khèc Thiªn Lý",2400},
			{176, "Thiªn Hoµng Long Né Long §ång",2700},
		}
		if GetTask(5959) < bil_1[bilSel][3] then
			return Talk(1, "", "C¸c h¹ vÉn ch­a ®¹t mèc th­ëng nµy, kh«ng thÓ nhËn, h·y cè g¾n h¬n!")
		end
		if GetTask(5957) >=  bil_1[bilSel][3] then
			return Talk(1, "", "Ch¼ng ph¶i c¸c h¹ ®· nhËn th­ëng råi sao!")
		end
		SetTask(5957, bil_1[bilSel][3])
		local bilItemIndex = AddGoldItem(0, bil_1[bilSel][1])
		local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
		ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
		SyncItem(bilItemIndex);
		AddLocalNews(GetName().." §· ®¹t mèc Hoa hång "..bil_1[bilSel][3].." nhËn ®­îc "..bil_1[bilSel][2])
	end
end

function bilDoiHopLeVatDai(bilSel)
	if CalcFreeItemCellCount() < 2 then Say("§¹i hiÖp cÇn ®Ó trèng hµnh trang cña m×nh 2 « míi cã thÓ §æi vËt phÈm!") return 1 end
	if bilSel == 11111 then
		return Talk(1, "bilDoiHopLeVatDai", "<color=yellow>Hép lÔ vËt ®¹i<color> = <color=green>2000 hoa hång + 50 b«ng hång cµi ¸o + 500 b¸nh chay + 200 v¹n!")
	else
		if CalcEquiproomItemCount(6,1,4262,1) >= 2000 then -- hoa hång
			if CalcEquiproomItemCount(6,1,4268,1) >= 50 then -- b«ng hång cµi ¸o
				if CalcEquiproomItemCount(6,1,4266,1) >= 500 then -- b¸nh chay
					if GetCash() >= 2000000 then 
						ConsumeEquiproomItem(2000,6,1,4262,-1)
						ConsumeEquiproomItem(50,6,1,4268,-1)
						ConsumeEquiproomItem(500,6,1,4266,-1)
						Pay(2000000)
						local bilItemIndex = AddItem(6,1,4270,1,0,0,0)  -- hép lÔ vËt ®¹i
						local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
						ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
						SyncItem(bilItemIndex);
						return Talk(1, "","C¸c h¹ ®æi ®­îc <color=yellow>1<color> Hép lÔ vËt §¹i!")
					else
						return Talk(1, "","C¸c h¹ kh«ng ®ñ <color=yellow>200<color> V¹n l­îng!")
					end
				else
					return Talk(1, "","C¸c h¹ kh«ng ®ñ <color=yellow>500<color> B¸nh chay!")
				end
			else
				return Talk(1, "","C¸c h¹ kh«ng ®ñ <color=yellow>50<color> B«ng hång cµi ¸o!")
			end
		else
			return Talk(1, "","C¸c h¹ kh«ng ®ñ <color=yellow>2000<color> Hoa hång!")
		end
	end
end

function bilDoiHopLeVatTieu(bilSel)
	if CalcFreeItemCellCount() < 2 then Say("§¹i hiÖp cÇn ®Ó trèng hµnh trang cña m×nh 2 « míi cã thÓ §æi vËt phÈm!") return 1 end
	if bilSel == 11111 then
		return Talk(1, "bilDoiHopLeVatTieu", "<color=yellow>Hép lÔ vËt tiÓu<color> = <color=green>1000 hoa hång + 20 b«ng hång cµi ¸o + 500 b¸nh chay + 100 v¹n!")
	else
		if CalcEquiproomItemCount(6,1,4262,1) >= 1000 then -- hoa hång
			if CalcEquiproomItemCount(6,1,4268,1) >= 20 then -- b«ng hång cµi ¸o
				if CalcEquiproomItemCount(6,1,4266,1) >= 500 then -- b¸nh chay
					if GetCash() >= 1000000 then 
						ConsumeEquiproomItem(1000,6,1,4262,-1)
						ConsumeEquiproomItem(20,6,1,4268,-1)
						ConsumeEquiproomItem(500,6,1,4266,-1)
						Pay(1000000)
						local bilItemIndex = AddItem(6,1,4269,1,0,0,0)  -- hép lÔ vËt tiÓu
						local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
						ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
						SyncItem(bilItemIndex);
						return Talk(1, "","C¸c h¹ ®æi ®­îc <color=yellow>1<color> Hép lÔ vËt tiÓu!")
					else
						return Talk(1, "","C¸c h¹ kh«ng ®ñ <color=yellow>100<color> V¹n l­îng!")
					end
				else
					return Talk(1, "","C¸c h¹ kh«ng ®ñ <color=yellow>500<color> B¸nh chay!")
				end
			else
				return Talk(1, "","C¸c h¹ kh«ng ®ñ <color=yellow>20<color> B«ng hång cµi ¸o!")
			end
		else
			return Talk(1, "","C¸c h¹ kh«ng ®ñ <color=yellow>1000<color> Hoa hång!")
		end
	end
end

function bilDoiBanhChay(bilSel)
	if CalcFreeItemCellCount() < 2 then Say("§¹i hiÖp cÇn ®Ó trèng hµnh trang cña m×nh 2 « míi cã thÓ §æi vËt phÈm!") return 1 end
	if bilSel == 11111 then
		return Talk(1, "#bilDoiBanhChay(22222)", "<color=yellow>B¸nh Chay<color> = <color=green>2 tói ®­êng + 4 tói bét + 5000 l­îng!")
	elseif bilSel == 22222 then
		return AskClientForNumber("bilDoiBanhChay",0,250,"B¸nh Chay!")
	elseif bilSel > 0 and bilSel < 251 then
		local bil_2 = 0
		for i = 1, bilSel do
			if CalcEquiproomItemCount(6,1,4263,1) >= 2 then -- tói ®­êng
				if CalcEquiproomItemCount(6,1,4264,1) >= 4 then -- tói bét
					if GetCash() >= 5000 then 
						ConsumeEquiproomItem(2,6,1,4263,-1)
						ConsumeEquiproomItem(4,6,1,4264,-1)
						Pay(5000)
						-- local bilItemIndex = AddItem(6,1,4266,1,0,0,0)  -- b¸nh chay
						bil_2 = bil_2 + 1
					else
						if bil_2 > 0 then
							local bilItemIndex = AddStackItem(bil_2,6,1,4266,1,0,0,0)
							local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
							ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
							SyncItem(bilItemIndex);
						end
						return Talk(1, "","TiÒn v¹n ®· hÕt, c¸c h¹ ®æi ®­îc <color=yellow>"..bil_2.."<color> B¸nh Chay!")
					end
				else
					if bil_2 > 0 then
						local bilItemIndex = AddStackItem(bil_2,6,1,4266,1,0,0,0)
						local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
						ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
						SyncItem(bilItemIndex);
					end
					return Talk(1, "","Tói bét ®· hÕt, c¸c h¹ ®æi ®­îc <color=yellow>"..bil_2.."<color> B¸nh Chay!")
				end
			else
				if bil_2 > 0 then
					local bilItemIndex = AddStackItem(bil_2,6,1,4266,1,0,0,0)
					local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
					ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
					SyncItem(bilItemIndex);
				end
				return Talk(1, "","Tói ®­êng ®· hÕt, c¸c h¹ ®æi ®­îc <color=yellow>"..bil_2.."<color> B¸nh Chay!")
			end
		end
		if bil_2 > 0 then
			local bilItemIndex = AddStackItem(bil_2,6,1,4266,1,0,0,0)
			local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
			ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
			SyncItem(bilItemIndex);
		end
		return Talk(1, "","C¸c h¹ ®æi ®­îc <color=yellow>"..bil_2.."<color> B¸nh Chay!")
	end
end

function bilDoiBongHongCaiAo(bilSel)
	if CalcFreeItemCellCount() < 2 then Say("§¹i hiÖp cÇn ®Ó trèng hµnh trang cña m×nh 2 « míi cã thÓ §æi vËt phÈm!") return 1 end
	if bilSel == 11111 then
		return Talk(1, "#bilDoiBongHongCaiAo(22222)", "<color=yellow>B«ng hång cµi ¸o<color> = <color=green>2 hoa hång + 1 nô hoa hång + 1 ghim cµi ¸o!")
	elseif bilSel == 22222 then
		return AskClientForNumber("bilDoiBongHongCaiAo",0,250,"B«ng hång cµi ¸o!")
	elseif bilSel > 0 and bilSel < 251 then
		local bil_2 = 0
		for i = 1, bilSel do
			if CalcEquiproomItemCount(6,1,4262,1) >= 2 then -- hoa hång
				if CalcEquiproomItemCount(6,1,4261,1) >= 1 then -- nô hoa hång
					if CalcEquiproomItemCount(6,1,4267,1) >= 1 then -- ghim cµi ¸o
						ConsumeEquiproomItem(2,6,1,4262,-1)
						ConsumeEquiproomItem(1,6,1,4261,-1)
						ConsumeEquiproomItem(1,6,1,4267,-1)
						-- local bilItemIndex = AddItem(6,1,4268,1,0,0,0)  -- b«ng hång cµi ¸o
						-- local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
						-- ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
						-- SyncItem(bilItemIndex);
						bil_2 = bil_2 + 1
					else
						if bil_2 > 0 then
							local bilItemIndex = AddStackItem(bil_2,6,1,4268,1,0,0,0)
							local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
							ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
							SyncItem(bilItemIndex);
						end
						return Talk(1, "","Ghim cµi ¸o ®· hÕt, c¸c h¹ ®æi ®­îc <color=yellow>"..bil_2.."<color> B«ng hång cµi ¸o!")
					end
				else
					if bil_2 > 0 then
						local bilItemIndex = AddStackItem(bil_2,6,1,4268,1,0,0,0)
						local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
						ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
						SyncItem(bilItemIndex);
					end
					return Talk(1, "","Nô hoa hång ®· hÕt, c¸c h¹ ®æi ®­îc <color=yellow>"..bil_2.."<color> B«ng hång cµi ¸o!")
				end
			else
				if bil_2 > 0 then
					local bilItemIndex = AddStackItem(bil_2,6,1,4268,1,0,0,0)
					local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
					ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
					SyncItem(bilItemIndex);
				end
				return Talk(1, "","Hoa hång ®· hÕt, c¸c h¹ ®æi ®­îc <color=yellow>"..bil_2.."<color> B«ng hång cµi ¸o!")
			end
		end
		if bil_2 > 0 then
			local bilItemIndex = AddStackItem(bil_2,6,1,4268,1,0,0,0)
			local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
			ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
			SyncItem(bilItemIndex);
		end
		return Talk(1, "","C¸c h¹ ®æi ®­îc <color=yellow>"..bil_2.."<color> B«ng hång cµi ¸o!")
	end
end

function bilDoiGioHoaHong(bilSel)
	if CalcFreeItemCellCount() < 2 then Say("§¹i hiÖp cÇn ®Ó trèng hµnh trang cña m×nh 2 « míi cã thÓ §æi vËt phÈm!") return 1 end
	if bilSel == 11111 then
		return Talk(1, "#bilDoiGioHoaHong(22222)", "<color=yellow>Giá Hoa Hång<color> = <color=green>4 hoa hång + 1 nô hoa hång + 5000 l­îng!")
	elseif bilSel == 22222 then
		return AskClientForNumber("bilDoiGioHoaHong",0,250,"Gië Hoa Hång!")
	elseif bilSel > 0 and bilSel < 251 then
		local bil_2 = 0
		for i = 1, bilSel do
			if CalcEquiproomItemCount(6,1,4262,1) >= 4 then
				if CalcEquiproomItemCount(6,1,4261,1) >= 1 then
					if GetCash() >= 5000 then
						ConsumeEquiproomItem(4,6,1,4262,-1)
						ConsumeEquiproomItem(1,6,1,4261,-1)
						Pay(5000)
						-- local bilItemIndex = AddItem(6,1,4271,1,0,0,0)
						-- local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
						-- ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
						-- SyncItem(bilItemIndex);
						bil_2 = bil_2 + 1
					else
						if bil_2 > 0 then
							local bilItemIndex = AddStackItem(bil_2,6,1,4271,1,0,0,0)
							local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
							ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
							SyncItem(bilItemIndex);
						end
						return Talk(1, "","TiÒn v¹n ®· hÕt, c¸c h¹ ®æi ®­îc <color=yellow>"..bil_2.."<color> Giá Hoa Hång!")
					end
				else
					if bil_2 > 0 then
						local bilItemIndex = AddStackItem(bil_2,6,1,4271,1,0,0,0)
						local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
						ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
						SyncItem(bilItemIndex);
					end
					return Talk(1, "","Nô hoa hång ®· hÕt, c¸c h¹ ®æi ®­îc <color=yellow>"..bil_2.."<color> Giá Hoa Hång!")
				end
			else
				if bil_2 > 0 then
					local bilItemIndex = AddStackItem(bil_2,6,1,4271,1,0,0,0)
					local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
					ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
					SyncItem(bilItemIndex);
				end
				return Talk(1, "","Hoa hång ®· hÕt, c¸c h¹ ®æi ®­îc <color=yellow>"..bil_2.."<color> Giá Hoa Hång!")
			end
		end
		if bil_2 > 0 then
			local bilItemIndex = AddStackItem(bil_2,6,1,4271,1,0,0,0)
			local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
			ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
			SyncItem(bilItemIndex);
		end
		return Talk(1, "","C¸c h¹ ®æi ®­îc <color=yellow>"..bil_2.."<color> Giá Hoa Hång!")
	end
end

function OnCancel() return end













