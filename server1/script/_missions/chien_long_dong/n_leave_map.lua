Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\_missions\\chien_long_dong\\head.lua")

function m_ChienLongDong:IsOpen()
	return ((self.timer.totalTimes[2] and self.timer.totalTimes[2] ~= 0) or self.state.id ~= 0) and 1 or nil
end

function m_ChienLongDong_nJoinMap2()
	local a_t = 
	{
		[1] = {10, 79, "S� c�p", 904},
		-- [2] = {80, 109, "Trung c�p", 905},
		[2] = {80, 200, "Trung c�p", 905},
		[3] = {110, 200, "Cao c�p", 906},
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
		[1] = {2266, "B�ch Ni�n Tr�n L�", 2, "h�i qu� Huy Ho�ng - S� c�p s� nh�n ���c 1 B�ch Ni�n Huy Ho�ng Qu�"},
		[2] = {2267, "Thi�n Ni�n Tr�n L�", 3, "h�i qu� Huy Ho�ng - Trung c�p s� nh�n ���c 1 Thi�n Ni�n Huy Ho�ng Qu�"},
		[3] = {2268, "V�n Ni�n Tr�n L�", 4, "h�i qu� Huy Ho�ng - Cao c�p s� nh�n ���c 1 V�n Ni�n Huy Ho�ng Qu�"},
	}
	
	if _2 and _2 == 1 then
		if CalcEquiproomItemCount(4,417,1,-1) < a[_1][3] then
			return bil.Talk("C�c h� kh�ng �� "..a[_1][3].." Ti�n ��ng, kh�ng th� mua v�t ph�m n�y!")
		end
		
		ConsumeEquiproomItem((a[_1][3]),4,417,1,-1)
		AddItem(6,1,a[_1][1],1,0,0,0)
		
		Msg2Player("Mua ���c "..a[_1][2])
		return
	end
	
	return Say(a[_1][2].." ph�t huy t�c d�ng khi "..a[_1][4].." <enter>Gi�: "..a[_1][3].." Ti�n ��ng m�i b�nh, c�c h� c� mu�n mua kh�ng?", 2, "Mua th� 1 b�nh!/#m_ChienLongDong_nJoinMap_BuyItem(".._1..", 1)", "Th�i kh�ng mua/bil.OnCancel")
end

function m_ChienLongDong_nJoinMap()
	if not(m_ChienLongDong:IsOpen()) then
		return Talk(1, "", "B�n �� Chi�n Long ��ng hi�n t�i �� ��ng, kh�ng th� truy�n t�ng!")
	end
	
	local a = {
		{
			M = "�i ��n b�n �� Chi�n Long ��ng",
			P = {c = {{m_ChienLongDong_nJoinMap2, {}}}}
		},
		{
			M = "Mua B�ch Ni�n Tr�n L� - Th�p",
			H = {{GetLevel, -1, {}, 10}, {GetLevel, 1, {}, 79}},
			P = {c = {{m_ChienLongDong_nJoinMap_BuyItem, {1}}}}
		},
		{
			M = "Mua Thi�n Ni�n Tr�n L� - Trung",
			-- H = {{GetLevel, -1, {}, 80}, {GetLevel, 1, {}, 109}},
			H = {{GetLevel, -1, {}, 80}, {GetLevel, 1, {}, 200}},
			P = {c = {{m_ChienLongDong_nJoinMap_BuyItem, {2}}}}
		},
		-- {
			-- M = "Mua V�n Ni�n Tr�n L� - Cao",
			-- H = {{GetLevel, -1, {}, 110}},
			-- P = {c = {{m_ChienLongDong_nJoinMap_BuyItem, {3}}}}
		-- },
		
		{
			M = "[GM] ��n Chi�n Long ��ng - S�",
			H = {{GetName, 2, {}, bilNameOfGameMaster}},
			P = {c = {{NewWorld, {989, 1582,3204}}}}
		},
		{
			M = "[GM] ��n Chi�n Long ��ng - Trung",
			H = {{GetName, 2, {}, bilNameOfGameMaster}},
			P = {c = {{NewWorld, {990, 1690,3154}}}}
		},
		{
			M = "[GM] ��n Chi�n Long ��ng - Cao",
			H = {{GetName, 2, {}, bilNameOfGameMaster}},
			P = {c = {{NewWorld, {991, 1690,3154}}}}
		},
	}

	return bil.Say(a, "Chi�n Long ��ng l� n�i ch�a ��ng linh kh� c�a ��t tr�i!")
end

function main()
	local tbDialog =
	{
	  	"R�i kh�i khu v�c/UseTownPortal",
	  	"L�t n�a quay l�i /no",
	}
	
	Describe("<color=yellow>Ng��i truy�n t�ng Chi�n Long ��ng: <color>ng��i ��nh nh� ta ��a ng��i ra �?",getn(tbDialog), unpack(tbDialog))
end

function no()
end






































