IncludeLib("NPCINFO")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_droprate.lua")
Include("\\script\\_event\\activitys.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_droprate_item_magic.lua")

BossHKMini = {}
BossHKMini.a = {
	TeamKillExp = 4000000,
	NearExp = 2000000,
	KTDB = {
		{v = {6,1,15}, r = 300, n = "phi phong"},
		{v = {4,238,1}, r = 10, n = "thÒy tinh"},
		{v = {4,239,1}, r = 10, n = "thÒy tinh"},
		{v = {4,240,1}, r = 10, n = "thÒy tinh"},
		{v = {4,353,1}, r = 10, n = "tinh hÂng b∂o thπch"},
		{v = {6,1,2392}, r = 50, n = "b∏t nh∑ t©m kinh"},
		{v = {6,1,2393}, r = 50, n = "b∏t nh∑ t©m kinh"},
		{v = {6,1,23}, r = 100, n = "thi’t la h∏n"},
		{v = {6,1,71}, r = 50, n = "ti™n th∂o lÈ"},
		{v = {6,1,72}, r = 50, n = "thi™n s¨n th∂o lÈ"},
		{v = {6,1,73}, r = 50, n = "b∏ch qu∂ lÈ"},
		{v = {6,1,125}, r = 50, n = "qu’ hoa tˆu"},
		
		{v = {6,1,4325}, r = 300, n = "m∂nh trang bﬁ kim phong 1"},
		{v = {6,1,4326}, r = 300, n = "m∂nh trang bﬁ kim phong 2"},
		{v = {6,1,4327}, r = 300, n = "m∂nh trang bﬁ kim phong 3"},
		{v = {6,1,4328}, r = 300, n = "m∂nh trang bﬁ kim phong 4"},
		{v = {6,1,4329}, r = 300, n = "m∂nh trang bﬁ kim phong 5"},
		{v = {6,1,4330}, r = 300, n = "m∂nh trang bﬁ kim phong 6"},
		
		{v = {6,1,4325}, r = 200, n = "m∂nh trang bﬁ kim phong 1"},
		{v = {6,1,4326}, r = 200, n = "m∂nh trang bﬁ kim phong 2"},
		{v = {6,1,4327}, r = 200, n = "m∂nh trang bﬁ kim phong 3"},
		{v = {6,1,4328}, r = 200, n = "m∂nh trang bﬁ kim phong 4"},
		{v = {6,1,4329}, r = 200, n = "m∂nh trang bﬁ kim phong 5"},
		{v = {6,1,4330}, r = 200, n = "m∂nh trang bﬁ kim phong 6"},
		
		{v = {6,1, 56}, r = 2, n = "b› k›p"},
		{v = {6,1, 57}, r = 2, n = "b› k›p"},
		{v = {6,1, 58}, r = 2, n = "b› k›p"},
		{v = {6,1, 37}, r = 2, n = "b› k›p"},
		{v = {6,1, 38}, r = 2, n = "b› k›p"},
		{v = {6,1, 39}, r = 2, n = "b› k›p"},
		{v = {6,1, 27}, r = 2, n = "b› k›p"},
		{v = {6,1, 28}, r = 2, n = "b› k›p"},
		{v = {6,1, 45}, r = 2, n = "b› k›p"},
		{v = {6,1, 46}, r = 2, n = "b› k›p"},
		{v = {6,1, 47}, r = 2, n = "b› k›p"},
		{v = {6,1, 48}, r = 2, n = "b› k›p"},
		{v = {6,1, 49}, r = 2, n = "b› k›p"},
		{v = {6,1, 59}, r = 2, n = "b› k›p"},
		{v = {6,1, 42}, r = 2, n = "b› k›p"},
		{v = {6,1, 43}, r = 2, n = "b› k›p"},
		{v = {6,1, 40}, r = 2, n = "b› k›p"},
		{v = {6,1, 41}, r = 2, n = "b› k›p"},
		{v = {6,1, 54}, r = 2, n = "b› k›p"},
		{v = {6,1, 55}, r = 2, n = "b› k›p"},
		{v = {6,1, 35}, r = 2, n = "b› k›p"},
		{v = {6,1, 36}, r = 2, n = "b› k›p"},
		{v = {6,1, 53}, r = 2, n = "b› k›p"},
		{v = {6,1, 33}, r = 2, n = "b› k›p"},
		{v = {6,1, 34}, r = 2, n = "b› k›p"},
		{v = {6,1, 50}, r = 2, n = "b› k›p"},
		{v = {6,1, 51}, r = 2, n = "b› k›p"},
		{v = {6,1, 52}, r = 2, n = "b› k›p"},
	},
}

function BossHKMini:Remote_4m_S3Relay(_bID, _bLV, _bSR, _bMID, _bPX, _bPY, _bIs1, _bNE, _bIs2)
	local c = AddNpcEx(_bID, _bLV, _bSR, SubWorldID2Idx(_bMID), _bPX, _bPY, _bIs1, _bNE, _bIs2)
	
	SetNpcDeathScript(c, "\\script\\global\\bil4i3n\\bil4i3n_boss_tieu_hoang_kim_verold.lua")
	SetNpcTimer(c, 120*60*18)
	
