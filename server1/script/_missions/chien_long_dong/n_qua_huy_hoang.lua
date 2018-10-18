IncludeLib("ITEM")
Include("\\script\\_missions\\chien_long_dong\\head.lua")

function m_ChienLongDong:Item(Index)
	local a = 
	{
		[1] = {10, 79, "S� c�p", 904, 2669, "B�ch ni�n huy ho�ng qu�", 2269},
		-- [2] = {80, 109, "Trung c�p", 905, 2670, "Thi�n ni�n huy ho�ng qu�", 2270},
		[2] = {80, 200, "Trung c�p", 905, 2670, "Thi�n ni�n huy ho�ng qu�", 2270},
		[3] = {110, 200, "Cao c�p", 906, 2671, "V�n ni�n huy ho�ng qu�", 2271},
	}
	local b, c = GetLevel(), GetNpcParam(Index, 1)
	
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
		return NpcChat(Index, "H�t Huy Ho�ng "..a[c][3]..":")
	end
	
	local d, e = GetNpcParam(Index, 2), GetCurServerTime()
	local f, g = GetTask(2310), GetTask(2311)
	
	if f ~= d then
		SetTask(2310, d)
		SetTask(2311, e)
		return Msg2Player("B�n �� ch�n qu� n�y, 10 gi�y sau c� th� h�i qu�!")
	else
		if e > (g + 10) or floor(10 - (e - g)) == 0 then
			if CalcFreeItemCellCount() < 1 then
				return Talk(1, "", "H�y s�p x�p l�i h�nh trang v� ph�i c� �t nh�t 1 � tr�ng m�i c� th� h�i qu�!")
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
				Msg2Player("B�n nh�n ���c m�t "..a[c][6])
			else
				Msg2Player("B�n nh�n ���c m�t qu� Huy Ho�ng ")
			end
			return
		else
			return Msg2Player(format("B�n �� ch�n qu� n�y, %d gi�y sau m�i c� th� h�i qu�!",(10 - (e - g))))
		end
	end
end

function main()
	local a = GetLastDiagNpc()
	return m_ChienLongDong:Item(a)
end


































