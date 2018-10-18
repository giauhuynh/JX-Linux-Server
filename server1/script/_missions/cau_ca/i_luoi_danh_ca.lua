Include("\\script\\lib\\progressbar.lua")
Include("\\script\\_missions\\cau_ca\\head.lua")

local m_CauCa_Item_LuoiDC_ONLOAD2 = function(_ItemIndex)
	local a = GetItemParam( _ItemIndex, 1 )
	
	if a <= 1 then
		RemoveItemByIndex(_ItemIndex)
	else
		SetSpecItemParam(_ItemIndex, 1, (a - 1))
		SyncItem(_ItemIndex)
	end
	
	RestoreOwnFeature()

	if random(1,100) <= 70 then
		AddItem(6,1,4335,1,0,0,0)
		return Msg2Player("<color=0xa9ffe0>§©y råi, ®©y råi!")
	end
	Msg2Player("<color=yellow>ThËt ®¸ng tiÕc, kh«ng cã con c¸ nµo!")
end

local m_CauCa_Item_LuoiDC_ONLOAD = function(_ItemIndex)
	return tbProgressBar:OpenByConfig(25, %m_CauCa_Item_LuoiDC_ONLOAD2, {_ItemIndex}, %m_CauCa_Item_LuoiDC_ONLOAD2, {_ItemIndex})
end

local  m_CauCa_Item_LuoiDC_ONBREAK = function()
	RestoreOwnFeature()
	Msg2Player("Qu¸ tr×nh bÞ gi¸ng ®o¹n.")
end

function main(_ItemIndex)
	if GetItemParam(_ItemIndex, 1) <= 0 then
		Msg2Player("VËt phÈm nµy ®· sè hÕt lÇn sö dông.")
		return 0
	end

	local a_G, a_D, a_P, a_L, a_S = GetItemProp(_ItemIndex)
	
	if a_P ~= 4332 then
		Talk(1, "", "Kh«ng x¸c ®Þnh ®­îc vËt phÈm, xin thö l¹i hoÆc liªn hÖ víi bé phËn hç trî ®Ó ®­îc trî gióp!")
		return 1
	end
	
	if m_CauCa:isCantBegin() then
		return 1
	end
	
	m_CauCa:ChangeFeature()
	
	tbProgressBar:OpenByConfig(3, %m_CauCa_Item_LuoiDC_ONLOAD, {_ItemIndex}, %m_CauCa_Item_LuoiDC_ONBREAK, {})
	
	return 1
end

function GetDesc( nItemIdx )
	return format("Sè lÇn nÐm l­íi cßn l¹i: <color=green>%d<color> lÇn", tonumber(GetItemParam( nItemIdx, 1 )))
end






