--------------------------------------------------------------------------------------------------------------------------------

	if (c == nil) or not(c) or (c == 0) then
		return
	end
	
	local a = NPCINFO_GetNpcCurrentLife(c)
	NPCINFO_SetNpcCurrentMaxLife(c, (a*10))
	NPCINFO_SetNpcCurrentLife(c, (a*10))
end

function BossHKMini:OnDeath(nNpcIndex)
	local a = "<color=0xa9ffe0>ßπi hi÷p<color> <color=yellow>"..GetName().."<color> <color=0xa9ffe0>Æ∑ ti™u di÷t Boss Ti”u hoµng kim <color><color=orange>"..GetNpcName(nNpcIndex)
	local b_x, b_y, b_w = GetNpcPos(nNpcIndex)
	local c = GetTeamSize()
	local PlayerIndex_Ori = PlayerIndex
	local d = {}
	
	_EVENT:Activity_BTHK()
	
	if (c > 1) then
		for _i = 1, c do
			PlayerIndex = GetTeamMember(_i)
			d[PlayerIndex] = PlayerIndex
			
			AddOwnExp(self.a.TeamKillExp)
			Msg2Player("Hπ gÙc Æ≠Óc boss nhÀn Æ≠Óc kinh nghi÷m: "..self.a.TeamKillExp)
		end
		PlayerIndex = PlayerIndex_Ori
	else
		d[PlayerIndex] = PlayerIndex
		AddOwnExp(self.a.TeamKillExp)
		Msg2Player("Bπn hπ gÙc Æ≠Óc boss nhÀn Æ≠Óc kinh nghi÷m: "..self.a.TeamKillExp)
	end
	
	local e_a, e_c = GetNpcAroundPlayerList(nNpcIndex, 20)
	
	for _i2 = 1, e_c do
		if not(d[e_a[_i2]]) then
			PlayerIndex = e_a[_i2]
			AddOwnExp(self.a.NearExp)
			Msg2Player("NhÀn Æ≠Óc Kinh nghi÷m khi Æ¯ng g«n boss: "..self.a.NearExp)
		end	
	end
	
	PlayerIndex = PlayerIndex_Ori
	
	bilDropNormalItem({b_w, b_x, b_y}, PlayerIndex, 20, {50, 100}, {8, 10, 80})
	
------------------------------------------------------- DROP MAGIC -------------------------------------------------------
	if bilAllowDropMagicItemManual and bilAllowDropMagicItemManual.isOpen == 1 then
		local im_G, im_D, im_MagicLevel, im_Index = 0, nil, 0, nil
		
		for _i4 = 1, 10 do
			im_D = random(0, 9)
			
			im_D = ((im_D == 0 or im_D == 1) and ((random(100) <= 10) and im_D or random(5,9)) or ((im_D == 3 or im_D == 4 or im_D == 9) and ((random(100) <= 20) and im_D or random(5,8)) or im_D))
			im_MagicLevel = ((im_D == 0 or im_D == 1 or im_D == 3 or im_D == 4 or im_D == 9) and 6 or 9)
			
			if random(100) <= 50 then
				im_Index = DropItemEx(
					b_w, b_x, b_y, 
					(PlayerIndex or -1), 
					bilAllowDropMagicItemManual.version, 
					random(), 
					0, 
					im_G, im_D, random(_bilTbDropNormalItem[(im_D + 1)][1][1], _bilTbDropNormalItem[(im_D + 1)][1][2]), 
					random(8,10), GetNpcSeries(nNpcIndex), 
					((im_D == 0 or im_D == 1) and random(100) or ((im_D == 3 or im_D == 4 or im_D == 9) and random(150) or random(200))), 
					random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel)
				)
				
				item_DropMagic:WriteLogs({im_Mis = "Boss_Tieu_Hoang_Kim", im_Index = im_Index, im_D = im_D})
			end
		end
	end
------------------------------------------------------- DROP MAGIC -------------------------------------------------------
	
	local f = getn(self.a.KTDB)
	
	for _i3 = 1, f do
		if random(1, 1000) <= self.a.KTDB[_i3].r then
			DropItem(b_w, b_x, b_y, PlayerIndex, 
					self.a.KTDB[_i3].v[1], 
					self.a.KTDB[_i3].v[2], 
					self.a.KTDB[_i3].v[3], 1, random(0,4), 0, 0, 0, 0, 0, 0, 0)
		end
	end
	
	bil.Msg2AllWorld(a)
end

function BossHKMini:OnTimer(nNpcIndex, nTimeOut)
	DelNpc(nNpcIndex)
end

function OnDeath( nNpcIndex )
	return BossHKMini:OnDeath(nNpcIndex)
end

function OnTimer(nNpcIndex, nTimeOut) 
	return BossHKMini:OnTimer(nNpcIndex, nTimeOut)
end



































