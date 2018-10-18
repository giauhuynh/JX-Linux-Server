Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

function main()
	if CountFreeRoomByWH(1,1) < 1 then
		Msg2Player("B¹n ph¶i ®Ó trèng Ýt nhÊt 1 « hµnh trang míi cã thÓ sö dông ®­îc vËt phÈm nµy!")
		return 1
	end
	local bil_1 = random(20, 100)
	AddStackItem(bil_1,6,1,1499,1,0,0,0)
	Msg2Player(bil.C(10, "B¹n ngÉu nhiªn nhËn ®­îc "..bil_1.." khiªu chiÕn lÖnh!"))
	return 0
end

































