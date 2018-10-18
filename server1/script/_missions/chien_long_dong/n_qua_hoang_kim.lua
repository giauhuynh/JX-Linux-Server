IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\_missions\\chien_long_dong\\head.lua")

local m_ChienLongDong_Item_Gold_ONGIVE = function(_P, Index)
	local nItemIndex = AddItemNoStack(6,1,_P,1,0,0,0)
	ITEM_SetExpiredTime(nItemIndex, FormatTime2Date(7 * 24 * 60 *60 + GetCurServerTime()))
	SyncItem(nItemIndex)
	DelNpc(Index)
	
	bil.Msg2AllWorld(bil.C(1, GetName())..bil.C(10, " t¹i ChiÕn Long §éng ®· h¸i ®­îc 1 Qu¶ Hoµng Kim, xin chóc mõng!"))
end
local m_ChienLongDong_Item_Gold_ONBREAK = function()
	Msg2Player("Qu¸ tr×nh h¸i qu¶ bÞ gi¸ng ®o¹n!")
end

function m_ChienLongDong:Item_Gold(Index)
	local a = 
	{
		[1] = {10, 79, "S¬ cÊp", 904},
		-- [2] = {80, 109, "Trung cÊp", 905},
		[2] = {80, 200, "Trung cÊp", 905},
		[3] = {110, 200, "Cao cÊp", 906},
		[4] = {110, 200, "Hoµng Kim", 907},
	}
	local b, c = GetLevel(), 4
	
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
		return NpcChat(Index, "Qu¶ Hoµng Kim:")
	end
	
	if CalcFreeItemCellCount() < 1 then
		return Talk(1, "", "H·y s¾p xÕp l¹i hµnh trang vµ ph¶i cã Ýt nhÊt 1 « trèng míi cã thÓ h¸i qu¶!")
	end
	
	tbProgressBar:OpenByConfig(24, %m_ChienLongDong_Item_Gold_ONGIVE, {a[c][4], Index}, %m_ChienLongDong_Item_Gold_ONBREAK, {})
end

function main()
	local a = GetLastDiagNpc()
	return m_ChienLongDong:Item_Gold(a)
end


































