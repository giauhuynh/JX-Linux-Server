IncludeLib("BATTLE")
Include("\\script\\_event\\init.lua")

function _EVENT:Activity_VA(_1, _2)
	--	_1: §· v­ît xong ¶i nµy
	-- _2: 2::Cao cÊp - 1::S¬ cÊp
	
	if not(self.a["VA"]) or getn(self.a["VA"]) <= 0 then
		return
	end
	
	local a = self:NowDay()
	
	for _i = 1, getn(self.a["VA"]) do
		if self.a["VA"][_i][1] and a >= self.a["VA"][_i][1][1] and a <= self.a["VA"][_i][1][2] then
			if self.a["VA"][_i][3] and getn(self.a["VA"][_i][3]) > 0 then
				for _i2 = 1, getn(self.a["VA"][_i][3]) do
					if _1 == self.a["VA"][_i][3][_i2][1] then
						AddStackItem(self.a["VA"][_i][3][_i2][2],self.a["VA"][_i][2][1],self.a["VA"][_i][2][2],self.a["VA"][_i][2][3],1,0,0,0)
						
						Msg2Player("<color=fire>§Õn ¶i thø ".._1.." ®· nhËn ®­îc "..self.a["VA"][_i][3][_i2][2].." vËt phÈm sù kiÖn!")
					end
				end
			end
		end
	end
end

function _EVENT:Activity_BST()
	if not(self.a["BST"]) or getn(self.a["BST"]) <= 0 then
		return
	end
	
	local a = self:NowDay()
	
	for _i = 1, getn(self.a["BST"]) do
		if self.a["BST"][_i][1] and a >= self.a["BST"][_i][1][1] and a <= self.a["BST"][_i][1][2] then
			if self.a["BST"][_i][3] and self.a["BST"][_i][3][1] > 0 then

				AddStackItem(self.a["BST"][_i][3][1],self.a["BST"][_i][2][1],self.a["BST"][_i][2][2],self.a["BST"][_i][2][3],1,0,0,0)
				
				Msg2Player("<color=fire>H¹ ®­îc Boss S¸t thñ, nhËn ®­îc "..self.a["BST"][_i][3][1].." vËt phÈm sù kiÖn!")

			end
		end
	end
end

function _EVENT:Activity_NBP()
	if not(self.a["NBP"]) or getn(self.a["NBP"]) <= 0 then
		return
	end
	
	local a = self:NowDay()
	
	for _i = 1, getn(self.a["NBP"]) do
		if self.a["NBP"][_i][1] and a >= self.a["NBP"][_i][1][1] and a <= self.a["NBP"][_i][1][2] then
			if self.a["NBP"][_i][3] and self.a["NBP"][_i][3][1] > 0 then

				AddStackItem(self.a["NBP"][_i][3][1],self.a["NBP"][_i][2][1],self.a["NBP"][_i][2][2],self.a["NBP"][_i][2][3],1,0,0,0)
				
				Msg2Player("<color=fire>H¹ ®­îc NhÝm bÐo ph×, nhËn ®­îc "..self.a["NBP"][_i][3][1].." vËt phÈm sù kiÖn!")

			end
		end
	end
end

function _EVENT:Activity_PLD()
	if not(self.a["PLD"]) or getn(self.a["PLD"]) <= 0 then
		return
	end
	
	local a = self:NowDay()
	
	for _i = 1, getn(self.a["PLD"]) do
		if self.a["PLD"][_i][1] and a >= self.a["PLD"][_i][1][1] and a <= self.a["PLD"][_i][1][2] then
			if self.a["PLD"][_i][3] and self.a["PLD"][_i][3][1] > 0 then

				AddStackItem(self.a["PLD"][_i][3][1],self.a["PLD"][_i][2][1],self.a["PLD"][_i][2][2],self.a["PLD"][_i][2][3],1,0,0,0)
				
				Msg2Player("<color=fire>H¹ ®­îc Boss Phong l¨ng ®é, nhËn ®­îc "..self.a["PLD"][_i][3][1].." vËt phÈm sù kiÖn!")

			end
		end
	end
end

