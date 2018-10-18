Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\_event\\vulan\\_inc.lua")
IncludeLib("RELAYLADDER");

function Descr()
	-- ��nh qu�i 8x 9x nh�n ���c: t�i nguy�n li�u m� ra ng�u nhi�n nh�n ���c hoa h�ng, t�i ���ng, t�i b�t
	-- hoa h�ng v� t�i ���ng s� d�ng nh�n ���c ng�u nhi�n kinh nghi�m
		-- - n� hoa h�ng mua � K� tr�n c�c
		-- - ��nh boss xu�t hi�n 1 l�n trong ng�y nh�n ���c nhi�u ph�n th��ng s� ki�n v� v�t ph�m gi� tr�
	-- tham gia c�c ho�t ��ng nh�n ���c hoa h�ng, t�i ���ng, t�i b�t

	-- 4 hoa h�ng + 1 n� hoa h�ng + 5000 l��ng = gi� hoa h�ng
	-- 2 hoa h�ng + 1 n� hoa h�ng + 1 ghim c�i �o = b�ng h�ng c�i �o
	-- 2 t�i ���ng + 4 t�i b�t + 5000 l��ng = b�nh chay

	-- 1000 hoa h�ng + 20 b�ng h�ng c�i �o + 500 b�nh chay + 100 v�n = h�p l� v�t ti�u
	-- 2000 hoa h�ng + 50 b�ng h�ng c�i �o + 500 b�nh chay + 200 v�n = h�p l� v�t ��i

	-- n� hoa h�ng 6,1,4261
	-- hoa h�ng 6,1,4262
	-- t�i ���ng 6,1,4263
	-- t�i b�t 6,1,4264
	-- t�i nguy�n li�u 6,1,4265
	-- b�nh chay 6,1,4266
	-- ghim c�i �o 6,1,4267
	-- b�ng h�ng c�i �o 6,1,4268
	-- h�p l� v�t ti�u 6,1,4269
	-- h�p l� v�t ��i 6,1,4270
	-- gi� hoa h�ng 6,1,4271
	
	

-- IncludeLib("RELAYLADDER");


-- Ladder_NewLadder(10123, GetName(), GetTask(5969), 1); 	-- hoa h�ng

-- Ladder_NewLadder(10124, GetName(), GetTask(5969), 1);	-- t�i ���ng

-- Ladder_NewLadder(10234, GetName(), GetTask(5967), 1);	-- b�nh chay

-- Ladder_NewLadder(10125, GetName(), GetTask(5968), 1);	-- gi� hoa h�ng

-- Ladder_NewLadder(10127, GetName(), GetTask(5958), 1);	-- hoa h�ng c�i �o

-- Ladder_NewLadder(10128, GetName(), GetTask(5957), 1)	-- h�p l� v�t ti�u

-- Ladder_NewLadder(10126, GetName(), GetTask(5959), 1);	-- h�p l� v�t ��i
end

function main()
	if bilEventIsActive() == nil then 
		Talk(1, "", "<color=yellow>Hi�n t�i �� h�t th�i gian s� ki�n!")
		return 0
	end
	local bil_1 = "Th�m 1 m�a Vu Lan l�i v� V� l�m s� m� ho�t ��ng Hoa Vu Lan �� Qu� b�ng h�u kh�m ph� nh�ng n�t c� b�n ��c s�c c�a ng�y l� � ngh�a, mang ��m t�nh nh�n v�n! Th�i gian ho�t ��ng h�t h�t ng�y 31-8."
	local bilTbOp = {}
	tinsert(bilTbOp, "Ta mu�n ��i B�nh Chay/#bilDoiBanhChay(11111)")
	tinsert(bilTbOp, "Ta mu�n ��i Gi� Hoa H�ng/#bilDoiGioHoaHong(11111)")
	tinsert(bilTbOp, "Ta mu�n ��i B�ng H�ng C�i �o/#bilDoiBongHongCaiAo(11111)")
	tinsert(bilTbOp, "Ta mu�n ��i H�p l� v�t Ti�u/#bilDoiHopLeVatTieu(11111)")
	tinsert(bilTbOp, "Ta mu�n ��i H�p l� v�t ��i/#bilDoiHopLeVatDai(11111)")
	tinsert(bilTbOp, "Ta mu�n nh�n th��ng ��t m�c s� ki�n/#bilThuongDatMocEvent(11111)")
	tinsert(bilTbOp, "K�t th�c ��i tho�i/OnCancel")
	return Say(bil_1, getn(bilTbOp), bilTbOp)
