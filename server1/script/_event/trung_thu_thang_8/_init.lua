Include("\\script\\_event\\init.lua")

e_TrungThuThang8 = {
	eID = 2,
	f = "trung_thu_thang_8",
	m = "Event Trung Thu thang 8",
	m_n = "Tr�ng thu v� tr�n to�n c�i V� l�m th�t lung linh huy�n �o. N�ng H�ng Nga xinh ��p s� g�i t�ng nh�ng ��c ph�m khi d�ng b�nh trung thu th�m l�ng...",
	s = 170930,
	e = 171017,
	mis = {
		{eID = nil, StartEnd = {171002, 171006}, StartHourMin = {20, 00, {21, 00}}, FileFunc = {"t_hao_tuu_tuong_phung.lua", "t_HaoTuuTuongPhung:MesForMission"}, StartAnyTime = 0},
		{eID = nil, StartEnd = {171007, 171015}, StartHourMin = {20, 00, {21, 00}}, FileFunc = {"m_hoa_dang__main.lua", "eM_HoaDang:f_OpenMission"}, StartAnyTime = 0},
	},
	i = {
		{614340, {nil, nil}, {"i_banh_dau_xanh.lua", "iBanhDauXanh:Main"}, 1},
		{614341, {nil, nil}, {"i_banh_nhan_thit.lua", "iBanhNhanThit:Main"}, 1},
		{614348, {nil, nil}, {"i_banh_trung_thu_dat_biet.lua", "iBanhDacBiet:Main"}, 1},
		{614349, {nil, nil}, {"i_banh_trung_thu_dat_biet.lua", "iBanhDacBiet:Main"}, 1},
		{614350, {171002, 171006}, {"i_hao_tuu_lenh_bai.lua", "iHaoTuuLenhBai:Main"}, 0},
		{614351, {171002, 171006}, {"i_ngu_tuu_trang_ram.lua", "iNguTuuTrangRam:Main"}, 0},
	},
	n = {
		{{nil, 1},{{1867, 53, 1630, 3187, "H�ng Nga Ti�n N�"}}, {{"n_hang_nga_tien_nu.lua", "nHangNgaTienNu:Main"}, "Trung thu sum v�y!"}, {nil, nil}},
		{{nil, 1},{{1867, 20, 3559, 6191, "H�ng Nga Ti�n N�"}}, {{"n_hang_nga_tien_nu.lua", "nHangNgaTienNu:Main"}, "Trung thu sum v�y!"}, {nil, nil}},
		{{nil, 1},{{1867, 99, 1619, 3192, "H�ng Nga Ti�n N�"}}, {{"n_hang_nga_tien_nu.lua", "nHangNgaTienNu:Main"}, "Trung thu sum v�y!"}, {nil, nil}},
		{{nil, 1},{{1867, 100, 1623, 3188, "H�ng Nga Ti�n N�"}}, {{"n_hang_nga_tien_nu.lua", "nHangNgaTienNu:Main"}, "Trung thu sum v�y!"}, {nil, nil}},
		{{nil, 1},{{1867, 101, 1673, 3182, "H�ng Nga Ti�n N�"}}, {{"n_hang_nga_tien_nu.lua", "nHangNgaTienNu:Main"}, "Trung thu sum v�y!"}, {nil, nil}},
		{{nil, 1},{{1867, 121, 1952, 4515, "H�ng Nga Ti�n N�"}}, {{"n_hang_nga_tien_nu.lua", "nHangNgaTienNu:Main"}, "Trung thu sum v�y!"}, {nil, nil}},
		{{nil, 1},{{1867, 153, 1610, 3221, "H�ng Nga Ti�n N�"}}, {{"n_hang_nga_tien_nu.lua", "nHangNgaTienNu:Main"}, "Trung thu sum v�y!"}, {nil, nil}},
		{{nil, 1},{{1867, 174, 1625, 3212, "H�ng Nga Ti�n N�"}}, {{"n_hang_nga_tien_nu.lua", "nHangNgaTienNu:Main"}, "Trung thu sum v�y!"}, {nil, nil}},
		
		{{nil, 1},{{1867, 11, 3121, 4997, "H�ng Nga Ti�n N�"}}, {{"n_hang_nga_tien_nu.lua", "nHangNgaTienNu:Main"}, "Trung thu sum v�y!"}, {nil, nil}},
		{{nil, 1},{{1867, 78, 1546, 3246, "H�ng Nga Ti�n N�"}}, {{"n_hang_nga_tien_nu.lua", "nHangNgaTienNu:Main"}, "Trung thu sum v�y!"}, {nil, nil}},
		{{nil, 1},{{1867, 1, 1612, 3155, "H�ng Nga Ti�n N�"}}, {{"n_hang_nga_tien_nu.lua", "nHangNgaTienNu:Main"}, "Trung thu sum v�y!"}, {nil, nil}},
		{{nil, 1},{{1867, 162, 1590, 3215, "H�ng Nga Ti�n N�"}}, {{"n_hang_nga_tien_nu.lua", "nHangNgaTienNu:Main"}, "Trung thu sum v�y!"}, {nil, nil}},
		{{nil, 1},{{1867, 37, 1811, 3095, "H�ng Nga Ti�n N�"}}, {{"n_hang_nga_tien_nu.lua", "nHangNgaTienNu:Main"}, "Trung thu sum v�y!"}, {nil, nil}},
		{{nil, 1},{{1867, 80, 1747, 3000, "H�ng Nga Ti�n N�"}}, {{"n_hang_nga_tien_nu.lua", "nHangNgaTienNu:Main"}, "Trung thu sum v�y!"}, {nil, nil}},
		{{nil, 1},{{1867, 176, 1509, 2986, "H�ng Nga Ti�n N�"}}, {{"n_hang_nga_tien_nu.lua", "nHangNgaTienNu:Main"}, "Trung thu sum v�y!"}, {nil, nil}},
	},
	
	p = {
		{{nil, 1}, {{nil, nil}, {6,1,4337}, {1,1}, {1, 10000}, {"��u Xanh (nguy�n li�u)"}, {1}}},
		{{nil, 1}, {{nil, nil}, {6,1,4338}, {1,2}, {2, 1}, {"Th�t (nguy�n li�u)"}, {1}}},
		
		{{nil, 1}, {{171002, 171006}, {6,1,4350}, {1,1}, {1, 50000}, {"H�o T�u L�nh B�i"}, {1}}},
		{{nil, 1}, {{171002, 171006}, {6,1,4351}, {1,1}, {2, 1}, {"Ng� T�u Tr�ng R�m"}, {1}}},
	},
	
	j = {
		{{nil, 1}, {nil, nil}, {6,1,4340, "B�nh Trung thu ��u xanh"}, {1}, {{6,1,4336, 1, "B�t M�"}, {6,1,4337, 1, "��u Xanh"}, {6,1,4339, 1, "T�i Ph� Gia"}}},
		{{nil, 1}, {nil, nil}, {6,1,4341, "B�nh Trung thu nh�n th�t"}, {1}, {{6,1,4336, 1, "B�t M�"}, {6,1,4338, 1, "Th�t"}, {6,1,4339, 1, "T�i Ph� Gia"}}},
	},
	
	iDrop = {
		{{170929, 171010}, {50,60,70,80,90}, 0, {{6,1,4336}, 100}},
		{{170929, 171010}, {50,60,70,80,90}, 5, {{6,1,4339}, 0}},
	},
	
	a = {
		{"TK", {{170929, 171010}, {6,1,4339}, {0,1,1}, {1,1}, {{1000, 10}, {3000, 20}, {10000, 50}}}},
		
		{"VA", {{170929, 171010}, {6,1,4339}, {{16, 20}}}},
		
		{"BST", {{170929, 171010}, {6,1,4339}, {5}}},
		
		{"PLD", {{170929, 171010}, {6,1,4339}, {10}}},
		
		{"NBP", {{170929, 171010}, {6,1,4339}, {5}}},
		
		{"BTHK", {{170929, 171010}, {6,1,4339}, {10}}},
	},
}

_EVENT:Add(e_TrungThuThang8)



































