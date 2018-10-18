Include("\\script\\_event\\init.lua")

function _EVENT:Monster(_1, _2)
	local a_x, a_y, a_w = GetNpcPos(_1)
	local b = GetMapDropRateFile(a_w)
	local c = GetNpcPowerType(_1)
	
	if not(self.iDrop[b]) then return end
	if c ~= 1 and c ~= 2 then return end
	
	local d, e = 0, random(1, 1000)
	
	if c == 1 and self.iDrop[b].NormalNpc and self.iDrop[b].NormalNpc.Count > 0 then
		d = random(1, self.iDrop[b].NormalNpc.Count)
	elseif c == 2 and self.iDrop[b].BlueNpc and self.iDrop[b].BlueNpc.Count > 0 then
		d = random(1, self.iDrop[b].BlueNpc.Count)
	else
		return
	end
	
	if c == 1 and self.iDrop[b].NormalNpc.Item and self.iDrop[b].NormalNpc.Item[d] and e <= self.iDrop[b].NormalNpc.Item[d].ItemList[2] then
		if self:NowDay() >= self.iDrop[b].NormalNpc.Item[d].Expired[1] and self:NowDay() <= self.iDrop[b].NormalNpc.Item[d].Expired[2] then
			DropItem(a_w, a_x, a_y, _2, 
				self.iDrop[b].NormalNpc.Item[d].ItemList[1][1], 
				self.iDrop[b].NormalNpc.Item[d].ItemList[1][2], 
				self.iDrop[b].NormalNpc.Item[d].ItemList[1][3],
				1, random(0,4), 0, 0, 0, 0, 0, 0, 0)
			return
		end
	elseif c == 2 and self.iDrop[b].BlueNpc.Item and self.iDrop[b].BlueNpc.Item[d] and self.iDrop[b].BlueNpc.Item[d].ItemCount > 0 then
		if self:NowDay() >= self.iDrop[b].BlueNpc.Item[d].Expired[1] and self:NowDay() <= self.iDrop[b].BlueNpc.Item[d].Expired[2] then
			for _i = 1, self.iDrop[b].BlueNpc.Item[d].ItemCount do
				DropItem(a_w, a_x, a_y, _2, 
					self.iDrop[b].BlueNpc.Item[d].ItemList[1][1], 
					self.iDrop[b].BlueNpc.Item[d].ItemList[1][2], 
					self.iDrop[b].BlueNpc.Item[d].ItemList[1][3],
					1, random(0,4), 0, 0, 0, 0, 0, 0, 0)
			end
			return
		end
	end
end
































