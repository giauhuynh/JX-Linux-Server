Include("\\script\\_event\\lib.lua")
Include("\\script\\_event\\trung_thu_thang_8\\t_hao_tuu_tuong_phung.lua")

iNguTuuTrangRam = {
	d = {171002, 171006},
	t = {2001, 2101},
	m = {
		[520] = "Minh nguyÖt trÊn - Ph­îng t­êng",
		[521] = "Minh nguyÖt trÊn - Thµnh ®«",
		[522] = "Minh nguyÖt trÊn - BiÖn kinh",
		[523] = "Minh nguyÖt trÊn - T­¬ng d­¬ng",
		[524] = "Minh nguyÖt trÊn - D­¬ng ch©u",
		[525] = "Minh nguyÖt trÊn - §¹i lı",
		[526] = "Minh nguyÖt trÊn - L©m an",
	},
}

function iNguTuuTrangRam:Main(ItemIndex, bIsExpired)
	local a = tonumber(GetLocalDate("%y%m%d"))
	local b = tonumber(GetLocalDate("%H%M"))
	
	if a < self.d[1] or a > self.d[2] or b < self.t[1] or b > self.t[2] then
		return Say("HiÖn t¹i tr¨ng ch­a lªn, thêi ®iÓm tr¨ng s¸ng nhÊt lµ lóc 20h ®Õn 21h!", 0)
	end
	
	local c_w, c_x, c_y = GetWorldPos()
	
	if not(self.m[c_w]) then
		return Say("H·y ®Õn gÆp H»ng Nga Tiªn N÷ nhê nµng Êy truyÒn tèng ®Õn Minh NguyÖt TrÊn míi cã thÓ th­ëng thøc ¸nh tr¨ng mét c¸ch trän vÑn!", 0)
	end
	
	if _EVENT_LIB:ConsumeItem(ItemIndex) then
		return
	end
	
	AddSkillState(979, 1, 1, (10 * 60 * 18), 1)
	
	Msg2Player("<color=green>§· kİch ho¹t tr¹ng th¸i nh©n ®«i ®iÓm th­ëng vµ may m¾n nhËn ®­îc khi tham gia H¶o Töu T­¬ng Phïng!")
end



























