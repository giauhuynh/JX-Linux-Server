Include("\\script\\_event\\lib.lua")
Include("\\script\\_event\\trung_thu_thang_8\\t_hao_tuu_tuong_phung.lua")

iNguTuuTrangRam = {
	d = {171002, 171006},
	t = {2001, 2101},
	m = {
		[520] = "Minh nguy�t tr�n - Ph��ng t��ng",
		[521] = "Minh nguy�t tr�n - Th�nh ��",
		[522] = "Minh nguy�t tr�n - Bi�n kinh",
		[523] = "Minh nguy�t tr�n - T��ng d��ng",
		[524] = "Minh nguy�t tr�n - D��ng ch�u",
		[525] = "Minh nguy�t tr�n - ��i l�",
		[526] = "Minh nguy�t tr�n - L�m an",
	},
}

function iNguTuuTrangRam:Main(ItemIndex, bIsExpired)
	local a = tonumber(GetLocalDate("%y%m%d"))
	local b = tonumber(GetLocalDate("%H%M"))
	
	if a < self.d[1] or a > self.d[2] or b < self.t[1] or b > self.t[2] then
		return Say("Hi�n t�i tr�ng ch�a l�n, th�i �i�m tr�ng s�ng nh�t l� l�c 20h ��n 21h!", 0)
	end
	
	local c_w, c_x, c_y = GetWorldPos()
	
	if not(self.m[c_w]) then
		return Say("H�y ��n g�p H�ng Nga Ti�n N� nh� n�ng �y truy�n t�ng ��n Minh Nguy�t Tr�n m�i c� th� th��ng th�c �nh tr�ng m�t c�ch tr�n v�n!", 0)
	end
	
	if _EVENT_LIB:ConsumeItem(ItemIndex) then
		return
	end
	
	AddSkillState(979, 1, 1, (10 * 60 * 18), 1)
	
	Msg2Player("<color=green>�� k�ch ho�t tr�ng th�i nh�n ��i �i�m th��ng v� may m�n nh�n ���c khi tham gia H�o T�u T��ng Ph�ng!")
end



























