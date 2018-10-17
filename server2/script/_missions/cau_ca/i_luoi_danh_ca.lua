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
		return Msg2Player("<color=0xa9ffe0>��y r�i, ��y r�i!")
	end
	Msg2Player("<color=yellow>Th�t ��ng ti�c, kh�ng c� con c� n�o!")
end

local m_CauCa_Item_LuoiDC_ONLOAD = function(_ItemIndex)
	return tbProgressBar:OpenByConfig(25, %m_CauCa_Item_LuoiDC_ONLOAD2, {_ItemIndex}, %m_CauCa_Item_LuoiDC_ONLOAD2, {_ItemIndex})
end

local  m_CauCa_Item_LuoiDC_ONBREAK = function()
	RestoreOwnFeature()
	Msg2Player("Qu� tr�nh b� gi�ng �o�n.")
end

function main(_ItemIndex)
	if GetItemParam(_ItemIndex, 1) <= 0 then
		Msg2Player("V�t ph�m n�y �� s� h�t l�n s� d�ng.")
		return 0
	end

	local a_G, a_D, a_P, a_L, a_S = GetItemProp(_ItemIndex)
	
	if a_P ~= 4332 then
		Talk(1, "", "Kh�ng x�c ��nh ���c v�t ph�m, xin th� l�i ho�c li�n h� v�i b� ph�n h� tr� �� ���c tr� gi�p!")
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
	return format("S� l�n n�m l��i c�n l�i: <color=green>%d<color> l�n", tonumber(GetItemParam( nItemIdx, 1 )))
end






























