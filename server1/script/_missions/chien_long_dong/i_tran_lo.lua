
function main(iIndex)
	local a = {
		[2266] = {2669, "B¸ch Niªn Tr©n Lé", 2, "h¸i qu¶ Huy Hoµng - S¬ cÊp sÏ nhËn ®­îc 1 B¸ch Niªn Huy Hoµng Qu¶", {10, 79}},
		-- [2267] = {2670, "Thiªn Niªn Tr©n Lé", 3, "h¸i qu¶ Huy Hoµng - Trung cÊp sÏ nhËn ®­îc 1 Thiªn Niªn Huy Hoµng Qu¶", {80, 109}},
		[2267] = {2670, "Thiªn Niªn Tr©n Lé", 3, "h¸i qu¶ Huy Hoµng - Trung cÊp sÏ nhËn ®­îc 1 Thiªn Niªn Huy Hoµng Qu¶", {80, 200}},
		[2268] = {2671, "V¹n Niªn Tr©n Lé", 4, "h¸i qu¶ Huy Hoµng - Cao cÊp sÏ nhËn ®­îc 1 V¹n Niªn Huy Hoµng Qu¶", {110, 200}},
	}
	
	local b_G, b_D, b_P, _, _ = GetItemProp(iIndex)
	
	if not(a[b_P]) or b_G ~= 6 then
		Msg2Player("Kh«ng x¸c ®Þnh ®­îc ®¹o cô, xin thö l¹i hoÆc liªn hÖ víi bé phËn hç trî!")
		return 1
	end	
	
	if GetLevel() < a[b_P][5][1] or GetLevel() > a[b_P][5][2] then
		Msg2Player(a[b_P][2].." chØ sö dông cho nh©n vËt tõ cÊp "..a[b_P][5][1].." ®Õn cÊp "..a[b_P][5][2])
		return 1
	end
	
	local nDate = tonumber(GetLocalDate("%m%d"))
	
	SetTask(a[b_P][1], 1)
	SetTask(2312, nDate)
	
	Talk(1, "", "§· nhËn tr¹ng th¸i "..a[b_P][2]..". Tr¹ng th¸i nµy sÏ mÊt khi h¸i ®­îc qu¶, hoÆc ®Õn 0h00 cïng ngµy!")
	return 0
end



































