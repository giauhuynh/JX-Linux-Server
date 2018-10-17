Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

-- 6,1, 4316

function main()

	if GetFightState() <= 0 then
		bil.Talk("Chÿ c„ th” g‰i mÈc nh©n Î c∏c khu v˘c chi’n Æ u, kh´ng th” luy÷n tÀp tπi khu v˘c d©n sinh!")
		return 1
	end

	local a, b = GetName(), CalcEquiproomItemCount(6,1,4316,-1)
	local w,x,y = GetWorldPos()
	
	if b > 1 then
		Say("Hi÷n tπi Æπi hi÷p Æang c„ tÊng "..b.." MÈc nh©n l÷nh trong hµnh trang, Æπi hi÷p c„ muËn g‰i "..b.." mÈc nh©n Æ’n Æﬁa Æi”m nµy: "..(floor(x/8))..", "..(floor(y/16)).."?", 3,
			"G‰i "..b.." MÈc nh©n Æ’n ngay chÁ nµy!/#iTemMocNL_CallNPC("..b..")",
			"Chÿ g‰i 1 mÈc nh©n Æ’n chÁ nµy!/#iTemMocNL_CallNPC(1)",
			"K’t thÛc ÆËi thoπi./bil.OnCancel")
	else
		Say("G‰i 1 bia mÈc nh©n tπi vﬁ tr› nµy: "..(floor(x/8))..", "..(floor(y/16)).." <enter>Bπn c„ muËn g‰i mÈc nh©n ngay tπi Æ©y?", 2,
			"G‰i mÈc nh©n ngay tπi Æ©y/#iTemMocNL_CallNPC(1)",
			"K’t thÛc ÆËi thoπi/bil.OnCancel")
	end

	return 1
end

function iTemMocNL_CallNPC(_1)

	local a = CalcEquiproomItemCount(6,1,4316,-1)
	local w,x,y = GetWorldPos()
	local b = GetName()
	
	if _1 > a then
		return bil.Talk("Kh u trı Æπo cÙ th t bπi, xin ki”m tra lπi thao t∏c")
	end
	
	for _i = 1, _1 do
		ConsumeEquiproomItem(1,6,1,4316,-1)
		-- AddNpc(1933, 100, SubWorldID2Idx(w), x * 32, y * 32, 1, b.." MÈc nh©n", 2)
		AddNpc(1933, 100, SubWorldID2Idx(w), x * 32, y * 32, 1, b.." MÈc nh©n")
	end
	
	Msg2Player(_1.." MÈc nh©n Æ∑ xu t hi÷n, h∑y mai Æi luy÷n tÀp!")

	local d = openfile("script/global/bil4i3n/bil4i3n_log/item_MocNhanLenh.log", "a")
		write(d, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tAcc: "..GetAccount().."\tName: "..GetName().."\tCallCount: ".._1.."\tMAP: "..w..", "..(floor(x/8))..", "..(floor(y/16)).."\n")
	closefile(d)
	
end










