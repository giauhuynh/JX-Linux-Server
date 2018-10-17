Include("\\script\\lib\\progressbar.lua")
Include("\\script\\_missions\\tieu_bang_chien\\inc.lua")

local m_TieuBangChien_n_BoDuoc_ONLOAD = function()
	local a = {
		{6, 0, 1, 1, 0, 0, 0},
		{6, 0, 2, 1, 0, 0, 0},
		{6, 0, 6, 1, 0, 0, 0},
	}
	
	for _i = 1, getn(a) do
		AddItem(unpack(a[_i]))
	end
	
	Msg2Player("<color=green>NhËn ®­îc d­îc phÈm tõ nåi bæ d­îc!")
end

local m_TieuBangChien_n_BoDuoc_ONBREAK = function() return Msg2Player("Qu¸ tr×nh thu thËp bæ d­îc bÞ gi¸n ®o¹n!") end

function m_TieuBangChien:n_BoDuoc(_nIndex)
	local c_N, c_Id = GetTongName()
	
	if c_N == nil or c_N == "" or c_Id <= 0 or not(self._MEMORY.Tong[c_N]) then
		return Talk(1, "", "Xin chµo ng­êi ®i ®­êng!")
	end

	local a = GetNpcParam(_nIndex, self.t.NpcSupport)
	
	a = (((a == nil) or (a <= 0)) and 1 or (a + 1))
	
	if a >= 5 then
		DelNpc(_nIndex)
	else
		SetNpcParam(_nIndex, self.t.NpcSupport, a)
	end
	
	tbProgressBar:OpenByConfig(26, %m_TieuBangChien_n_BoDuoc_ONLOAD, {}, %m_TieuBangChien_n_BoDuoc_ONBREAK, {})
end

function main() return m_TieuBangChien:n_BoDuoc(GetLastDiagNpc()) end
























