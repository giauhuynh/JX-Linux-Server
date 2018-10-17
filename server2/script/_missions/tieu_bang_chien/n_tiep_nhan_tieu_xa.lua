Include("\\script\\_missions\\tieu_bang_chien\\inc.lua")

function m_TieuBangChien:n_TiepNhanTieuXa(_1, _2)
	local a = GetLastDiagNpc()
	local b = GetNpcParam(a, self.t.NpcPosID)
	local c_N, c_Id = GetTongName()
	
	if c_N == nil or c_N == "" or c_Id <= 0 or not(self._MEMORY.Tong[c_N]) then
		return Talk(1, "", "Xin chµo ng­êi ®i ®­êng!")
	end
	
	if self.Debug then
		Msg2Player("Npc Param "..self.t.NpcPosID..": "..b)
	end

	if _1 and _1 == 1 then
		if not(self.PosTieuXa[b]) and self.Debug then
			return Msg2Player("not( self.PosTieuXa[b] )")
		end
		
		if self._MEMORY.Tong[c_N].nDoing and self._MEMORY.Tong[c_N].nDoing > 0 then
			return Talk(1, "", "Bang héi cña ®¹i hiÖp ®ang hé tèng Tiªu xa, sao ngµi cßn ë ®©y?")
		elseif not(self._MEMORY.Tong[c_N].nDoing) then
			self._MEMORY.Tong[c_N].nDoing = 0
		end
		
		if self._MEMORY.Tong[c_N].nComplete and self._MEMORY.Tong[c_N].nComplete >= self.m.CountComplete then
			return Talk(1, "", "Bang héi cña ®¹i hiÖp ®ît nµy ®· hé tèng thµnh c«ng "..self.m.CountComplete.." Tiªu xa råi, xin h·y ®îi ®ît ho¹t ®éng kÕ tiÕp!")
		elseif not(self._MEMORY.Tong[c_N].nComplete) then
			self._MEMORY.Tong[c_N].nComplete = 0
		end
		
		if not(self._MEMORY.Tong[c_N].Pos_TX) then
			self._MEMORY.Tong[c_N].Pos_TX = {0,0}
		end
		
		if not(self._MEMORY.Tong[c_N].Receiver) then
			self._MEMORY.Tong[c_N].Receiver = {Index = 0, Name = "", GiveAward = 0}
		elseif self._MEMORY.Tong[c_N].Receiver.GiveAward > 0 then
			return Say("Nh©n vËt: "..self._MEMORY.Tong[c_N].Receiver.Name.." cña quý bang hiÖn t¹i ch­a nhËn l¹i phÝ b¶o hiÓm tiªu xa nªn kh«ng thÓ tiÕp nhËn tiªu xa míi!", 0)
		end
		
		if GetTongFigure() > 1 then
			return Talk(1, "", "§Ó tiÕp nhËn tiªu xa yªu cÇu ph¶i lµ Bang chñ hoÆc Tr­ëng l·o míi ®­îc phÐp!")
		end
		
		if self.Fee.Td_DangKy and self.Fee.Td_DangKy > 0 then
			if CalcEquiproomItemCount(4,417,1,-1) < self.Fee.Td_DangKy then
				return Talk(1, "", "PhÝ b¶o hiÓm tiªu xa lµ "..self.Fee.Td_DangKy.." TiÒn ®ång, <color=green>sau khi ¸p tiªu thµnh c«ng, "..self.Fee.Td_DangKy.." TiÒn ®ång sÏ ®­îc tr¶ l¹i cho ng­êi ®¨ng ký tiªu xa<color>. B¹n kh«ng cã ®ñ "..self.Fee.Td_DangKy.." tiÒn ®ång trong ng­êi!")
			end
			
			ConsumeEquiproomItem(self.Fee.Td_DangKy,4,417,1,-1)
		end
		
		self._MEMORY.Tong[c_N].Receiver = {Index = PlayerIndex, Name = GetName(), GiveAward = 0}
		
		local c = AddNpcEx(self.Npc.TieuXa.m, 1, random(0,4), SubWorldID2Idx(self.MapId), self.PosTieuXa[b][1][1], self.PosTieuXa[b][1][2], 1, "Tiªu Xa Bang "..c_N, 0)
		
		SetNpcParam(c, self.t.NpcPosID, b)
		SetNpcParam(c, self.t.TieuXa_TongID, self._MEMORY.Tong[c_N].nIdCamp)
		SetNpcAI(c, 0)
		SetNpcCurCamp(c, GetTongCamp())
		SetNpcActiveRegion(c, 1)
		SetNpcScript(c, "\\script\\_missions\\tieu_bang_chien\\n_tieu_xa.lua")
		SetNpcTimer(c, 18)
		
		self._MEMORY.Tong[c_N].nDoing = 1
		
		Msg2MSAll(self.m.ID, "<color=0x00FFFF>Tiªu xa khu vùc "..b.." ®ang tiÕn vµo b¶n ®å, toµn thÓ huynh ®Ö h·y ra søc b¶o tiªu!")
		Msg2Tong(c_Id, GetName().." <color=fire>§· tiÕp nhËn tiªu xa, thêi gian khëi hµnh trong "..self.Time.TieuXa_Preparing.." gi©y n÷a, toµn thÓ c¸c huynh ®Ö chuÈn bÞ hé tèng Tiªu xa!")
		
		return
	
	elseif _1 and _1 == 2 then
		if GetTongFigure() > 1 then
			return Talk(1, "", "ChØ cã Bang chñ hoÆc Tr­ëng l·o cña bang héi míi cã thÓ sö dông chøc n¨ng nµy!")
		end
		
		if self._MEMORY.Tong[c_N].mMask and self._MEMORY.Tong[c_N].mMask > 0 then
			return Talk(1, "", "Quý bang ®· ®¨ng ký ngo¹i h×nh bang héi råi, nÕu muèn ®¨ng ký míi, quý bang ph¶i hñy ngo¹i h×nh cò ®i!")
		end
	
		if _2 and _2 > 0 then
			if self._MEMORY.Mask[_2] or self._MEMORY.Mask[_2] ~= nil then
				return Talk(1, "", "TiÕc qu¸, quý bang ®· chËm ch©n, ngo¹i h×nh nµy võa míi ®­îc bang kh¸c ®¨ng ký xong!")
			end
			
			self._MEMORY.Tong[c_N].mMask = _2
			self._MEMORY.Mask[_2] = self._MEMORY.Tong[c_N].nIdCamp
			
			local d_Old = PlayerIndex
			local d_W, d_X, d_Y = nil, nil, nil
			
			for _k, _v in self._MEMORY.Tong[c_N].aPlayer do
				PlayerIndex = _v
				d_W, d_X, d_Y = GetWorldPos()
				
				if d_W == self.MapId then
					ChangeOwnFeature( 1, ((GetMissionV(self.m.i_PreparingTime) + self.m.TimeOpenMission)*60*18), self.Npc.Mask[_2][1],  0, 0, 0, 0)
				end
			end
			
			PlayerIndex = d_Old
			return Msg2Tong(c_Id, GetName().." <color=fire>§· ®¨ng ký thµnh c«ng ngo¹i h×nh bang héi: "..self.Npc.Mask[_2][2])
		end
	
		local d = {}
		
		for _i = 1, getn(self.Npc.Mask) do
			if not(self._MEMORY.Mask[_i]) or self._MEMORY.Mask[_i] == nil then
				tinsert(d, "§¨ng ký "..self.Npc.Mask[_i][2].."/#m_TieuBangChien:n_TiepNhanTieuXa(2, ".._i..")")
			end
		end
		
		tinsert(d, "HiÖn t¹i ch­a muèn ®¨ng ký/OnCancel")
		
		if getn(d) > 0 then
			return Say("Khi ®¨ng ký ngo¹i h×nh qu©n ®éi th× tÊt c¶ c¸c thµnh viªn cña bang héi khi tham gia b¶n ®å ®Òu sÏ ®­îc hãa trang thµnh ngo¹i h×nh bang chñ ®· chän, kh«ng biÕt ®¹i hiÖp muèn chän ngo¹i h×nh nµo?", getn(d), d)
		else
			return Talk(1,"", "TiÕc qu¸, hiÖn t¹i tÊt c¶ c¸c ngo¹i h×nh qu©n ®éi ®· ®­îc ®¨ng ký hÕt!")
		end
		
		return
		
	elseif _1 and _1 == 3 then
		if not(self._MEMORY.Tong[c_N].mMask) or self._MEMORY.Tong[c_N].mMask <= 0 then
			return Talk(1, "", "Quý bang ch­a ®¨ng ký ngo¹i h×nh cho qu©n ®éi bang, kh«ng thÓ thùc hiÖn thao t¸c nµy!")
		end
		
		if GetTongFigure() > 1 then
			return Talk(1, "", "ChØ cã Bang chñ hoÆc Tr­ëng l·o cña bang héi míi cã thÓ sö dông chøc n¨ng nµy!")
		end
		
		if _2 and _2 > 0 then
			self._MEMORY.Mask[self._MEMORY.Tong[c_N].mMask] = nil
			self._MEMORY.Tong[c_N].mMask = nil
			
			local d_Old = PlayerIndex
			
			for _k, _v in self._MEMORY.Tong[c_N].aPlayer do
				PlayerIndex = _v
				RestoreOwnFeature()
			end
			
			PlayerIndex = d_Old
			return Msg2Tong(c_Id, GetName().." <color=fire>§· hñy ®¨ng ký ngo¹i h×nh qu©n ®éi cho bæn bang, c¸c thµnh viªn trong b¶n ®å sÏ trë vÒ h×nh d¹ng ban ®Çu!")
		end
		
		return Say("Khi tiÕn hµnh hñy ngo¹i h×nh, tÊt c¶ c¸c thµnh viªn hiÖn cã mÆt trong b¶n ®å ho¹t ®éng sÏ ®­îc kh«i phôc ngo¹i h×nh ban ®Çu, kh«ng biÕt quý bang cã muèn thùc hiÖn thao t¸c nµy?", 2, "TiÕn hµnh phôc håi ngo¹i h×nh ban ®Çu/#m_TieuBangChien:n_TiepNhanTieuXa(3, 1)", "Th«i kh«ng cÇn!/OnCancel")
	
	elseif _1 and _1 == 4 then
		if _2 and _2 > 0 then
			local e = 0
			
			for _i = 1, _2 do
				if CountFreeRoomByWH(1,1) > 0 and GetCash() > 200 then
					Pay(200)
					AddItem(1, 2, 0, 5, 0, 0, 0)
					
					e = e + 1
				else
					break
				end
			end
			
			return Msg2Player("<color=orange>Mua ®­îc "..e.." b×nh Ngò hoa ngäc lé hoµn!")
		end
		
		return AskClientForNumber("m_TieuBangChien_iClientDuocPham",0,60,"1 Ngò hoa = 200 l­îng")
		
	elseif _1 and _1 == 5 then
		local g = ((self._MEMORY.Player.v[self._MEMORY.Player.k[GetName()]].d_t + 10) - GetGameTime())
		
		if self.Debug then
			print("m_TieuBangChien:n_TiepNhanTieuXa(5) :: d_t: "..self._MEMORY.Player.v[self._MEMORY.Player.k[GetName()]].d_t.." :: GetGameTime(): "..GetGameTime().." :: g: "..g)
		end
	
		if g > 0 then
			return Talk(1, "", "Cßn "..g.." gi©y n÷a míi cã thÓ sö dông c«ng n¨ng nµy!")
		end
	
		if self._MEMORY.Tong[c_N].nDoing and self._MEMORY.Tong[c_N].nDoing > 0 and self._MEMORY.Tong[c_N].Pos_TX then
			SetFightState(1)
			return SetPos((self._MEMORY.Tong[c_N].Pos_TX[1]/32), (self._MEMORY.Tong[c_N].Pos_TX[2]/32))
		else
			return Talk(1, "", "Tiªu xa cña quý bang kh«ng thÓ truyÒn tèng, cã lÏ tiªu xa ®· x¶y ra bÊt tr¾c!")
		end
		
		return
		
	elseif _1 and _1 == 6 then
		self._MEMORY.Tong[c_N].Receiver.GiveAward = 0
		self._MEMORY.Tong[c_N].Receiver.Name = ""
		self._MEMORY.Tong[c_N].Receiver.Index = 0
		
		AddStackItem(self.Fee.Td_DangKy,4,417,1,1,0,0,0)
		
		AddOwnExp(self.m.AwardExp_RECEIVER)
		
		return Msg2Tong(c_Id, GetName().." <color=fire>§· nhËn l¹i phÝ b¶o hiÓm Tiªu xa vµ "..self.m.AwardExp_RECEIVER.." ®iÓm kinh nghiÖm!")
		
	elseif _1 and _1 == 7 then
		local nSubWorldId, nX, nY = RevID2WXY(GetPlayerRev())
		return NewWorld(nSubWorldId, nX/32, nY/32)
	end
	
	local f = {}
	
	tinsert(f, "Mua d­îc phÈm/#m_TieuBangChien:n_TiepNhanTieuXa(4)")
	
	if self._MEMORY.Tong[c_N].nDoing and self._MEMORY.Tong[c_N].nDoing > 0 and self._MEMORY.Tong[c_N].Pos_TX then
		tinsert(f, "Di chuyÓn ®Õn vÞ trÝ cña tiªu xa bang héi/#m_TieuBangChien:n_TiepNhanTieuXa(5)")
	end
	
	if self._MEMORY.Tong[c_N].Receiver and self._MEMORY.Tong[c_N].Receiver.GiveAward > 0 and GetName() == self._MEMORY.Tong[c_N].Receiver.Name then
		tinsert(f, "Ta ®Õn nhËn l¹i phÝ b¶o hiÓm tiªu xa vµ phÇn th­ëng!/#m_TieuBangChien:n_TiepNhanTieuXa(6)")
	end
	
	if GetMissionV(self.m.i_State) > 0 then
		tinsert(f, "§¨ng ký hé tèng Tiªu Xa"..((self.Fee.Td_DangKy and self.Fee.Td_DangKy <= 0) and " (MiÔn phÝ)" or "").."/#m_TieuBangChien:n_TiepNhanTieuXa(1)")
	else
		tinsert(f, "Rêi khái b¶n ®å!/#m_TieuBangChien:n_TiepNhanTieuXa(7)")
	end
	
	tinsert(f, "§¨ng ký ngo¹i h×nh qu©n ®éi bæn bang (MiÔn phÝ)/#m_TieuBangChien:n_TiepNhanTieuXa(2)")
	tinsert(f, "Hñy ®¨ng ký ngo¹i h×nh qu©n ®éi/#m_TieuBangChien:n_TiepNhanTieuXa(3)")
	tinsert(f, "KÕt thóc ®èi tho¹i/OnCancel")

	Say("TiÕp nhËn tiªu xa NPC", getn(f), f)
end

function m_TieuBangChien_iClientDuocPham(_BuyCount)
	return m_TieuBangChien:n_TiepNhanTieuXa(4, _BuyCount)
end

function main()
	return m_TieuBangChien:n_TiepNhanTieuXa()
end




























