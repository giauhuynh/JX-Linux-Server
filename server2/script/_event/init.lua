
_EVENT = {}
_EVENT.i = {}	-- item
_EVENT.n = {}	-- npc
_EVENT.m = {}	-- mes
_EVENT.iDrop = {}	-- drop
_EVENT.a = {}	--	activity
_EVENT.p = {}	-- payment
_EVENT.g = {}	-- global
_EVENT.j = {}	-- join to item
_EVENT.mis = {}	-- missions
_EVENT.l = "script/_event/logs/event_id_%d__%s__%s.log"	-- logs

function _EVENT:NowDay()
	return tonumber(GetLocalDate("%y%m%d"))
end

function _EVENT:NowDayStart()
	return tonumber(date("%y%m%d"))
end

function _EVENT:IsExpired(Sel, _1, _2)
	if Sel == 1 then
		if not(self.n[_1]) or not(self.n[_1][_2]) then
			return 1
		end
		
		if self:NowDay() >= self.n[_1][_2][1][4][1] and self:NowDay() <= self.n[_1][_2][1][4][2] then
			return nil
		end
		
		return 1
	end
end

function _EVENT:Add(_1)
	local a = self:NowDayStart()
	local b, c, d, d_2 = 0, 0, 0, 0
	
	if _1.mis and getn(_1.mis) > 0 then
		for _i8 = 1, getn(_1.mis) do
			_1.mis[_i8].StartEnd[1] = (_1.mis[_i8].StartEnd[1]) or _1.s
			_1.mis[_i8].StartEnd[2] = (_1.mis[_i8].StartEnd[2]) or _1.e
			_1.mis[_i8].eID = (_1.mis[_i8].eID) or _1.eID
			
			if (_1.mis[_i8].StartAnyTime == 1) or (a < _1.mis[_i8].StartEnd[1] and a < _1.mis[_i8].StartEnd[2]) or (a >= _1.mis[_i8].StartEnd[1] and a <= _1.mis[_i8].StartEnd[2]) then
				if not(self.mis[_1.mis[_i8].StartHourMin[1]]) then
					self.mis[_1.mis[_i8].StartHourMin[1]] = {}
				end
				
				tinsert(self.mis[_1.mis[_i8].StartHourMin[1]], _1.mis[_i8])
				
				d_2 = 1
			end
		end
	end
	
	if _1.j and getn(_1.j) > 0 then
		for _i7 = 1, getn(_1.j) do
			if a >= (_1.j[_i7][2][1] or _1.s) and a <= (_1.j[_i7][2][2] or _1.e) then
				_1.j[_i7][2][1] = (_1.j[_i7][2][1] and _1.j[_i7][2][1] or _1.s)
				_1.j[_i7][2][2] = (_1.j[_i7][2][2] and _1.j[_i7][2][2] or _1.e)
				
				if _1.j[_i7][1][1] == nil or _1.j[_i7][1][1] == 0 then
					_1.j[_i7][1][1] = _1.eID
				end
				
				if not(self.j[_1.j[_i7][1][1]]) then
					self.j[_1.j[_i7][1][1]] = {}
				end
				
				if not(self.j[_1.j[_i7][1][1]][_1.j[_i7][1][2]]) then
					self.j[_1.j[_i7][1][1]][_1.j[_i7][1][2]] = {}
				end
				
				tinsert(self.j[_1.j[_i7][1][1]][_1.j[_i7][1][2]], _1.j[_i7])
			end
		end
	end
	
	if _1.p and getn(_1.p) > 0 then
		for _i6 = 1, getn(_1.p) do
			if a >= (_1.p[_i6][2][1][1] or _1.s) and a <= (_1.p[_i6][2][1][2] or _1.e) then
				_1.p[_i6][2][1][1] = (_1.p[_i6][2][1][1] and _1.p[_i6][2][1][1] or _1.s)
				_1.p[_i6][2][1][2] = (_1.p[_i6][2][1][2] and _1.p[_i6][2][1][2] or _1.e)
				d = 1
				
				if _1.p[_i6][1][1] == nil or _1.p[_i6][1][1] == 0 then
					_1.p[_i6][1][1] = _1.eID
				end

				if not(self.p[_1.p[_i6][1][1]]) then
					self.p[_1.p[_i6][1][1]] = {}
				end

				if not(self.p[_1.p[_i6][1][1]][_1.p[_i6][1][2]]) then
					self.p[_1.p[_i6][1][1]][_1.p[_i6][1][2]] = {}
				end
				
				tinsert(self.p[_1.p[_i6][1][1]][_1.p[_i6][1][2]], _1.p[_i6])
			end
		end
	end
	
	if _1.iDrop then
		for _i3 = 1, getn(_1.iDrop) do
			if a >= (_1.iDrop[_i3][1][1] or _1.s) and a <= (_1.iDrop[_i3][1][2] or _1.e) then
				b = 0; d = 1
			
				for _i4 = 1, getn(_1.iDrop[_i3][2]) do
					if not(self.iDrop["\\settings\\droprate\\npcdroprate".._1.iDrop[_i3][2][_i4]..".ini"]) then
						self.iDrop["\\settings\\droprate\\npcdroprate".._1.iDrop[_i3][2][_i4]..".ini"] = {
							NormalNpc = {Count = 0, Item = {}},
							BlueNpc = {Count = 0, Item = {}}
						}
					end
					
					if _1.iDrop[_i3][4] and _1.iDrop[_i3][4][2] > 0 then
						tinsert(self.iDrop["\\settings\\droprate\\npcdroprate".._1.iDrop[_i3][2][_i4]..".ini"].NormalNpc.Item, 
							{
								Expired = {(_1.iDrop[_i3][1][1] and _1.iDrop[_i3][1][1] or _1.s), (_1.iDrop[_i3][1][2] and _1.iDrop[_i3][1][2] or _1.e)},
								ItemList = _1.iDrop[_i3][4],
							})
					end
					
					if _1.iDrop[_i3][3] and _1.iDrop[_i3][3] > 0 then
						tinsert(self.iDrop["\\settings\\droprate\\npcdroprate".._1.iDrop[_i3][2][_i4]..".ini"].BlueNpc.Item, 
							{
								Expired = {(_1.iDrop[_i3][1][1] and _1.iDrop[_i3][1][1] or _1.s), (_1.iDrop[_i3][1][2] and _1.iDrop[_i3][1][2] or _1.e)},
								ItemList = _1.iDrop[_i3][4],
								ItemCount = _1.iDrop[_i3][3],
							})
					end

					self.iDrop["\\settings\\droprate\\npcdroprate".._1.iDrop[_i3][2][_i4]..".ini"].NormalNpc.Count = getn(self.iDrop["\\settings\\droprate\\npcdroprate".._1.iDrop[_i3][2][_i4]..".ini"].NormalNpc.Item)
					self.iDrop["\\settings\\droprate\\npcdroprate".._1.iDrop[_i3][2][_i4]..".ini"].BlueNpc.Count = getn(self.iDrop["\\settings\\droprate\\npcdroprate".._1.iDrop[_i3][2][_i4]..".ini"].BlueNpc.Item)
					
					if _1.iDrop[_i3][2][_i4] == 90 then
						b = 1
					end
					
				end
				
				if b == 1 then
					if not(self.iDrop["\\settings\\droprate\\npcdroprate90_pld.ini"]) then
						self.iDrop["\\settings\\droprate\\npcdroprate90_pld.ini"] = {}
					end
					
					self.iDrop["\\settings\\droprate\\npcdroprate90_pld.ini"] = self.iDrop["\\settings\\droprate\\npcdroprate90.ini"]
				end
				
				c = 1
			end
		end
		
		if _1.s > a and c ==1 then
			tinsert(self.m, {_1.m.." ITEM DROP", a, _1.e})
		end
	end
	
	if _1.i then
		for _i = 1, getn(_1.i) do
			if (_1.i[_i][4] == 1) or (a >= (_1.i[_i][2][1] or _1.s) and a <= (_1.i[_i][2][2] or _1.e)) then
				d = 1
				_1.i[_i][2][1] = not(_1.i[_i][2][1]) and _1.s or _1.i[_i][2][1]
				_1.i[_i][2][2] = not(_1.i[_i][2][2]) and _1.e or _1.i[_i][2][2]
				_1.i[_i][2][3] = _1.eID
				self.i[_1.i[_i][1]] = _1.i[_i]
			end
		end
	end
	
	if _1.a and getn(_1.a) > 0 then
		for _i5 = 1, getn(_1.a) do
			if a >= (_1.a[_i5][2][1][1] or _1.s) and a <= (_1.a[_i5][2][1][2] or _1.e) then
				d = 1
				
				if not(self.a[_1.a[_i5][1]]) then
					self.a[_1.a[_i5][1]] = {}
				end

				_1.a[_i5][2][1][1] = (_1.a[_i5][2][1][1] and _1.a[_i5][2][1][1] or _1.s)
				_1.a[_i5][2][1][2] = (_1.a[_i5][2][1][2] and _1.a[_i5][2][1][2] or _1.e)
				tinsert(self.a[_1.a[_i5][1]], _1.a[_i5][2])
				
				if a < _1.s then
					tinsert(self.m, {_1.m.." AWARD ACTIVITY: ".._1.a[_i5][1], _1.a[_i5][2][1][1], (_1.a[_i5][2][1][2] and _1.a[_i5][2][1][2] or _1.e)})
				end
			end
		end
	end
	
	if (d == 1 or d_2 == 1) and _1.m_n then
		if not(self.g[_1.eID]) then
			self.g[_1.eID] = {}
		end

		self.g[_1.eID]["m_n"] = _1.m_n
		self.g[_1.eID]["f"] = _1.f
		self.g[_1.eID]["m"] = _1.m
	end
	
	if _1.n then
		for _i2 = 1, getn(_1.n) do
			if (a >= ((_1.n[_i2][4] and _1.n[_i2][4][1]) and _1.n[_i2][4][1] or _1.s)) and (a <= ((_1.n[_i2][4] and _1.n[_i2][4][2]) and _1.n[_i2][4][2] or _1.e)) then
			
			_1.n[_i2][4] = {((_1.n[_i2][4] and _1.n[_i2][4][1]) and _1.n[_i2][4][1] or _1.s), ((_1.n[_i2][4] and _1.n[_i2][4][2]) and _1.n[_i2][4][2] or _1.e)}
			
			_1.n[_i2][1][1] = ((_1.n[_i2][1][1] == 0) or (_1.n[_i2][1][1] == nil)) and _1.eID or _1.n[_i2][1][1]
			
			if not(self.n[_1.n[_i2][1][1]]) then
				self.n[_1.n[_i2][1][1]] = {}
			end
			
			if not(self.n[_1.n[_i2][1][1]][_1.n[_i2][1][2]]) then
				self.n[_1.n[_i2][1][1]][_1.n[_i2][1][2]] = {}
			end

			tinsert(self.n[_1.n[_i2][1][1]][_1.n[_i2][1][2]], _1.n[_i2])
			
			end
		end
	end
	
	if _1.m and a >= _1.s and a <= _1.e then
		tinsert(self.m, {_1.m, _1.s, _1.e})
	end
	
