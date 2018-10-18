Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

local bil_tb_1 = {
	[4302] = {5918, "ThÇn m·"},
	[4303] = {5916, "Hång ¶nh"},
	[4304] = {5914, "Nhu t×nh"},
	[4305] = {5912, "HiÖp cèt"},
	[4306] = {5910, "§Şnh quèc"},
	[4307] = {5908, "An bang"},
}

function main(bil_1)
	local bil_2_G, bil_2_D, bil_2_P, bil_2_L, bil_2_S = GetItemProp(bil_1)
	if not(%bil_tb_1[bil_2_P]) or bil_2_G ~= 6 or bil_2_D ~= 1 then
		Msg2Player(bil.C(10, "HÖ thèng kh«ng x¸c minh ®­îc vËt phÈm, vui lßng liªn hÖ víi GM"))
		return 1
	end
	local bil_3 = random(50, 100)
	SetTask(%bil_tb_1[bil_2_P][1], GetTask(%bil_tb_1[bil_2_P][1]) + bil_3)
	Msg2Player(bil.C(10, "NgÉu nhiªn nhËn ®­îc "..bil_3.." ®iÓm tİch lòy phóc lîi "..%bil_tb_1[bil_2_P][2]..". Tæng tİch lòy tõ Phóc lîi ®¬n ["..%bil_tb_1[bil_2_P][2].."] lµ: "..GetTask(%bil_tb_1[bil_2_P][1])))
	return 0
end
























