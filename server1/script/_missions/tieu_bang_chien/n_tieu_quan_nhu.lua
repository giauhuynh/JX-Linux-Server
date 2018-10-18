Include("\\script\\_missions\\tieu_bang_chien\\inc.lua")
Include("\\script\\_missions\\tieu_bang_chien\\n_tiep_nhan_tieu_xa.lua")

function m_TieuBangChien:n_TieuQuanNhu(_nIndex)
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
	
	return m_TieuBangChien:n_TiepNhanTieuXa(4)
end

function main() return m_TieuBangChien:n_TieuQuanNhu(GetLastDiagNpc()) end
























