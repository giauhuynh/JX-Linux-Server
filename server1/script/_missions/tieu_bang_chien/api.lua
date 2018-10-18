Include("\\script\\_missions\\tieu_bang_chien\\inc.lua")

function m_TieuBangChien:api_CheckForbidItem()
	local a = 0
	
	for _i = 1, getn(self.i.Forbid) do
		a = CalcEquiproomItemCount(self.i.Forbid[_i][2][1],self.i.Forbid[_i][2][2],self.i.Forbid[_i][2][3],-1)
		
		if a > 0 then return 1 end
		
		a = CalcItemCount(1,self.i.Forbid[_i][2][1],self.i.Forbid[_i][2][2],self.i.Forbid[_i][2][3],-1)
		
		if a > 0 then return 1 end
	end
	
	return nil
end

function m_TieuBangChien:api_Station(_1)
	local b_N, b_Id = GetTongName()
	
	if _1 and _1 == 1 then
		if SubWorldID2Idx(self.MapId) > 0 then
			local a = SubWorld
			SubWorld = SubWorldID2Idx(self.MapId)
			
			if GetMissionV(self.m.i_State) > 0 then
				SubWorld = a
				return 1
			end
			
			SubWorld = a
		else
			if self.m.StateWithNotMap > 0 then
				return 1
			end
		end
		
		return nil
		
	elseif _1 and _1 == 2 then
		local c = random(1, getn(self.ReviveRegion))
		
		if b_Id > 0 and b_N ~= "" and b_N ~= nil then
			if self.m.StateWithNotMap_Pos.a[b_N] then
				c = self.m.StateWithNotMap_Pos.a[b_N]
			else
				self.m.StateWithNotMap_Pos.c = (self.m.StateWithNotMap_Pos.c + 1)
				self.m.StateWithNotMap_Pos.a[b_N] = self.m.StateWithNotMap_Pos.c
				c = self.m.StateWithNotMap_Pos.c
				
				Msg2Tong(b_Id, GetName().." <color=fire>§· ®¨ng kı Tiªu Bang ChiÕn, bang héi cña b¹n ®­îc chØ ®Şnh ®ång chiÕm lÜnh khu vùc "..c)
			end
		end
		
		if self.Debug then
			print("m_TieuBangChien:api_Station(".._1..") :: local c: "..c)
		end
		
		Msg2Player("<color=green>TiÕn vµo b¶n ®å Tiªu Bang ChiÕn!")
		
		return NewWorld(self.MapId, self.ReviveRegion[c][1], self.ReviveRegion[c][2])
	end

	if self:api_CheckForbidItem() then
		return Say("Khu vùc nµy lµ chiÕn sù c«ng b»ng, mäi ®èi thñ vµ ®ång minh ®Òu kh«ng ®­îc phĞp mang theo bÊt cø vËt phÈm hç trî nµo, c¸c h¹ xin kiÓm tra l¹i hµnh trang, nÕu cã c¸c lo¹i bµo hoµn hoÆc vËt phÈm bæ trî xin h·y lÊy ra!", 0)
	end
	
	if b_Id <= 0 or b_N == "" or b_N == nil then
		return Say("§¹i hiÖp ch­a gia nhËp bang héi, nÕu tham gia b¶n ®å ®¹i hiÖp chØ cã thÓ theo dâi ho¹t ®éng ë chÕ ®é tµng y, kh«ng biÕt ®¹i hiÖp cã muèn tiÕn vµo b¶n ®å?", 2,
			"Cho ta tham gia b¶n ®å, theo dâi ho¹t ®éng/#m_TieuBangChien:api_Station(2)",
			"Th«i, ta bËn l¾m!/OnCancel")
	else
		return Say("Khu vùc nµy lµ vïng chiÕn sù, rÊt cÇn nh÷ng ®¹i anh hïng c¸i thÕ hç trî tiªu xa, kh«ng biÕt ®¹i hiÖp cã muèn tiÕn vµo b¶n ®å?", 2, 
			"TiÕn vµo b¶n ®å Tiªu Bang ChiÕn/#m_TieuBangChien:api_Station(2)",
			"Th«i, ta bËn l¾m!/OnCancel")
	end
end






