end

function bilThuongDatMocEvent(bilSel)
	local bil_1 = {}
	if bilSel == 11111 then
		tinsert(bil_1, "Th��ng m�c s� d�ng Hoa H�ng!/#bilMocThuongHoaHong(11111)")
		tinsert(bil_1, "Th��ng m�c s� d�ng T�i ���ng!/#bilMocThuongTuiDuong(11111)")
		-- tinsert(bil_1, "Th��ng m�c s� d�ng B�nh Chay!")
		-- tinsert(bil_1, "Th��ng m�c s� d�ng Gi� Hoa H�ng!")
		-- tinsert(bil_1, "Th��ng m�c s� d�ng B�ng H�ng C�i �o!")
		-- tinsert(bil_1, "Th��ng m�c s� d�ng H�p L� V�t Ti�u!")
		-- tinsert(bil_1, "Th��ng m�c s� d�ng H�p L� V�t ��i!")
		-- tinsert(bil_1, "Th��ng m�c T�i �a t�t c� c�c v�t ph�m!")
		tinsert(bil_1, "K�t th�c ��i tho�i/OnCancel")
	end	
	return Say("C�c h� �� ��t ��n m�c th��ng c�a v�t ph�m n�o r�i!", getn(bil_1), bil_1)
end

function bilMocThuongTuiDuong(bilSel)
	if CalcFreeItemCellCount() < 10 then Say("��i hi�p c�n �� tr�ng h�nh trang c�a m�nh 10 � m�i c� th� ��i v�t ph�m!") return 1 end
	if bilSel == 11111 then
		return Say("C�c h� xin ch�n m�c th��ng c�n nh�n!", 10,
			"M�c T�i ���ng 200/#bilMocThuongTuiDuong(1)",
			"M�c T�i ���ng 700/#bilMocThuongTuiDuong(2)",
			"M�c T�i ���ng 1200/#bilMocThuongTuiDuong(3)",
			"M�c T�i ���ng 1700/#bilMocThuongTuiDuong(4)",
			"K�t th�c ��i tho�i/OnCancel"
		)
	elseif bilSel > 0 and bilSel < 5 then
		local bil_1 = {
			{204, "H�ng �nh Th�m Vi�n Uy�n",200},
			{205, "H�ng �nh Ki�m B�i",700},
			{206, "H�ng �nh M�c T�c",1200},
			{207, "H�ng �nh T� Chi�u",1700},
		}
		if GetTask(5958) < bil_1[bilSel][3] then
			return Talk(1, "", "C�c h� v�n ch�a ��t m�c th��ng n�y, kh�ng th� nh�n, h�y c� g�n h�n!")
		end
		if GetTask(5956) >=  bil_1[bilSel][3] then
			return Talk(1, "", "Ch�ng ph�i c�c h� �� nh�n th��ng r�i sao!")
		end
		SetTask(5956, bil_1[bilSel][3])
		local bilItemIndex = AddGoldItem(0, bil_1[bilSel][1])
		local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
		ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
		SyncItem(bilItemIndex);
		AddLocalNews(GetName().." �� ��t m�c T�i ���ng "..bil_1[bilSel][3].." nh�n ���c "..bil_1[bilSel][2])
	end
end

