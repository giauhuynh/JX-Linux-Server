IncludeLib("SETTING")
IncludeLib("RELAYLADDER")

iBoHoa = {
	m = {
		[53  ] = {1616,3212},
		[20  ] = {3501, 6147},
		[99  ] = {1631, 3201},
		[100] = {1648, 3145},
		[101] = {1693, 3169},
		[121] = {1944, 4502},
		[153] = {1611, 3216},
		[174] = {1623, 3196},

		[11  ] = {3146, 5054},
		[78  ] = {1595, 3213},
		[1    ] = {1583, 3181},
		[162] = {1596, 3133},
		[37  ] = {1771, 3055},
		[80  ] = {1775, 3022},
		[176] = {1471, 3245},
	},
}

iBoHoa.a = {
	{v = {1, 10}, n = "Danh v�ng", r = 20},
	{v = {1, 9}, n = "Danh v�ng", r = 30},
	{v = {1, 8}, n = "Danh v�ng", r = 30},
	{v = {1, 7}, n = "Danh v�ng", r = 40},
	{v = {1, 6}, n = "Danh v�ng", r = 40},
	{v = {1, 5}, n = "Danh v�ng", r = 50},
	{v = {1, 4}, n = "Danh v�ng", r = 50},
	{v = {1, 3}, n = "Danh v�ng", r = 60},
	{v = {1, 2}, n = "Danh v�ng", r = 80},
	{v = {1, 1}, n = "Danh v�ng", r = 100},
	
	{v = {2, 5}, n = "Ph�c duy�n", r = 20},
	{v = {2, 5}, n = "Ph�c duy�n", r = 30},
	{v = {2, 4}, n = "Ph�c duy�n", r = 30},
	{v = {2, 4}, n = "Ph�c duy�n", r = 40},
	{v = {2, 3}, n = "Ph�c duy�n", r = 40},
	{v = {2, 3}, n = "Ph�c duy�n", r = 50},
	{v = {2, 2}, n = "Ph�c duy�n", r = 50},
	{v = {2, 2}, n = "Ph�c duy�n", r = 60},
	{v = {2, 1}, n = "Ph�c duy�n", r = 80},
	{v = {2, 1}, n = "Ph�c duy�n", r = 100},	
}

function iBoHoa:InitRandMemTb(bil_1)
	local bil_tb, bil_2, bil_3 = {}, 0, 0
	for i = 1, bil_1 do tinsert(bil_tb, i) end
	for i2 = 1, bil_1 do
		bil_2 = random(1, bil_1)
		bil_3 = bil_tb[i2]
		bil_tb[i2] = bil_tb[bil_2]
		bil_tb[bil_2] = bil_3
	end
	return bil_tb
end

function iBoHoa:Main(ItemIndex, bIsExpired)

	if GetLevel() < 30 then
		return Talk(1, "", "V�t ph�m n�y y�u c�u ng��i ch�i t� c�p 30 tr� l�n m�i c� th� s� d�ng, th�c l�c c�a ��i hi�p hi�n t�i kh�ng n�n l�m d�ng v�t ph�m n�y")
	end

	local a_w, a_x, a_y = GetWorldPos()
	local b = 7
	
	if not(bIsExpired) then
		if not(self.m[a_w]) then
			return Talk(1, "", "Trong th�i gian di�n ra s� ki�n, b�n vui l�ng di chuy�n ��n khu v�c c� 'C� Qu�c Kh�nh' � c�c th�nh th� v� t�n th� th�n �� d�ng hoa!")
		end
		
		if ((self.m[a_w][1] + b) < a_x or (self.m[a_w][1] - b) > a_x) or ((self.m[a_w][2] + b) < a_y or (self.m[a_w][2] - b) > a_y) then
			Talk(1, "", "Trong th�i gian di�n ra s� ki�n, b�n vui l�ng di chuy�n ��n khu v�c c� 'C� Qu�c Kh�nh' � c�c th�nh th� v� t�n th� th�n �� d�ng hoa!")
			return ST_SyncMiniMapObj(self.m[a_w][1]*32, self.m[a_w][2]*32)
		end
	end

	if CalcFreeItemCellCount() < 1 then
		return Talk(1, "", "H�y s�p x�p l�i h�nh trang v� ph�i c� �t nh�t 1 � tr�ng m�i c� th� s� d�ng ��o c� n�y!")
	end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	local c = 3000
	local c_c = GetTask(5880)
	
	if c_c >= c then
		return Talk(1, "", "C�c h� �� ��t ��n c�nh gi�i d�ng hoa qu�c kh�nh!")
	end
	
	local a_G, a_D, a_P, _, _ = GetItemProp(ItemIndex)
	ConsumeEquiproomItem(1,a_G,a_D,a_P,-1)
	
	SetTask(5880, (c_c + 1))
	
	AddOwnExp(500000)
	
	Ladder_NewLadder(10478, GetName(), (c_c + 1), 1)
	
	if mod((c_c + 1), 10) == 0 then
		Msg2Player("B� hoa qu�c kh�nh: <color=yellow>"..(c_c + 1).."/3000<color> l�n")
	end
	
	local d_r1, d_r2 = self:InitRandMemTb(getn(self.a)), random(1, 1000)
	
	for _i = 1, getn(self.a) do
		if self.a[d_r1[_i]].r >= d_r2 then
			if self.a[d_r1[_i]].v[1] == 1 then
				AddRepute(self.a[d_r1[_i]].v[2])
			elseif self.a[d_r1[_i]].v[1] == 2 then
				SetTask(151, (self.a[d_r1[_i]].v[2] + GetTask(151)))
			end
			
			--CastSkill(968,20)
			--CastSkill(971,20)
			--AddSkillState( 509, 1, 0, 500);
			return Msg2Player("May m�n nh�n ���c <color=green>"..self.a[d_r1[_i]].v[2].." "..self.a[d_r1[_i]].n)
		end
	end
	
end

































