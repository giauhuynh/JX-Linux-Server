Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\_missions\\chien_long_dong\\head.lua")

function m_ChienLongDong:IsOpen()
	return ((self.timer.totalTimes[2] and self.timer.totalTimes[2] ~= 0) or self.state.id ~= 0) and 1 or nil
end

function m_ChienLongDong_nJoinMap2()
	local a_t = 
	{
		[1] = {10, 79, "S¬ cÊp", 904},
		-- [2] = {80, 109, "Trung cÊp", 905},
		[2] = {80, 200, "Trung cÊp", 905},
		[3] = {110, 200, "Cao cÊp", 906},
	}
	local a, a_l = 0, GetLevel()
	
	for _i = 1, getn(a_t) do
		if a_l >= a_t[_i][1] and a_l <= a_t[_i][2] then
			a = _i
			break
		end
	end
	
	local b = random(1, getn(m_ChienLongDong.maps[a][4]))
	
	NewWorld(m_ChienLongDong.maps[a][1], m_ChienLongDong.maps[a][4][b][1], m_ChienLongDong.maps[a][4][b][2])
end

function m_ChienLongDong_nJoinMap_BuyItem(_1, _2)
	local a = {
		[1] = {2266, "B¸ch Niªn Tr©n Lé", 2, "h¸i qu¶ Huy Hoµng - S¬ cÊp sÏ nhËn ®­îc 1 B¸ch Niªn Huy Hoµng Qu¶"},
		[2] = {2267, "Thiªn Niªn Tr©n Lé", 3, "h¸i qu¶ Huy Hoµng - Trung cÊp sÏ nhËn ®­îc 1 Thiªn Niªn Huy Hoµng Qu¶"},
		[3] = {2268, "V¹n Niªn Tr©n Lé", 4, "h¸i qu¶ Huy Hoµng - Cao cÊp sÏ nhËn ®­îc 1 V¹n Niªn Huy Hoµng Qu¶"},
	}
	
	if _2 and _2 == 1 then
		if CalcEquiproomItemCount(4,417,1,-1) < a[_1][3] then
			return bil.Talk("C¸c h¹ kh«ng ®ñ "..a[_1][3].." TiÒn ®ång, kh«ng thÓ mua vËt phÈm nµy!")
		end
		
		ConsumeEquiproomItem((a[_1][3]),4,417,1,-1)
		AddItem(6,1,a[_1][1],1,0,0,0)
		
		Msg2Player("Mua ®­îc "..a[_1][2])
		return
	end
	
	return Say(a[_1][2].." ph¸t huy t¸c dông khi "..a[_1][4].." <enter>Gi¸: "..a[_1][3].." TiÒn ®ång mçi b×nh, c¸c h¹ cã muèn mua kh«ng?", 2, "Mua thö 1 b×nh!/#m_ChienLongDong_nJoinMap_BuyItem(".._1..", 1)", "Th«i kh«ng mua/bil.OnCancel")
end

function m_ChienLongDong_nJoinMap()
	if not(m_ChienLongDong:IsOpen()) then
		return Talk(1, "", "B¶n ®å ChiÕn Long §éng hiÖn t¹i ®· ®ãng, kh«ng thÓ truyÒn tèng!")
	end
	
	local a = {
		{
			M = "§i ®Õn b¶n ®å ChiÕn Long §éng",
			P = {c = {{m_ChienLongDong_nJoinMap2, {}}}}
		},
		{
			M = "Mua B¸ch Niªn Tr©n Lé - ThÊp",
			H = {{GetLevel, -1, {}, 10}, {GetLevel, 1, {}, 79}},
			P = {c = {{m_ChienLongDong_nJoinMap_BuyItem, {1}}}}
		},
		{
			M = "Mua Thiªn Niªn Tr©n Lé - Trung",
			-- H = {{GetLevel, -1, {}, 80}, {GetLevel, 1, {}, 109}},
			H = {{GetLevel, -1, {}, 80}, {GetLevel, 1, {}, 200}},
			P = {c = {{m_ChienLongDong_nJoinMap_BuyItem, {2}}}}
		},
		-- {
			-- M = "Mua V¹n Niªn Tr©n Lé - Cao",
			-- H = {{GetLevel, -1, {}, 110}},
			-- P = {c = {{m_ChienLongDong_nJoinMap_BuyItem, {3}}}}
		-- },
		
		{
			M = "[GM] §Õn ChiÕn Long §éng - S¬",
			H = {{GetName, 2, {}, bilNameOfGameMaster}},
			P = {c = {{NewWorld, {989, 1582,3204}}}}
		},
		{
			M = "[GM] §Õn ChiÕn Long §éng - Trung",
			H = {{GetName, 2, {}, bilNameOfGameMaster}},
			P = {c = {{NewWorld, {990, 1690,3154}}}}
		},
		{
			M = "[GM] §Õn ChiÕn Long §éng - Cao",
			H = {{GetName, 2, {}, bilNameOfGameMaster}},
			P = {c = {{NewWorld, {991, 1690,3154}}}}
		},
	}

	return bil.Say(a, "ChiÕn Long §éng lµ n¬i chøa ®ùng linh khÝ cña ®Êt trêi!")
end

function main()
	local tbDialog =
	{
	  	"Rêi khái khu vùc/UseTownPortal",
	  	"L¸t n÷a quay l¹i /no",
	}
	
	Describe("<color=yellow>Ng­êi truyÒn tèng ChiÕn Long §éng: <color>ng­¬i ®Þnh nhê ta ®­a ng­¬i ra ­?",getn(tbDialog), unpack(tbDialog))
end

function no()
end






































