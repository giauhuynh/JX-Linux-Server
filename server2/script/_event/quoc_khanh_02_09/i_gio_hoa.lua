IncludeLib("SETTING")
IncludeLib("RELAYLADDER")
Include("\\script\\lib\\awardtemplet.lua")

iGioHoa = {
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

iGioHoa.a = {

	{v = {6,1,23,1,0,0,0}, 				e = 0, 		r = 1200, n = "Thi�t La H�n"},
	{v = {6,1,22,1,0,0,0}, 				e = 0, 		r = 40, n = "T�y T�y Kinh"},
	{v = {6,1,26,1,0,0,0}, 				e = 0, 		r = 40, n = "V� L�m M�t T�ch"},
	{v = {6,1,125,1,0,0,0}, 				e = 0, 		r = 280, n = "Qu� Hoa T�u"},
	{v = {6,1,12,1,0,0,0}, 				e = 0, 		r = 400, n = "B�n Nh��c T�m Kinh"},
	{v = {6,1,71,1,0,0,0}, 				e = 0, 		r = 700, n = "Ti�n Th�o L�"},
	{v = {6,1,4315,1,0,0,0}, 				e = 0, 		r = 350, n = "B� K�p L� Bao 90"},
	{v = {6,1,72,1,0,0,0}, 				e = 0, 		r = 600, n = "Thi�n s�n B�o L�"},
	{v = {4,238,1,1,0,0,0}, 				e = 0, 		r = 200, n = "Lam Th�y Tinh"},
	{v = {4,239,1,1,0,0,0}, 				e = 0, 		r = 200, n = "T� Th�y Tinh"},
	{v = {4,240,1,1,0,0,0}, 				e = 0, 		r = 200, n = "L�c Th�y Tinh"},
	{v = {4,353,1,1,0,0,0}, 				e = 0, 		r = 250, n = "Tinh H�ng B�o Th�ch"},
	{v = {6,1,122,1,0,0,0}, 				e = 0, 		r = 500, n = "Ph�c Duy�n L� (Ti�u)"},
	{v = {6,1,123,1,0,0,0}, 				e = 0, 		r = 400, n = "Ph�c Duy�n L� (Trung)"},
	{v = {6,1,124,1,0,0,0}, 				e = 0, 		r = 300, n = "Ph�c Duy�n L� (��i)"},
}

function iGioHoa:InitRandMemTb(bil_1)
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

function iGioHoa:Main(ItemIndex, bIsExpired)
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

	if CalcFreeItemCellCount() < 6 then
		return Talk(1, "", "H�y s�p x�p l�i h�nh trang v� ph�i c� �t nh�t 6 � tr�ng m�i c� th� s� d�ng ��o c� n�y!")
	end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	local c = 3000
	local c_c = GetTask(5879)
	
	if c_c >= c then
		return Talk(1, "", "C�c h� �� ��t ��n c�nh gi�i d�ng gi� hoa qu�c kh�nh!")
	end
	
	local a_G, a_D, a_P, _, _ = GetItemProp(ItemIndex)
	ConsumeEquiproomItem(1,a_G,a_D,a_P,-1)
	
	SetTask(5879, (c_c + 1))
	
	AddOwnExp(1000000)
	
	Ladder_NewLadder(10479, GetName(), (c_c + 1), 1)
	
	if mod((c_c + 1), 10) == 0 then
		Msg2Player("Gi� hoa qu�c kh�nh: <color=yellow>"..(c_c + 1).."/3000<color> l�n")
	end
	
	local d_r1, d_r2 = self:InitRandMemTb(getn(self.a)), random(1, 10000)
	
	for _i = 1, getn(self.a) do
		if self.a[d_r1[_i]].r >= d_r2 then
		
			local e = AddItem(unpack(self.a[d_r1[_i]].v))
			
			if self.a[d_r1[_i]].e > 0 then
				local nExpiredDate = FormatTime2Date(self.a[d_r1[_i]].e * 24 * 60 *60 + GetCurServerTime())
				ITEM_SetExpiredTime(e, nExpiredDate)
				SyncItem(e)
			end
			
			CastSkill(968,20)
			CastSkill(971,20)
			AddSkillState( 509, 1, 0, 500);
			Msg2Player("May m�n nh�n ���c <color=green>"..self.a[d_r1[_i]].n)
			
			if self.a[d_r1[_i]].l and self.a[d_r1[_i]].l == 1 then
				local d = openfile(format("script/_event/logs/event_id_%d__%s__%s.log", 1, "AwardItem", GetLocalDate("%d_%m_%y")), "a")
					write(d, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tEventID: 1\tItemExpired: "..self.a[d_r1[_i]].e.."\tItemName: "..self.a[d_r1[_i]].n.."\tAcc: "..GetAccount().."\tPlayer: "..GetName().."\n")
				closefile(d)
			end
			
			return
		end
	end
end



