function bilMocThuongHoaHong(bilSel)
	if CalcFreeItemCellCount() < 10 then Say("��i hi�p c�n �� tr�ng h�nh trang c�a m�nh 10 � m�i c� th� ��i v�t ph�m!") return 1 end
	if bilSel == 11111 then
		return Say("C�c h� xin ch�n m�c th��ng c�n nh�n!", 10,
			"M�c Hoa h�ng 100/#bilMocThuongHoaHong(1)",
			"M�c Hoa h�ng 400/#bilMocThuongHoaHong(2)",
			"M�c Hoa h�ng 700/#bilMocThuongHoaHong(3)",
			"M�c Hoa h�ng 1000/#bilMocThuongHoaHong(4)",
			"M�c Hoa h�ng 1300/#bilMocThuongHoaHong(5)",
			"M�c Hoa h�ng 1800/#bilMocThuongHoaHong(6)",
			"M�c Hoa h�ng 2100/#bilMocThuongHoaHong(7)",
			"M�c Hoa h�ng 2400/#bilMocThuongHoaHong(8)",
			"M�c Hoa h�ng 2700/#bilMocThuongHoaHong(9)",
			"K�t th�c ��i tho�i/OnCancel"
		)
	elseif bilSel > 0 and bilSel < 10 then
		local bil_1 = {
			{168, "Thi�n Ho�ng Long ��i",100},
			{169, "Thi�n Ho�ng Long B�ch Long T�c",400},
			{170, "Thi�n Ho�ng Long Tr�n Minh Li�n",700},
			{171, "Thi�n Ho�ng Long C�u Hi�n ch�",1000},
			{172, "Thi�n Ho�ng Long Ng�c Ti�u Di�u",1300},
			{173, "Thi�n Ho�ng Long Ho�ng Kim L�n",1800},
			{174, "Thi�n Ho�ng Long B�n Long c�i",2100},
			{175, "Thi�n Ho�ng Long Kh�c Thi�n L�",2400},
			{176, "Thi�n Ho�ng Long N� Long ��ng",2700},
		}
		if GetTask(5959) < bil_1[bilSel][3] then
			return Talk(1, "", "C�c h� v�n ch�a ��t m�c th��ng n�y, kh�ng th� nh�n, h�y c� g�n h�n!")
		end
		if GetTask(5957) >=  bil_1[bilSel][3] then
			return Talk(1, "", "Ch�ng ph�i c�c h� �� nh�n th��ng r�i sao!")
		end
		SetTask(5957, bil_1[bilSel][3])
		local bilItemIndex = AddGoldItem(0, bil_1[bilSel][1])
		local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
		ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
		SyncItem(bilItemIndex);
		AddLocalNews(GetName().." �� ��t m�c Hoa h�ng "..bil_1[bilSel][3].." nh�n ���c "..bil_1[bilSel][2])
	end
end

function bilDoiHopLeVatDai(bilSel)
	if CalcFreeItemCellCount() < 2 then Say("��i hi�p c�n �� tr�ng h�nh trang c�a m�nh 2 � m�i c� th� ��i v�t ph�m!") return 1 end
	if bilSel == 11111 then
		return Talk(1, "bilDoiHopLeVatDai", "<color=yellow>H�p l� v�t ��i<color> = <color=green>2000 hoa h�ng + 50 b�ng h�ng c�i �o + 500 b�nh chay + 200 v�n!")
	else
		if CalcEquiproomItemCount(6,1,4262,1) >= 2000 then -- hoa h�ng
			if CalcEquiproomItemCount(6,1,4268,1) >= 50 then -- b�ng h�ng c�i �o
				if CalcEquiproomItemCount(6,1,4266,1) >= 500 then -- b�nh chay
					if GetCash() >= 2000000 then 
						ConsumeEquiproomItem(2000,6,1,4262,-1)
						ConsumeEquiproomItem(50,6,1,4268,-1)
						ConsumeEquiproomItem(500,6,1,4266,-1)
						Pay(2000000)
						local bilItemIndex = AddItem(6,1,4270,1,0,0,0)  -- h�p l� v�t ��i
						local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
						ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
						SyncItem(bilItemIndex);
						return Talk(1, "","C�c h� ��i ���c <color=yellow>1<color> H�p l� v�t ��i!")
					else
						return Talk(1, "","C�c h� kh�ng �� <color=yellow>200<color> V�n l��ng!")
					end
				else
					return Talk(1, "","C�c h� kh�ng �� <color=yellow>500<color> B�nh chay!")
				end
			else
				return Talk(1, "","C�c h� kh�ng �� <color=yellow>50<color> B�ng h�ng c�i �o!")
			end
		else
			return Talk(1, "","C�c h� kh�ng �� <color=yellow>2000<color> Hoa h�ng!")
		end
	end
end

