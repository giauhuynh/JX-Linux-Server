Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

function main()
	if CountFreeRoomByWH(1, 1) <= 0 then
		bil.Talk("Vui lßng ®Ó trèng Ýt nhÊt 1 « hµnh trang míi cã thÓ sö dông vËt phÈm nµy!")
		return 1
	end
	
	local a = {56, 57,58,37,38,39,27,28,45,46,47,48,49,59,42,43,40,41,54,55,35,36,53,33,34,50,51,52}
	
	AddItem(6, 1, a[random(1, getn(a))], 1, 0,0,0)
	
	Msg2Player(bil.C(1, "§· nhËn ®­îc 1 cuèn mËt tÞch tõ BÝ KÝp LÔ Bao!"))

	return 0
end

























