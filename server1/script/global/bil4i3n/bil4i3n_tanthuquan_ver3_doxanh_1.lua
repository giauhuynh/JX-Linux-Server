IncludeLib("ITEM")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

Include("\\script\\global\\bil4i3n\\bil4i3n_droprate.lua")

bilV3_TTQ_DoXanh = {
	bil_Img = "<link=image:\\spr\\skill\\christmas\\star2.spr><link><color>",
	bil_Cancel = {"K’t thÛc ÆËi thoπi!", bil.OnCancel},
	bil_Aw = {
		[20] = {
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
		--	{bil_Pr_1 = {0, 184}, bil_Pr_2 = {0, 0}},
		},
		[30] = {
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			--{bil_Pr_1 = {0, 179}, bil_Pr_2 = {0, 0}},
		},
		[40] = {
		--	{bil_Pr_1 = {0, 178}, bil_Pr_2 = {0, 0}},
		--	{bil_Pr_1 = {0, 177}, bil_Pr_2 = {0, 0}},

			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
		},
		[50] = {
		--	{bil_Pr_1 = {0, 183}, bil_Pr_2 = {0, 0}},
		--	{bil_Pr_1 = {0, 180}, bil_Pr_2 = {0, 0}},

			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
		},
		[60] = {
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			--{bil_Pr_1 = {0, 182}, bil_Pr_2 = {0, 0}},
			--{bil_Pr_1 = {0, 181}, bil_Pr_2 = {0, 0}},

		},
		[70] = {
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			--{bil_Pr_1 = {0, 185}, bil_Pr_2 = {0, 0}},
		},
		[80] = {
			{bil_Pr_1 = {7, 
				{6, 1, 71, 1, 0, 0, 0},
				{6, 1, 71, 1, 0, 0, 0},
				--{6, 1, 2424, 1, 0, 0, 0},
				--{0,10,2,9,0,0,0},
				--{6, 1, 2963, 1, 0, 0, 0},
				--{6, 1, 2964, 1, 0, 0, 0},
				--{6, 1, 2965, 1, 0, 0, 0},
				--{6, 1, 2966, 1, 0, 0, 0},
				--{6, 1, 2967, 1, 0, 0, 0},
				{6, 1, 71, 1, 0, 0, 0},
			}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6, 1, 2424, 1, 0, 0, 0}, bil_Pr_2 = {0, 0}},
			{bil_Pr_1 = {6, 1, 2426, 1, 0, 0, 0}, bil_Pr_2 = {0, 0}},
			--{bil_Pr_1 = {0,10,2,9,0,0,0}, bil_Pr_2 = {0, 0}},

		},
		[90] = {
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
		},
		[100] = {
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
		},
		[110] = {
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},

		},
		[120] = {
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,1125, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
		},
		[130] = {
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
		},
		[140] = {
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
		},
		[180] = {
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
			{bil_Pr_1 = {6,1,71, 1, 0, 0, 0}, bil_Pr_2 = {-2, 0}},
		},
	},
}

function bilV3_TTQ_DoXanh:Main_Npc()
	if GetTask(5905) == 3 then
		bilNvTanThu:NextTask()
	end
	local bil_1, bil_2 = {}, GetTask(5999)
	-- for bil_l_1 = 20, 200, 10 do
	for bil_l_1 = 20, 120, 10 do
		if bil_2 < bil_l_1 and getn(bil_1) < 15 then
			tinsert(bil_1, {"NhÀn th≠Îng Æπt Æºng c p "..bil_l_1..".", self.GetAward, {self, bil_l_1}})
		end
	end
	tinsert(bil_1, self.bil_Cancel)
	if getn(bil_1) < 2 then
		return CreateNewSayEx(self.bil_Img.."<enter><enter><enter><enter><bclr=red>Hi÷n tπi kh´ng cﬂn ph«n th≠Îng nµo cho Æπi hi÷p trong mÙc nµy!<bclr>", bil_1)
	else
		return CreateNewSayEx(self.bil_Img.."Vﬁ thi’u hi÷p xin h∑y ch‰n ph«n th≠Îng mµ m◊nh Æ∑ Æπt Æ≠Óc!", bil_1)
	end
end