function bilDoiHopLeVatTieu(bilSel)
	if CalcFreeItemCellCount() < 2 then Say("��i hi�p c�n �� tr�ng h�nh trang c�a m�nh 2 � m�i c� th� ��i v�t ph�m!") return 1 end
	if bilSel == 11111 then
		return Talk(1, "bilDoiHopLeVatTieu", "<color=yellow>H�p l� v�t ti�u<color> = <color=green>1000 hoa h�ng + 20 b�ng h�ng c�i �o + 500 b�nh chay + 100 v�n!")
	else
		if CalcEquiproomItemCount(6,1,4262,1) >= 1000 then -- hoa h�ng
			if CalcEquiproomItemCount(6,1,4268,1) >= 20 then -- b�ng h�ng c�i �o
				if CalcEquiproomItemCount(6,1,4266,1) >= 500 then -- b�nh chay
					if GetCash() >= 1000000 then 
						ConsumeEquiproomItem(1000,6,1,4262,-1)
						ConsumeEquiproomItem(20,6,1,4268,-1)
						ConsumeEquiproomItem(500,6,1,4266,-1)
						Pay(1000000)
						local bilItemIndex = AddItem(6,1,4269,1,0,0,0)  -- h�p l� v�t ti�u
						local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
						ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
						SyncItem(bilItemIndex);
						return Talk(1, "","C�c h� ��i ���c <color=yellow>1<color> H�p l� v�t ti�u!")
					else
						return Talk(1, "","C�c h� kh�ng �� <color=yellow>100<color> V�n l��ng!")
					end
				else
					return Talk(1, "","C�c h� kh�ng �� <color=yellow>500<color> B�nh chay!")
				end
			else
				return Talk(1, "","C�c h� kh�ng �� <color=yellow>20<color> B�ng h�ng c�i �o!")
			end
		else
			return Talk(1, "","C�c h� kh�ng �� <color=yellow>1000<color> Hoa h�ng!")
		end
	end
end

function bilDoiBanhChay(bilSel)
	if CalcFreeItemCellCount() < 2 then Say("��i hi�p c�n �� tr�ng h�nh trang c�a m�nh 2 � m�i c� th� ��i v�t ph�m!") return 1 end
	if bilSel == 11111 then
		return Talk(1, "#bilDoiBanhChay(22222)", "<color=yellow>B�nh Chay<color> = <color=green>2 t�i ���ng + 4 t�i b�t + 5000 l��ng!")
	elseif bilSel == 22222 then
		return AskClientForNumber("bilDoiBanhChay",0,250,"B�nh Chay!")
	elseif bilSel > 0 and bilSel < 251 then
		local bil_2 = 0
		for i = 1, bilSel do
			if CalcEquiproomItemCount(6,1,4263,1) >= 2 then -- t�i ���ng
				if CalcEquiproomItemCount(6,1,4264,1) >= 4 then -- t�i b�t
					if GetCash() >= 5000 then 
						ConsumeEquiproomItem(2,6,1,4263,-1)
						ConsumeEquiproomItem(4,6,1,4264,-1)
						Pay(5000)
						-- local bilItemIndex = AddItem(6,1,4266,1,0,0,0)  -- b�nh chay
						bil_2 = bil_2 + 1
					else
						if bil_2 > 0 then
							local bilItemIndex = AddStackItem(bil_2,6,1,4266,1,0,0,0)
							local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
							ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
							SyncItem(bilItemIndex);
						end
						return Talk(1, "","Ti�n v�n �� h�t, c�c h� ��i ���c <color=yellow>"..bil_2.."<color> B�nh Chay!")
					end
				else
					if bil_2 > 0 then
						local bilItemIndex = AddStackItem(bil_2,6,1,4266,1,0,0,0)
						local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
						ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
						SyncItem(bilItemIndex);
					end
					return Talk(1, "","T�i b�t �� h�t, c�c h� ��i ���c <color=yellow>"..bil_2.."<color> B�nh Chay!")
				end
			else
				if bil_2 > 0 then
					local bilItemIndex = AddStackItem(bil_2,6,1,4266,1,0,0,0)
					local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
					ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
					SyncItem(bilItemIndex);
				end
				return Talk(1, "","T�i ���ng �� h�t, c�c h� ��i ���c <color=yellow>"..bil_2.."<color> B�nh Chay!")
			end
		end
		if bil_2 > 0 then
			local bilItemIndex = AddStackItem(bil_2,6,1,4266,1,0,0,0)
			local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
			ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
			SyncItem(bilItemIndex);
		end
		return Talk(1, "","C�c h� ��i ���c <color=yellow>"..bil_2.."<color> B�nh Chay!")
	end
end