function _EVENT:Activity_TK(nBattleLevel, tbPlayerAll, tbPlayerWin, tbPlayerLos, nWinLos)
	if not(self.a["TK"]) or getn(self.a["TK"]) <= 0 then
		return
	end
	
	local a_n, a_p = 0, 0
	local b = self:NowDay()
	local c = getn(self.a["TK"])
	
	for _i = 1, getn(tbPlayerWin) do
		for _i2 = 1, c do
			a_n, a_p = 0, 0
			
			if self.a["TK"][_i2] and self.a["TK"][_i2][1] and b >= self.a["TK"][_i2][1][1] and b <= self.a["TK"][_i2][1][2] then
				if nBattleLevel and self.a["TK"][_i2][3] and self.a["TK"][_i2][3][nBattleLevel] == 1 then
					if self.a["TK"][_i2][4] and self.a["TK"][_i2][4][1] == 1 then
						if self.a["TK"][_i2][5] and getn(self.a["TK"][_i2][5]) > 0 then
							a_p = CallPlayerFunction(tbPlayerWin[_i], BT_GetData, 1)
							
							for _i3 = 1, getn(self.a["TK"][_i2][5]) do
								if a_p >= self.a["TK"][_i2][5][_i3][1] then
									a_n = self.a["TK"][_i2][5][_i3][2]
								end
							end
							
							CallPlayerFunction(tbPlayerWin[_i], AddStackItem, a_n,self.a["TK"][_i2][2][1],self.a["TK"][_i2][2][2],self.a["TK"][_i2][2][3],1,0,0,0)
							CallPlayerFunction(tbPlayerWin[_i], Msg2Player, "<color=fire>§¹t chØ tiªu Tèng kim, nhËn ®­îc "..a_n.." vËt phÈm sù kiÖn!")
						end
					end
				end
			end
		end
	end
	
	for _i = 1, getn(tbPlayerLos) do
		for _i2 = 1, c do
			a_n, a_p = 0, 0
			
			if self.a["TK"][_i2] and self.a["TK"][_i2][1] and b >= self.a["TK"][_i2][1][1] and b <= self.a["TK"][_i2][1][2] then
				if nBattleLevel and self.a["TK"][_i2][3] and self.a["TK"][_i2][3][nBattleLevel] == 1 then
					if self.a["TK"][_i2][4] and self.a["TK"][_i2][4][2] == 1 then
						if self.a["TK"][_i2][5] and getn(self.a["TK"][_i2][5]) > 0 then
							a_p = CallPlayerFunction(tbPlayerLos[_i], BT_GetData, 1)
							
							for _i3 = 1, getn(self.a["TK"][_i2][5]) do
								if a_p >= self.a["TK"][_i2][5][_i3][1] then
									a_n = self.a["TK"][_i2][5][_i3][2]
								end
							end
							
							CallPlayerFunction(tbPlayerLos[_i], AddStackItem, a_n,self.a["TK"][_i2][2][1],self.a["TK"][_i2][2][2],self.a["TK"][_i2][2][3],1,0,0,0)
							CallPlayerFunction(tbPlayerLos[_i], Msg2Player, "<color=fire>§¹t chØ tiªu Tèng kim, nhËn ®­îc "..a_n.." vËt phÈm sù kiÖn!")
						end
					end
				end
			end
		end
	end
end

function _EVENT:Activity_BTHK()
	if not(self.a["BTHK"]) or getn(self.a["BTHK"]) <= 0 then
		return
	end
	
	local a = self:NowDay()
	
	for _i = 1, getn(self.a["BTHK"]) do
		if self.a["BTHK"][_i][1] and a >= self.a["BTHK"][_i][1][1] and a <= self.a["BTHK"][_i][1][2] then
			if self.a["BTHK"][_i][3] and self.a["BTHK"][_i][3][1] > 0 then

				AddStackItem(self.a["BTHK"][_i][3][1],self.a["BTHK"][_i][2][1],self.a["BTHK"][_i][2][2],self.a["BTHK"][_i][2][3],1,0,0,0)
				
				Msg2Player("<color=fire>H¹ ®­îc Boss TiÓu hoµng kim, nhËn ®­îc "..self.a["BTHK"][_i][3][1].." vËt phÈm sù kiÖn!")

			end
		end
	end
end































