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
		{v = {4,507,1,1,0,0,0}, e = 0, r = 6, n = "Nh�c V��ng H�n Th�ch"},
		{v = {6,1,4315,1,0,0,0}, e = 0, r = 1, n = "B� K�p L� Bao 90"},
		{v = {6,1,23,1,0,0,0}, e = 0, r = 4, n = "Thi�t La H�n"},
		{v = {6,1,22,1,0,0,0}, e = 0, r = 1, n = "T�y T�y Kinh"},
		{v = {6,1,26,1,0,0,0}, e = 0, r = 1, n = "V� L�m M�t T�ch"},
		{v = {6,1,125,1,0,0,0}, e = 0, r = 2, n = "Qu� Hoa T�u"},
		{v = {6,1,12,1,0,0,0}, e = 0, r = 2, n = "B�n Nh��c T�m Kinh"},
		{v = {6,1,71,1,0,0,0}, e = 0, r = 4, n = "Ti�n Th�o L�"},
		{v = {6,1,1181,1,0,0,0}, e = 0, r = 3, n = "Ti�n Th�o L� ��c bi�t"},
		{v = {6,1,72,1,0,0,0}, e = 0, r = 2, n = "Thi�n s�n B�o L�"},
		{v = {4,238,1,1,0,0,0}, e = 0, r = 1, n = "Lam Th�y Tinh"},
		{v = {4,239,1,1,0,0,0}, e = 0, r = 1, n = "T� Th�y Tinh"},
		{v = {4,240,1,1,0,0,0}, e = 0, r = 1, n = "L�c Th�y Tinh"},
		{v = {4,353,1,1,0,0,0}, e = 0, r = 2, n = "Tinh H�ng B�o Th�ch"},
		{v = {6,1,122,1,0,0,0}, e = 0, r = 4, n = "Ph�c Duy�n L� (Ti�u)"},
		{v = {6,1,123,1,0,0,0}, e = 0, r = 3, n = "Ph�c Duy�n L� (Trung)"},
		{v = {6,1,124,1,0,0,0}, e = 0, r = 2, n = "Ph�c Duy�n L� (��i)"},
	}
	
	AddItem(4,417,1,1,0,0,0)
	
	Msg2Player("<color=green>Nh�n ���c ph�n th��ng trong h�m chi�n l�i ph�m!")
	
	for _i = 1, getn(a) do
		if random(1, 100) <= a[_i].r then
			AddItem(unpack(a[_i].v))
			
			Msg2Player("<color=green>May m�n nh�n ���c ph�n th��ng "..a[_i].n)
			break
		end
	end
end

local m_TieuBangChien_n_ChienLoiPham_ONBREAK = function()
	return Msg2Player("Qu� tr�nh thu th�p chi�n l�i ph�m b� gi�n �o�n!")
end

function m_TieuBangChien:n_ChienLoiPham(_NpcIndex)
	local a = GetNpcParam(_NpcIndex, self.t.TieuXa_TongID)
	local b = GetNpcParam(_NpcIndex, self.t.ChienLoiPham)
	local c_N = self._MEMORY.Tong_ID[a]
	local d_N, d_ID = GetTongName()
	
	if c_N ~= d_N then
		return Talk(1, "", "H�m Chi�n l�i ph�m n�y c�a bang h�i "..c_N..", b�n kh�ng ph�i l� th�nh vi�n c�a b�n bang n�n kh�ng ���c ph�p m� h�m!")
	end
	
	if (b == -1000) then
		return Talk(1, "", "��y l� chi�n d�ch mi�n ph� n�n Ti�u xa kh�ng ch�a b�t k� b�u v�t n�o c�, th�t ��ng ti�c!")
	end
	
	if b <= 0 then
		return DelNpc(_NpcIndex)
	end
	
	return tbProgressBar:OpenByConfig(26, %m_TieuBangChien_n_ChienLoiPham_ONLOAD, {_NpcIndex, b}, %m_TieuBangChien_n_ChienLoiPham_ONBREAK, {})
end

function main() return m_TieuBangChien:n_ChienLoiPham(GetLastDiagNpc()) end



































