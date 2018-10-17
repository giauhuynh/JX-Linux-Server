Include("\\script\\bil4i3n\\bil4i3n_msg2allworld.lua")
Include("\\script\\lib\\remoteexc.lua")

BossHKMini = {}
BossHKMini.Debug = 1
BossHKMini.b = {
	{id = 523, ne = "LiÔu Thanh Thanh", sr = 1},
	{id = 513, ne = "DiÖu Nh­", sr = 2},
	{id = 511, ne = "Tr­¬ng T«ng ChÝnh", sr = 4},
}
BossHKMini.m = {
	{mp = 42, ne = "Thiªn T©m §éng", ps = {{1678, 3109}, {1614, 3165}, {1558, 2984}}},
	{mp = 91, ne = "Mª cung Kª Qu¸n §éng", ps = {{1612, 2979}, {1580, 2722}, {1722, 2769}}},
	{mp = 6, ne = "Táa V©n §éng", ps = {{1579, 3245}, {1661, 3250}}},
	{mp = 5, ne = "Kinh Hoµng §éng", ps = {{1544, 3331}, {1540, 3439}}},
	{mp = 4, ne = "Kim Quang §éng", ps = {{1656, 3161}, {1579, 3116}, {1701, 3024}}},
	{mp = 71, ne = "B¹ch Thñy §éng", ps = {{1646, 3055}, {1705, 3127}, {1607, 3153}, {1699, 3206}, {1597, 3251}}},
	{mp = 73, ne = "Phôc L­u §éng", ps = {{1535, 3203}, {1505, 3084}, {1545, 2808}, {1509, 2994}}},
	{mp = 23, ne = "ThÇn Tiªn §éng", ps = {{1892, 3153}, {1808, 3232}, {1625, 3178}, {1643, 3241}, {1792, 3364}}},
	{mp = 22, ne = "B¹ch V©n §éng", ps = {{1898, 3163}, {1792, 3239}, {1757, 3114}}},
	{mp = 94, ne = "Linh Cèc §éng", ps = {{1549, 3193}, {1675, 3202}, {1644, 3022}}},
	{mp = 182, ne = "NghiÖt Long §éng", ps = {{2196, 3500}, {1683, 3238}, {1934, 3152}}},
	{mp = 180, ne = "Long Cung §éng", ps = {{1522, 3000}, {1524, 3161}, {1630, 3154}}},
	{mp = 194, ne = "Ngäc Hoa §éng", ps = {{1602, 3363}, {1458, 3119}, {1583, 2866}, {1729, 3135}}},
}

function BossHKMini:Relay_Call()
	local a, b, d
	
	for _i = 1, getn(self.b) do
		a = random(1, getn(self.m))
		b = random(1, getn(self.m[a].ps))
		
		if self.Debug == 1 then
			print("BOSS: "..self.b[_i].ne.." Map: "..self.m[a].ne.." Pos: "..floor(self.m[a].ps[b][1]/8)..", "..floor(self.m[a].ps[b][2]/16))
		end
		
		RemoteExc("\\script\\global\\bil4i3n\\bil4i3n_boss_tieu_hoang_kim_verold.lua", "BossHKMini:Remote_4m_S3Relay", {self.b[_i].id, 90, self.b[_i].sr, self.m[a].mp, self.m[a].ps[b][1] *32, self.m[a].ps[b][2] *32, 1, self.b[_i].ne, 1});

		-- d = "<color=0xa9ffe0>Boss TiÓu hoµng kim<color> <color=yellow>"..self.b[_i].ne.."<color> <color=0xa9ffe0>®· xuÊt hiÖn t¹i <color><color=orange>"..self.m[a].ne
		d = "<color=0xa9ffe0>Boss TiÓu hoµng kim<color> <color=yellow>"..self.b[_i].ne.."<color> <color=0xa9ffe0>®· xuÊt hiÖn"
		bilMsg2AllWorld:Send2All(d)
	end
end






























