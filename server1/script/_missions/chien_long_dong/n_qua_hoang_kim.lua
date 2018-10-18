IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\_missions\\chien_long_dong\\head.lua")

local m_ChienLongDong_Item_Gold_ONGIVE = function(_P, Index)
	local nItemIndex = AddItemNoStack(6,1,_P,1,0,0,0)
	ITEM_SetExpiredTime(nItemIndex, FormatTime2Date(7 * 24 * 60 *60 + GetCurServerTime()))
	SyncItem(nItemIndex)
	DelNpc(Index)
	
	bil.Msg2AllWorld(bil.C(1, GetName())..bil.C(10, " t�i Chi�n Long ��ng �� h�i ���c 1 Qu� Ho�ng Kim, xin ch�c m�ng!"))
end
local m_ChienLongDong_Item_Gold_ONBREAK = function()
	Msg2Player("Qu� tr�nh h�i qu� b� gi�ng �o�n!")
end

function m_ChienLongDong:Item_Gold(Index)
	local a = 
	{
		[1] = {10, 79, "S� c�p", 904},
		-- [2] = {80, 109, "Trung c�p", 905},
		[2] = {80, 200, "Trung c�p", 905},
		[3] = {110, 200, "Cao c�p", 906},
		[4] = {110, 200, "Ho�ng Kim", 907},
	}
	local b, c = GetLevel(), 4
	
	if a[c] then
		if b < a[c][1] or b > a[c][2] then
			return Msg2Player("<color=yellow>Khu v�c "..a[c][3].." ch� d�nh cho c�c nh�n s� t� c�p "..a[c][1].." ��n "..a[c][2]..". N�ng l�c c�a ��i hi�p kh�ng ph� h�p v�i qu� n�y!")
		end
	else
		return Msg2Player("Kh�ng x�c ��nh ���c v�t th�, xin th� lai ho�c li�n h� v�i b� ph�n h� tr�!")
	end
	
	if (0 == GetCamp()) then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� h�i qu�.")
		return
	end
	if (0 == GetFightState() or GetLife(0) <= 0) then
		Msg2Player("Tr�ng th�i nh�n v�t hi�n t�i kh�ng th� h�i qu�.")
		return
	end
	
	if self.state.id == 1 then
		return NpcChat(Index, "Qu� Ho�ng Kim:")
	end
	
	if CalcFreeItemCellCount() < 1 then
		return Talk(1, "", "H�y s�p x�p l�i h�nh trang v� ph�i c� �t nh�t 1 � tr�ng m�i c� th� h�i qu�!")
	end
	
	tbProgressBar:OpenByConfig(24, %m_ChienLongDong_Item_Gold_ONGIVE, {a[c][4], Index}, %m_ChienLongDong_Item_Gold_ONBREAK, {})
end

function main()
	local a = GetLastDiagNpc()
	return m_ChienLongDong:Item_Gold(a)
end


































