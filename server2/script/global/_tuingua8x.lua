
function main(nItemIdx)
	if CountFreeRoomByWH(2, 3) > 0 then
		local bilRandom = floor((random(0,200) + random(0,200))/2)
		if bilRandom <= 20 then
			if random(1,3) == 2 then
				AddItem(0,10,5,10,0,0,0)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=yellow>ChiÕu D¹ Ngäc S­ Tö<color> tõ <color=green>Tói ngùa 8x")
				return 0
			end
		elseif bilRandom <= 40 then
			AddItem(0,10,5,9,0,0,0)
			Msg2Player("Chóc mõng b¹n ®· nhËn ®­îc <color=yellow>§İch L«<color> thÇn m· tõ <color=green>tói ngùa 8x")
			return 0
		elseif bilRandom <= 60 then
			AddItem(0,10,5,8,0,0,0)
			Msg2Player("Chóc mõng b¹n ®· nhËn ®­îc <color=yellow>TuyÖt ¶nh<color> thÇn m· tõ <color=green>tói ngùa 8x")
			return 0
		elseif bilRandom <= 100 then
			AddItem(0,10,5,7,0,0,0)
			Msg2Player("Chóc mõng b¹n ®· nhËn ®­îc <color=yellow>Xİch Thè<color> thÇn m· tõ <color=green>tói ngùa 8x")
			return 0
		elseif bilRandom <= 200 then
			AddItem(0,10,5,6,0,0,0)
			Msg2Player("Chóc mõng b¹n ®· nhËn ®­îc <color=yellow>¤ V©n §¹p TuyÕt<color> thÇn m· tõ <color=green>tói ngùa 8x")
			return 0
		end
	else
		Talk(1, "", "Hµnh trang cña b¹n ph¶i trèng İt nhÊt 6 «: 2x3 ®Ó chõa chç cho 1 chiÕn m·.")
		return 1
	end
end

function GetDesc( nItemIdx )
	return "<color=green>     Mét chiÕc tói nhá thÇn kú, më ra ngÉu nhiªn sÏ nhËn ®­îc nh÷ng thÇn m· sau     <color><color=Orange><enter>¤ V©n §¹p TuyÕt<enter>Xİch Thè<enter>TuyÖt ¶nh<enter>§İch L«<enter>ChiÕu D¹ Ngäc S­ Tö<enter>";
end





























