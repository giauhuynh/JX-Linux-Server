Include("\\script\\lib\\remoteexc.lua")
Include("\\script\\bil4i3n\\bil4i3n_msg2allworld.lua")

m_BossTinhAnh = {
	state = 0,
	pos_idx = {i = 0, m = 0},
	Pos = {
		{53, "Ba L¨ng HuyÖn", {1786, 3348}, {1496, 3291}, {1465, 3057}, {1714, 3018}},
		{20, "Giang T©n Th«n", {3525, 6330}, {3602, 6289}, {3631, 6152}, {3462, 6030}},
		{99, "VÜnh L¹c TrÊn", {1601, 3357}, {1738, 3269}, {1723, 3043}, {1582, 3023}},
		{100, "Chu Tiªn TrÊn", {1536, 3271}, {1756, 3282}, {1725, 3041}, {1563, 3052}},
		{101, "§¹o H­¬ng Th«n", {1509, 3333}, {1637, 3015}, {1804, 3099}, {1765, 3274}},
		{121, "Long M«n TrÊn", {1871, 4599}, {2051, 4600}, {2021, 4330}, {1880, 4368}},
		{153, "Th¹ch Cæ TrÊn", {1667, 3345}, {1713, 3298}, {1726, 3191}, {1667, 3127}},
		{174, "Long TuyÒn Th«n", {1689, 3396}, {1535, 3365}, {1490, 3190}, {1714, 3131}},
	},
	Debug = nil,
}

function m_BossTinhAnh:SetState(_State, _PosID, _MapId)
	self.state = _State
	self.pos_idx.i = (_PosID and _PosID or self.pos_idx.i)
	self.pos_idx.m = (_MapId and _MapId or self.pos_idx.m)
	
	if self.Debug then
		print("m_BossTinhAnh:SetState", self.state, self.pos_idx.i, self.pos_idx.m)
	end
	
	if self.state <= 0 then
		return self:Send2Gsv()
	end
	
	if _State == 1 then
		print("====> Boss Tinh Anh :: NowCreateNew [ Map-"..self.Pos[_PosID][1].."-"..self.Pos[_PosID][2].."  :: "..floor(self.Pos[_PosID][_MapId][1]/8)..", "..floor(self.Pos[_PosID][_MapId][2]/16).." ]")
	end
end

function m_BossTinhAnh:Send2Gsv()
	if self.Debug then
		print("m_BossTinhAnh:Send2Gsv", self.state)
	end

	local a = nil
	
	if self.state <= 0 then
		a = random(1, getn(self.Pos))
		return RemoteExc("\\script\\global\\bil4i3n\\bil4i3n_boss_tinh_anh.lua", "bilBossTieuHK:Remote_4m_S3Relay", {a})
	end
	
	if self.state == 1 then
		-- return bilMsg2AllWorld:Send2All("<color=0xa9ffe0>Nghe ®ån TiÓu Tinh Anh hiÖn ®ang quÊy rèi d©n lµng "..self.Pos[self.pos_idx.i][2].." ("..floor(self.Pos[self.pos_idx.i][self.pos_idx.m][1]/8)..", "..floor(self.Pos[self.pos_idx.i][self.pos_idx.m][2]/16)..")")
		--return bilMsg2AllWorld:Send2All("<color=0xa9ffe0>Nghe ®ån TiÓu Tinh Anh hiÖn ®ang quÊy rèi d©n lµng "..self.Pos[self.pos_idx.i][2].."")
		return bilMsg2AllWorld:Send2All("<color=0xa9ffe0>Nghe ®ån TiÓu Tinh Anh gÇn ®©y xuÊt hiÖn ë t©n thñ th«n, c¸c ®¹i hiÖp h·y mau chãng truy lïng!")
	end
end

if m_BossTinhAnh.state == 0 and tonumber(date("%y%m%d%H")) == 17101408 then
	m_BossTinhAnh.state = 2
	print(m_BossTinhAnh.state)
end























