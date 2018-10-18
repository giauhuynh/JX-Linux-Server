Include("\\script\\_event\\lib.lua")
Include("\\script\\_event\\trung_thu_thang_8\\t_hao_tuu_tuong_phung.lua")

iHaoTuuLenhBai = {
	d = {171002, 171006},
	t = {2001, 2101},
	m = {
		[520] = "Minh nguy÷t tr n - Ph≠Óng t≠Íng",
		[521] = "Minh nguy÷t tr n - Thµnh Æ´",
		[522] = "Minh nguy÷t tr n - Bi÷n kinh",
		[523] = "Minh nguy÷t tr n - T≠¨ng d≠¨ng",
		[524] = "Minh nguy÷t tr n - D≠¨ng ch©u",
		[525] = "Minh nguy÷t tr n - ßπi l˝",
		[526] = "Minh nguy÷t tr n - L©m an",
	},
}

function iHaoTuuLenhBai:Main(ItemIndex, bIsExpired)
	local a = tonumber(GetLocalDate("%y%m%d"))
	local b = tonumber(GetLocalDate("%H%M"))
	
	if a < self.d[1] or a > self.d[2] or b < self.t[1] or b > self.t[2] then
		return Say("Hi÷n tπi tr®ng ch≠a l™n, thÍi Æi”m tr®ng s∏ng nh t lµ lÛc 20h Æ’n 21h!", 0)
	end
	
	local c_w, c_x, c_y = GetWorldPos()
	
	if not(self.m[c_w]) then
		return Say("H∑y Æ’n g∆p Hªng Nga Ti™n N˜ nhÍ nµng  y truy“n tËng Æ’n Minh Nguy÷t Tr n mÌi c„ th” th≠Îng th¯c ∏nh tr®ng mÈt c∏ch tr‰n v—n!", 0)
	end
	
	if t_HaoTuuTuongPhung:PreparingCheck() then
		return 
	end
	
	if (GetTeamSize() > 1 and IsCaptain() ~= 1) then
		return Say("Xin lÁi, c«n ph∂i lµ ÆÈi tr≠Îng mÌi c„ th” tri÷u hÂi bµn ti÷c!", 0)
	end

	if _EVENT_LIB:ConsumeItem(ItemIndex) then
		return
	end
	
	return t_HaoTuuTuongPhung:CallTheTable()
end



