end

function _EVENT:NpcSay(_1)
	if not(_1) then return end
	
	local a
	
	for _i = 1, getn(_1) do
		if _1[_i] then
			for _i2 = 1, getn(_1[_i]) do
				a = AddNpc(_1[_i][_i2][2][1][1], 1, SubWorldID2Idx(_1[_i][_i2][2][1][2]), _1[_i][_i2][2][1][3] * 32, _1[_i][_i2][2][1][4] * 32, 1, _1[_i][_i2][2][1][5])
				SetNpcParam(a, 1, _1[_i][_i2][1][1])
				SetNpcParam(a, 2, _1[_i][_i2][1][2])
				SetNpcScript(a, "\\script\\_event\\npc.lua")
			end
		end
	end
end

function _EVENT:Init()
	local a = getn(self.n)
	local b = getn(self.m)
	
	if a > 0 then
		for _i = 1, a do
			if self.n[_i] then
				self:NpcSay(self.n[_i])
			end
		end
	end
	
	if b > 0 then
		print("")
		print("--------------------------------- CORE EVENT BY BIL4I3N ---------------------------------")
		print("")
		
			for _i2 = 1, b do
				print("\tStart Event: "..self.m[_i2][1].." | DateTime: "..self.m[_i2][2].." ---> "..self.m[_i2][3])
			end
			
		if not(self.mis) or getn(self.mis) <= 0 then
			print("")
		end
		
		print((self.mis and getn(self.mis) > 0) and "" or "--------------------------------- CORE EVENT BY BIL4I3N ---------------------------------")
		print("")
	else
		print("------------------------- CORE EVENT::NowDay: "..(self:NowDay()).." No Events!")
	end
	
	if self.mis and getn(self.mis) > 0 then
		DynamicExecute("\\script\\_event\\m_ot.lua", "_EVENT:Mission_OnTimer")
		
		print("\t\t\tAddTimer is Start and preparing for Missions")
		
		for _k, _v in self.mis do
			print((_k >= getn(self.mis)) and ("\t[ ".._k.." H ]") or ("\t[ ".._k.." H ]"))
			
			for _i3 = 1, getn(_v) do
				print("\t  ------ ".._v[_i3].StartEnd[1].."  ".._v[_i3].eID.."  "..self.g[_v[_i3].eID]["m"].."  ".._v[_i3].FileFunc[2].."  -> ".._v[_i3].StartEnd[2])
			end
		end
		
		print("")
		print("--------------------------------- CORE EVENT BY BIL4I3N ---------------------------------");print("")
	end
end
