function bilV3_TTQ_DoXanh:GetAward(bil_In_1)
	if(bil_In_1 >= 120 and GetLastFactionNumber() == -1) then
		return Talk(1, "", "Bπn ph∂i gia nhÀp m´n ph∏i mÌi c„ th” nh©n ph«n th≠Îng nµy")
	end

	local bil_1, bil_2, bil_3 = GetTask(5999), nil, nil
	if bil.True(self.bil_Aw[bil_In_1]) then
		bil_2 = self.bil_Aw[bil_In_1]
	else
		bil_2 = self.bil_Aw[140]
	end
	if bil_1 == 0 then bil_1 = 10 end
	if bil_1 < bil_In_1 - 10 then
		return CreateNewSayEx(self.bil_Img.."Vﬁ thi’u hi÷p ch≠a nhÀn ph«n th≠Îng c p "..(bil_In_1-10)..", y™u c«u ph∂i nhÀn th≠Îng theo tr◊nh t˘!", {self.bil_Cancel})
	elseif bil_1 >= bil_In_1 then
		return CreateNewSayEx(self.bil_Img.."Vﬁ thi’u hi÷p Æ∑ nhÀn ph«n th≠Îng Æπt c p "..(bil_In_1).." rÂi!", {self.bil_Cancel})
	elseif GetLevel() < bil_In_1 then
		return CreateNewSayEx(self.bil_Img.."Vﬁ thi’u hi÷p v…n ch≠a Æπt c p "..(bil_In_1)..", kh´ng th” nhÀn ph«n th≠Îng nµy!", {self.bil_Cancel})
	elseif CountFreeRoomByWH(2,9) < 1 then
		return CreateNewSayEx(self.bil_Img.."Vﬁ thi’u hi÷p vui lﬂng Æ” trËng hµnh trang ›t nh t 18 ´ (2x9) Æ” nhÀn ph«n th≠Îng Æπt c p "..bil_In_1, {self.bil_Cancel})
	end
	for bil_l_1 = 1, getn(bil_2) do
		if bil_2[bil_l_1].bil_Pr_1[1] == 7 then
			if GetLastFactionNumber() == -1 then
				return CreateNewSayEx(self.bil_Img.."Vﬁ thi’u hi÷p ch≠a gia nhÀp m´n ph∏i nµo n™n kh´ng th” nhÀn ph«n th≠Îng c p "..bil_In_1, {self.bil_Cancel})
			else
				bil_3 = AddItem(unpack(bil_2[bil_l_1].bil_Pr_1[GetLastFactionNumber() + 2]))
			end
		elseif bil_2[bil_l_1].bil_Pr_1[1] == 0 then
			bil_3 = AddGoldItem(bil_2[bil_l_1].bil_Pr_1[1], bil_2[bil_l_1].bil_Pr_1[2])
		elseif bil_2[bil_l_1].bil_Pr_1[1] == 2 then
			bil_3 = AddItem(bil_2[bil_l_1].bil_Pr_1[2],bil_2[bil_l_1].bil_Pr_1[3],bil_2[bil_l_1].bil_Pr_1[4],bil_2[bil_l_1].bil_Pr_1[5],bil_2[bil_l_1].bil_Pr_1[6],bil_2[bil_l_1].bil_Pr_1[7],bil_2[bil_l_1].bil_Pr_1[8])
		else
			bil_3 = AddItem(unpack(bil_2[bil_l_1].bil_Pr_1))
		end
		if bil_2[bil_l_1].bil_Pr_2[2] ~= 0 then
			ITEM_SetExpiredTime(bil_3, FormatTime2Date(bil_2[bil_l_1].bil_Pr_2[2] * 24 * 60 *60 + GetCurServerTime()))
			SyncItem(bil_3)
		end
		if bil_2[bil_l_1].bil_Pr_2[1] ~= 0 then
			SetItemBindState(bil_3, bil_2[bil_l_1].bil_Pr_2[1])
		end
	end
	SetTask(5999, bil_In_1)
	
	if(bil_In_1 < 120) then
		return Msg2Player(bil.C(10, "NhÀn ph«n th≠Îng Æπt c p "..bil_In_1.." thµnh c´ng!"))
	else
		return bilV3_TTQ_DoXanh_HoangKimTuChon_tat(0)
	end
end

function bilFunc_CallMain_TTQ_v3DoXanh()
	return bilV3_TTQ_DoXanh:Main_Npc()
end

function bilV3_TTQ_DoXanh_HoangKimTuChon(_in_sel, _in_item)
	if(GetLastFactionNumber() == -1) then
		return Talk(1, "", "Bπn ph∂i gia nhÀp m´n ph∏i mÌi c„ th” nh©n ph«n th≠Îng nµy")
	end
	
	local fac_num = GetLastFactionNumber()
	local fac_table = {}
	
	if (_in_sel and _in_item) then
		local bilItIdx = AddGoldItem(0, _in_item)
		local nExpiredDate = FormatTime2Date(7 * 24 * 60 *60 + GetCurServerTime());
		ITEM_SetExpiredTime(bilItIdx, nExpiredDate);
		SyncItem(bilItIdx);
		
		return Msg2Player(bil.C(10, "NhÀn ph«n th≠Îng Æπt c p 120 thµnh c´ng!"))
	end
	
	if(_in_sel and _in_sel ~= 0) then
		for iSel = 2, getn(_bilTbAtlasCompound[fac_num][_in_sel]) do
			tinsert(fac_table, _bilTbAtlasCompound[fac_num][_in_sel][iSel].bilAtlasName[1].."/#bilV3_TTQ_DoXanh_HoangKimTuChon(".._in_sel..", ".._bilTbAtlasCompound[fac_num][_in_sel][iSel].bilAtlasName[3]..")")
		end
		
		return Say("xin ch‰n vÀt ph»m mµ c∏c hπ muËn nhÀn", getn(fac_table), fac_table)
	end
	
	for index = 1, getn(_bilTbAtlasCompound[fac_num]) do
		tinsert(fac_table, _bilTbAtlasCompound[fac_num][index][1].bilEquipName.."/#bilV3_TTQ_DoXanh_HoangKimTuChon("..index..")")
	end
	
	return Say("xin ch‰n vÀt ph»m mµ c∏c hπ muËn nhÀn", getn(fac_table), fac_table)
end




























