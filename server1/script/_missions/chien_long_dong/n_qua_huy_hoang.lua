IncludeLib("ITEM")
Include("\\script\\_missions\\chien_long_dong\\head.lua")

function m_ChienLongDong:Item(Index)
	local a = 
	{
		[1] = {10, 79, "S¬ cÊp", 904, 2669, "B¸ch niªn huy hoµng qu¶", 2269},
		-- [2] = {80, 109, "Trung cÊp", 905, 2670, "Thiªn niªn huy hoµng qu¶", 2270},
		[2] = {80, 200, "Trung cÊp", 905, 2670, "Thiªn niªn huy hoµng qu¶", 2270},
		[3] = {110, 200, "Cao cÊp", 906, 2671, "V¹n niªn huy hoµng qu¶", 2271},
	}
	local b, c = GetLevel(), GetNpcParam(Index, 1)
	
	if a[c] then
		if b < a[c][1] or b > a[c][2] then
			return Msg2Player("<color=yellow>Khu vùc "..a[c][3].." chØ dµnh cho c¸c nh©n sÜ tõ cÊp "..a[c][1].." ®Õn "..a[c][2]..". N¨ng lùc cña ®¹i hiÖp kh«ng phï hîp víi qu¶ nµy!")
		end
	else
		return Msg2Player("Kh«ng x¸c ®Þnh ®­îc vËt thÓ, xin thö lai hoÆc liªn hÖ víi bé phËn hç trî!")
	end
	
	if (0 == GetCamp()) then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ h¸i qu¶.")
		return
	end
	if (0 == GetFightState() or GetLife(0) <= 0) then
		Msg2Player("Tr¹ng th¸i nh©n vËt hiÖn t¹i kh«ng thÓ h¸i qu¶.")
		return
	end
	
	if self.state.id == 1 then
		return NpcChat(Index, "H¹t Huy Hoµng "..a[c][3]..":")
	end
	
	local d, e = GetNpcParam(Index, 2), GetCurServerTime()
	local f, g = GetTask(2310), GetTask(2311)
	
	if f ~= d then
		SetTask(2310, d)
		SetTask(2311, e)
		return Msg2Player("B¹n ®· chän qu¶ nµy, 10 gi©y sau cã thÓ h¸i qu¶!")
	else
		if e > (g + 10) or floor(10 - (e - g)) == 0 then
			if CalcFreeItemCellCount() < 1 then
				return Talk(1, "", "H·y s¾p xÕp l¹i hµnh trang vµ ph¶i cã Ýt nhÊt 1 « trèng míi cã thÓ h¸i qu¶!")
			end
		
			SetTask(2310, 0)
			SetTask(2311, 0)
			
			local h = a[c][4]
			
			if GetTask(a[c][5]) == 1 then
				h = a[c][7]
				SetTask(a[c][5], 0)
			end
			
			local nItemIndex = AddItemNoStack(6,1,h,1,0,0,0)
			ITEM_SetExpiredTime(nItemIndex, FormatTime2Date(7 * 24 * 60 *60 + e))
			SyncItem(nItemIndex)
			DelNpc(Index)
			
			if h ~= a[c][4] then
				Msg2Player("B¹n nhËn ®­îc mét "..a[c][6])
			else
				Msg2Player("B¹n nhËn ®­îc mét qu¶ Huy Hoµng ")
			end
			return
		else
			return Msg2Player(format("B¹n ®· chän qu¶ nµy, %d gi©y sau míi cã thÓ h¸i qu¶!",(10 - (e - g))))
		end
	end
end

function main()
	local a = GetLastDiagNpc()
	return m_ChienLongDong:Item(a)
end


































