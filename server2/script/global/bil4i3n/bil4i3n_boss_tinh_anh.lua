IncludeLib("NPCINFO")
Include("\\script\\lib\\remoteexc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_award_activity.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

bilBossTieuHK = {
	PosTb = 0,
	PosMap = 0,
	TimeReCall = 60*60*18,
	TimeReCallIdx = 0,
	State = 0,
	Index = 0,
	Name = "",
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
}

function bilBossTieuHK:Call(_villageId)
	if bilAllowBossTieuHoangKim ~= 1 then return end
	
	self.PosTb = _villageId
	self.PosMap = random(3, getn(self.Pos[self.PosTb]))
	self.Name = self.Pos[self.PosTb][2]
	self.State = 1
	
	self.Index = AddNpcEx(random(812,820), 100, random(0,4), SubWorldID2Idx(self.Pos[self.PosTb][1]), 
		self.Pos[self.PosTb][self.PosMap][1]*32, self.Pos[self.PosTb][self.PosMap][2]*32, 1, "TiÓu yªu "..self.Name, 1)
	SetNpcScript(self.Index, "\\script\\global\\bil4i3n\\bil4i3n_boss_tinh_anh.lua")
	
	local a = NPCINFO_GetNpcCurrentLife(self.Index)
	NPCINFO_SetNpcCurrentMaxLife(self.Index, (a*15))
	NPCINFO_SetNpcCurrentLife(self.Index, (a*15))
	
	-- local bil_1 = bil.C(9, "BOSS Tinh Anh ®· xuÊt hiÖn t¹i ").."<color=earth>"..floor(self.Pos[self.PosTb][self.PosMap][1] / 8)..", "..floor(self.Pos[self.PosTb][self.PosMap][2] / 16).." <color>"..bil.C(9, self.Name..", h·y mau chãng h¹ thñ!")
	local bil_1 = bil.C(9, "Nghe ®ån boss TiÓu Tinh Anh gÇn ®©y xuÊt hiÖn ë t©n thñ th«n quÊy nhiÔn d©n lµng, c¸c ®¹i hiÖp h·y mau chãng truy lïng!")
	bil.Msg2AllWorld(bil_1)
	
	RemoteExc("\\script\\bil4i3n\\bil4i3n_boss_tinh_anh.lua", "m_BossTinhAnh:SetState", {self.State, self.PosTb, self.PosMap})
end

function bilBossTieuHK:Remote_4m_S3Relay(_villageId)
	if bilAllowBossTieuHoangKim ~= 1 then return end
	
	if SubWorldID2Idx(self.Pos[_villageId][1]) == -1 then
		return
	end
	
	if self.State == 0 then
		self:Call(_villageId)
	--elseif self.State == 1 then
		--bil.Msg2AllWorld(bil.C(10, "BOSS Tinh Anh ®ang ë ®©u cßn l©u míi nãi h·y n¾m b¾t thêi c¬ mau mau ®i t×m t¹i xung quanh khu vùc cña 8 th«n!")))
	end
end

function bilBossTieuHK:OnDeath()
	local bil_1 = tonumber(date( "%H"))
	local bil_2 = tonumber(date( "%M")) + floor((self.TimeReCall / 18) / 60)
	self.TimeReCallIdx = AddTimer(self.TimeReCall, "bilBossTieuHK:OnTimerReCall", self.TimeReCallIdx)
	self.State = 2
	if bil_2 >= 60 then
		bil_1 = bil_1 + floor(bil_2/60)
		bil_2 = bil_2 - (60 * floor(bil_2/60))
		if bil_1 >= 24 then
			bil_1 = bil_1 - 24
		end
	end
	bil.Msg2AllWorld(bil.C(10, "BOSS Tinh Anh ë "..self.Name.." ®· bÞ "..GetName().." KÕt liÔu!"))
	bil.Msg2AllWorld(bil.C(10, "BOSS Tinh Anh tiÕp theo sÏ xuÊt hiÖn vµo lóc "..bil_1.." giê "..bil_2.." phót!"))
	local bil_3_X, bil_3_Y, bil_3_W = GetNpcPos(self.Index)
	local bil_4, bil_5, bil_6 = GetTeamSize(), {}, 0
	if bil_4 > 1 then
		for bil_l_1 = 1, bil_4 do
			bil_6 = GetTeamMember(bil_l_1)
			tinsert(bil_5, bil_6)
		end
	else
		tinsert(bil_5, PlayerIndex)
	end
	bilActivity_DeathBossTHK(bil_3_W, bil_3_X, bil_3_Y, bil_5)
	local bil_7_1, bil_7_C = GetNpcAroundPlayerList(self.Index, 20)
	for bil_l_2 = 1, bil_7_C do
		for bil_l_3 = 1, getn(bil_5) do
			if bil_5[bil_l_3] == bil_7_1[bil_l_2] then
				bil_7_1[bil_l_2] = nil
			end
		end
	end
	
	RemoteExc("\\script\\bil4i3n\\bil4i3n_boss_tinh_anh.lua", "m_BossTinhAnh:SetState", {self.State})
	
	bilActivity_DeathBossTHKPlayerRandom(bil_7_1)
end

function bilBossTieuHK:OnTimerReCall(TimerID)
	DelTimer(TimerID)
	
	self.State = 0
	
	RemoteExc("\\script\\bil4i3n\\bil4i3n_boss_tinh_anh.lua", "m_BossTinhAnh:SetState", {-1})
end

function OnDeath(nNpcIndex) return bilBossTieuHK:OnDeath() end

