function bilDoiBongHongCaiAo(bilSel)
	if CalcFreeItemCellCount() < 2 then Say("��i hi�p c�n �� tr�ng h�nh trang c�a m�nh 2 � m�i c� th� ��i v�t ph�m!") return 1 end
	if bilSel == 11111 then
		return Talk(1, "#bilDoiBongHongCaiAo(22222)", "<color=yellow>B�ng h�ng c�i �o<color> = <color=green>2 hoa h�ng + 1 n� hoa h�ng + 1 ghim c�i �o!")
	elseif bilSel == 22222 then
		return AskClientForNumber("bilDoiBongHongCaiAo",0,250,"B�ng h�ng c�i �o!")
	elseif bilSel > 0 and bilSel < 251 then
		local bil_2 = 0
		for i = 1, bilSel do
			if CalcEquiproomItemCount(6,1,4262,1) >= 2 then -- hoa h�ng
				if CalcEquiproomItemCount(6,1,4261,1) >= 1 then -- n� hoa h�ng
					if CalcEquiproomItemCount(6,1,4267,1) >= 1 then -- ghim c�i �o
						ConsumeEquiproomItem(2,6,1,4262,-1)
						ConsumeEquiproomItem(1,6,1,4261,-1)
						ConsumeEquiproomItem(1,6,1,4267,-1)
						-- local bilItemIndex = AddItem(6,1,4268,1,0,0,0)  -- b�ng h�ng c�i �o
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
						return Talk(1, "","Ghim c�i �o �� h�t, c�c h� ��i ���c <color=yellow>"..bil_2.."<color> B�ng h�ng c�i �o!")
					end
				else
					if bil_2 > 0 then
						local bilItemIndex = AddStackItem(bil_2,6,1,4268,1,0,0,0)
						local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
						ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
						SyncItem(bilItemIndex);
					end
					return Talk(1, "","N� hoa h�ng �� h�t, c�c h� ��i ���c <color=yellow>"..bil_2.."<color> B�ng h�ng c�i �o!")
				end
			else
				if bil_2 > 0 then
					local bilItemIndex = AddStackItem(bil_2,6,1,4268,1,0,0,0)
					local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
					ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
					SyncItem(bilItemIndex);
				end
				return Talk(1, "","Hoa h�ng �� h�t, c�c h� ��i ���c <color=yellow>"..bil_2.."<color> B�ng h�ng c�i �o!")
			end
		end
		if bil_2 > 0 then
			local bilItemIndex = AddStackItem(bil_2,6,1,4268,1,0,0,0)
			local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
			ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
			SyncItem(bilItemIndex);
		end
		return Talk(1, "","C�c h� ��i ���c <color=yellow>"..bil_2.."<color> B�ng h�ng c�i �o!")
	end
end

function bilDoiGioHoaHong(bilSel)
	if CalcFreeItemCellCount() < 2 then Say("��i hi�p c�n �� tr�ng h�nh trang c�a m�nh 2 � m�i c� th� ��i v�t ph�m!") return 1 end
	if bilSel == 11111 then
		return Talk(1, "#bilDoiGioHoaHong(22222)", "<color=yellow>Gi� Hoa H�ng<color> = <color=green>4 hoa h�ng + 1 n� hoa h�ng + 5000 l��ng!")
	elseif bilSel == 22222 then
		return AskClientForNumber("bilDoiGioHoaHong",0,250,"Gi� Hoa H�ng!")
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
						return Talk(1, "","Ti�n v�n �� h�t, c�c h� ��i ���c <color=yellow>"..bil_2.."<color> Gi� Hoa H�ng!")
					end
				else
					if bil_2 > 0 then
						local bilItemIndex = AddStackItem(bil_2,6,1,4271,1,0,0,0)
						local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
						ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
						SyncItem(bilItemIndex);
					end
					return Talk(1, "","N� hoa h�ng �� h�t, c�c h� ��i ���c <color=yellow>"..bil_2.."<color> Gi� Hoa H�ng!")
				end
			else
				if bil_2 > 0 then
					local bilItemIndex = AddStackItem(bil_2,6,1,4271,1,0,0,0)
					local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
					ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
					SyncItem(bilItemIndex);
				end
				return Talk(1, "","Hoa h�ng �� h�t, c�c h� ��i ���c <color=yellow>"..bil_2.."<color> Gi� Hoa H�ng!")
			end
		end
		if bil_2 > 0 then
			local bilItemIndex = AddStackItem(bil_2,6,1,4271,1,0,0,0)
			local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
			ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
			SyncItem(bilItemIndex);
		end
		return Talk(1, "","C�c h� ��i ���c <color=yellow>"..bil_2.."<color> Gi� Hoa H�ng!")
	end
end

function OnCancel() return end













