Include("\\script\\lib\\progressbar.lua")
Include("\\script\\_missions\\tieu_bang_chien\\inc.lua")

local m_TieuBangChien_n_ChienLoiPham_ONLOAD = function(_NpcIndex, _1)
	_1 = (_1 - 1)
	
	if _1 <= 0 then
		DelNpc(_NpcIndex)
	else
		SetNpcParam(_NpcIndex, m_TieuBangChien.t.ChienLoiPham, _1)
	end
	
	local a = {
		{v = {4,507,1,1,0,0,0}, e = 0, r = 6, n = "Nh¹c V­¬ng Hån Th¹ch"},
		{v = {6,1,4315,1,0,0,0}, e = 0, r = 1, n = "BÝ KÝp LÔ Bao 90"},
		{v = {6,1,23,1,0,0,0}, e = 0, r = 4, n = "ThiÕt La H¸n"},
		{v = {6,1,22,1,0,0,0}, e = 0, r = 1, n = "TÈy Tñy Kinh"},
		{v = {6,1,26,1,0,0,0}, e = 0, r = 1, n = "Vâ L©m MËt TÞch"},
		{v = {6,1,125,1,0,0,0}, e = 0, r = 2, n = "QuÕ Hoa Töu"},
		{v = {6,1,12,1,0,0,0}, e = 0, r = 2, n = "Bµn Nh­îc T©m Kinh"},
		{v = {6,1,71,1,0,0,0}, e = 0, r = 4, n = "Tiªn Th¶o Lé"},
		{v = {6,1,1181,1,0,0,0}, e = 0, r = 3, n = "Tiªn Th¶o Lé ®Æc biÖt"},
		{v = {6,1,72,1,0,0,0}, e = 0, r = 2, n = "Thiªn s¬n B¶o Lé"},
		{v = {4,238,1,1,0,0,0}, e = 0, r = 1, n = "Lam Thñy Tinh"},
		{v = {4,239,1,1,0,0,0}, e = 0, r = 1, n = "Tö Thñy Tinh"},
		{v = {4,240,1,1,0,0,0}, e = 0, r = 1, n = "Lôc Thñy Tinh"},
		{v = {4,353,1,1,0,0,0}, e = 0, r = 2, n = "Tinh Hång B¶o Th¹ch"},
		{v = {6,1,122,1,0,0,0}, e = 0, r = 4, n = "Phóc Duyªn Lé (TiÓu)"},
		{v = {6,1,123,1,0,0,0}, e = 0, r = 3, n = "Phóc Duyªn Lé (Trung)"},
		{v = {6,1,124,1,0,0,0}, e = 0, r = 2, n = "Phóc Duyªn Lé (§¹i)"},
	}
	
	AddItem(4,417,1,1,0,0,0)
	
	Msg2Player("<color=green>NhËn ®­îc phÇn th­ëng trong hßm chiÕn lîi phÈm!")
	
	for _i = 1, getn(a) do
		if random(1, 100) <= a[_i].r then
			AddItem(unpack(a[_i].v))
			
			Msg2Player("<color=green>May m¾n nhËn ®­îc phÇn th­ëng "..a[_i].n)
			break
		end
	end
end

local m_TieuBangChien_n_ChienLoiPham_ONBREAK = function()
	return Msg2Player("Qu¸ tr×nh thu thËp chiÕn lîi phÈm bÞ gi¸n ®o¹n!")
end

function m_TieuBangChien:n_ChienLoiPham(_NpcIndex)
	local a = GetNpcParam(_NpcIndex, self.t.TieuXa_TongID)
	local b = GetNpcParam(_NpcIndex, self.t.ChienLoiPham)
	local c_N = self._MEMORY.Tong_ID[a]
	local d_N, d_ID = GetTongName()
	
	if c_N ~= d_N then
		return Talk(1, "", "Hßm ChiÕn lîi phÈm nµy cña bang héi "..c_N..", b¹n kh«ng ph¶i lµ thµnh viªn cña bæn bang nªn kh«ng ®­îc phÐp më hßm!")
	end
	
	if (b == -1000) then
		return Talk(1, "", "§©y lµ chiÕn dÞch miÔn phÝ nªn Tiªu xa kh«ng chøa bÊt kú b¸u vËt nµo c¶, thËt ®¸ng tiÕc!")
	end
	
	if b <= 0 then
		return DelNpc(_NpcIndex)
	end
	
	return tbProgressBar:OpenByConfig(26, %m_TieuBangChien_n_ChienLoiPham_ONLOAD, {_NpcIndex, b}, %m_TieuBangChien_n_ChienLoiPham_ONBREAK, {})
end

function main() return m_TieuBangChien:n_ChienLoiPham(GetLastDiagNpc()) end



































