Include("\\script\\lib\\progressbar.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\_missions\\cau_ca\\head.lua")

m_CauCa.Item = {
	[4331] = {"C�n C�u Tr�c", 6, 1, 4331},
	[4332] = {"L��i ��nh C�", 6, 1, 4332},
	[4333] = {"Giun ��t", 6, 1, 4333},
	[4334] = {"C� R� ��ng", 6, 1, 4334},
	[4335] = {"C� Ch�p H�ng", 6, 1, 4335},
}

local m_CauCa_Item_CanCau_ONLOAD2 = function()
	ConsumeEquiproomItem(1,6,1,4333,-1)
	RestoreOwnFeature()

	if random(1,100) <= 70 then
		AddItem(6,1,4334,1,0,0,0)
		return Msg2Player("<color=0xa9ffe0>��y r�i, ��y r�i!")
	end
	Msg2Player("<color=yellow>Th�t ��ng ti�c, kh�ng c� con c� n�o!")
end

local m_CauCa_Item_CanCau_ONLOAD = function()
	return tbProgressBar:OpenByConfig(25, %m_CauCa_Item_CanCau_ONLOAD2, {}, %m_CauCa_Item_CanCau_ONLOAD2, {})
end

local m_CauCa_Item_ONBREAK = function()
	RestoreOwnFeature()
	Msg2Player("Qu� tr�nh b� gi�ng �o�n.")
end

function main(_ItemIndex)
	local a_G, a_D, a_P, a_L, a_S = GetItemProp(_ItemIndex)
	
	if not(m_CauCa.Item[a_P]) or a_G ~= 6 then
		Talk(1, "", "Kh�ng x�c ��nh ���c v�t ph�m, xin th� l�i ho�c li�n h� v�i b� ph�n h� tr� �� ���c tr� gi�p!")
		return 1
	end
	
	if a_P == 4333 then
		Talk(1, "", "H�y d�ng c�n c�u �� c�u c�, giun ��t ch� l� m�i nh�!")
		return 1
	end
	
	if a_P == 4331 then
		if m_CauCa:isCantBegin() then
			return 1
		end
	
		if CalcEquiproomItemCount(6,1,4333,-1) < 1 then
			Talk(1, "", "M�i c�u �� h�t, h�y �i ��o giun ��t �� ti�p t�c!")
			return 1
		end
		
		m_CauCa:ChangeFeature()
		
		tbProgressBar:OpenByConfig(3, %m_CauCa_Item_CanCau_ONLOAD, {}, %m_CauCa_Item_ONBREAK, {})
		return 1
	end
	
	if a_P == 4334 or a_P == 4335 then
		local b = tonumber(GetLocalDate("%m%d"))
		local c_D, c_E = GetTask(5873), GetTask(5872)
		
		if c_D ~= b then
			SetTask(5873, b)
			SetTask(5872, 0)
		elseif c_E >= 100000000 then
			Talk(1, "", "H�m nay c�c h� �� s� d�ng qu� nhi�u c� trong ng�y r�i, l�m d�ng Omega3 s� kh�ng t�t cho n�i c�ng, ng�y mai h�y ti�p t�c v�y!")
			return 1
		end
		
		local d = {
			e = {
				[4334] = {{50000, 1000}, {75000, 800}, {100000, 600}, {125000, 400}, {150000, 200}},
				[4335] = {{100000, 1000}, {150000, 800}, {200000, 600}, {250000, 400}, {300000, 200}},
			},
			i = {
				[4335] = {
					{{4,238,1,1,0,0,0}, 20},
					{{4,239,1,1,0,0,0}, 20},
					{{4,240,1,1,0,0,0}, 20},
					{{4,353,1,1,0,0,0}, 20},
					
					{{6,1,125,1,0,0,0}, 50},
					{{6,1,71,1,0,0,0}, 30},
					{{6,1,1181,1,0,0,0}, 5},
					
					{{1}, 50}
				}
			},
		}
		
		local e_e, e_e_n, e_e_r, e_i, e_i_n, e_i_r
		
		if d.e[a_P] then
			e_e_n = getn(d.e[a_P])
			e_e = bil.InitRandMemTb(e_e_n)
			e_e_r = random(1, 1000)
			
			for _i = 1, e_e_n do
				if d.e[a_P][e_e[_i]][2]  >=  e_e_r then
					AddOwnExp(d.e[a_P][e_e[_i]][1])
					SetTask(5872, d.e[a_P][e_e[_i]][1] + GetTask(5872))
					Msg2Player(bil.C(9, "Ng�u nhi�n nh�n ���c "..d.e[a_P][e_e[_i]][1].." �i�m kinh nghi�m!"))
					break
				end
			end
		end
		
		if d.i[a_P] then
			e_i_n = getn(d.i[a_P])
			e_i = bil.InitRandMemTb(e_i_n)
			e_i_r = random(1, 1000)
			
			for _i2 = 1, e_i_n do
				if d.i[a_P][e_i[_i2]][2]  >=  e_i_r then
					if d.i[a_P][e_i[_i2]][1][1] == 1 then
						Earn(random(100000, 500000))
						Msg2Player(bil.C(9, "Ng�u nhi�n nh�n ���c ti�n v�n!"))
						break
					end
					
					AddItem(unpack(d.i[a_P][e_i[_i2]][1]))
					Msg2Player(bil.C(9, "Ng�u nhi�n nh�n ���c ph�n th��ng!"))
					break
				end
			end
		end
	end

	return 0
end
































