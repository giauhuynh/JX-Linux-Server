
function e_TopRace_Main()
	return e_TopRace:Main()
end

e_TopRace = {
	Top = {
		[1] = {name = "1"},
		[2] = {name = "2"},
		[3] = {name = "3"},
		[4] = {name = "4"},
		[5] = {name = "5"},
		[6] = {name = "6"},
		[7] = {name = "7"},
		[8] = {name = "8"},
		[9] = {name = "9"},
		[10] = {name = "10"},
	},
	
	Award = {
		[1] = {
			Item_Normal = {0,10,7,1,0,0},

		},
		[2] = {
			Item_Normal = {{6,1,2340,1,0,0}, {0,10,8,10,0,0}},
			Item_Gold = {164},
			Coin = 0,
		},
		[3] = {
			Item_Normal = {{6,1,2340,1,0,0}, {0,10,5,10,0,0}},
			Item_Gold = {166},
			Coin = 0,
		},
		[4] = {
			Coin = 5000,
		},
		[5] = {
			Coin = 4000,
		},
		[6] = {
			Coin = 3000,
		},
		[7] = {
			Coin = 2000,
		},
		[8] = {
			Coin = 1000,
		},
		[9] = {
			Coin = 800,
		},
		[10] = {
			Coin = 500,
		},
	}
}

function e_TopRace:Main()
	local say_string = "Danh s¸ch nhËn TOP lÇn nµy gåm cã:<enter>"
	
	for index = 1, getn(self.Top) do
		say_string = say_string.."TOP-"..index..": <color=green>"..self.Top[index].name.."<color>, "
	end
	
	return Say(say_string, 2, "NhËn phÇn th­ëng/#e_TopRace.GetAward()", "kÕt thóc ®èi tho¹i/end")
end

function e_TopRace:GetAward()
	local check_top = 0
	
	for index = 1, getn(e_TopRace.Top) do
		if GetName() == e_TopRace.Top[index].name then
			check_top = index
			break
		end	
	end
	
	if check_top <= 0 then
		return Talk(1, "", "C¸c h¹ kh«ng cã tªn trong danh s¸ch")
	end
	
	if(GetTask(5971) ~= 0) then
		return Talk(1, "", "C¸c h¹ ®· nhËn phÇn th­ëng nµy råi")
	end	
	
	if CountFreeRoomByWH(3,10) < 1 then
		return Talk(1, "", "C¸c h¹ vui lßng ®Ó trèng Ýt nhÊt 50(3x10) « trèng trong hµnh trang míi cã thÓ nhËn phÇn th­ëng nµy!")
	end
			
	if(check_top == 1) then
tbAwardTemplet:GiveAwardByList({{szName="TiÒn",tbProp={4,417,1,0,0,0},nCount=300},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ngùa",tbProp={0,10,7,1,0,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tinh hång",tbProp={4,353,1,0,0,0},nCount=6, },}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tö thñy tinh",tbProp={4,239,1,0,0,0},nCount=3,},}, "test", 1);

	SetTask(5971, 1)

	end
	if(check_top == 2) then
tbAwardTemplet:GiveAwardByList({{szName="TiÒn",tbProp={4,417,1,0,0,0},nCount=200},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ngùa",tbProp={0,10,6,10,0,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tinh hång",tbProp={4,353,1,0,0,0},nCount=6, },}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tö thñy tinh",tbProp={4,239,1,0,0,0},nCount=3,},}, "test", 1);

	SetTask(5971, 1)

	end
	if(check_top == 3) then
tbAwardTemplet:GiveAwardByList({{szName="TiÒn",tbProp={4,417,1,0,0,0},nCount=100},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ngùa",tbProp={0,10,8,10,0,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tinh hång",tbProp={4,353,1,0,0,0},nCount=6, },}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tö thñy tinh",tbProp={4,239,1,0,0,0},nCount=3,},}, "test", 1);
	SetTask(5971, 1)


	end
	if(check_top == 4) then
tbAwardTemplet:GiveAwardByList({{szName="TiÒn",tbProp={4,417,1,0,0,0},nCount=50},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ngùa",tbProp={0,10,5,10,0,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tinh hång",tbProp={4,353,1,0,0,0},nCount=6, },}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tö thñy tinh",tbProp={4,239,1,0,0,0},nCount=3,},}, "test", 1);
	SetTask(5971, 1)


	end
	if(check_top == 5) then
tbAwardTemplet:GiveAwardByList({{szName="TiÒn",tbProp={4,417,1,0,0,0},nCount=50},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ngùa",tbProp={0,10,5,10,0,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tinh hång",tbProp={4,353,1,0,0,0},nCount=6, },}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tö thñy tinh",tbProp={4,239,1,0,0,0},nCount=3,},}, "test", 1);

	SetTask(5971, 1)

	end
	if(check_top == 6) then
tbAwardTemplet:GiveAwardByList({{szName="TiÒn",tbProp={4,417,1,0,0,0},nCount=30},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ngùa",tbProp={0,10,5,10,0,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tinh hång",tbProp={4,353,1,0,0,0},nCount=6, },}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tö thñy tinh",tbProp={4,239,1,0,0,0},nCount=3,},}, "test", 1);

	SetTask(5971, 1)

	end
	if(check_top == 7) then
tbAwardTemplet:GiveAwardByList({{szName="TiÒn",tbProp={4,417,1,0,0,0},nCount=30},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ngùa",tbProp={0,10,5,10,0,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tinh hång",tbProp={4,353,1,0,0,0},nCount=6, },}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tö thñy tinh",tbProp={4,239,1,0,0,0},nCount=3,},}, "test", 1);
	SetTask(5971, 1)

	end
	if(check_top == 8) then
tbAwardTemplet:GiveAwardByList({{szName="TiÒn",tbProp={4,417,1,0,0,0},nCount=30},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ngùa",tbProp={0,10,5,10,0,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tinh hång",tbProp={4,353,1,0,0,0},nCount=6, },}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tö thñy tinh",tbProp={4,239,1,0,0,0},nCount=3,},}, "test", 1);
	SetTask(5971, 1)

	end
	if(check_top == 9) then
tbAwardTemplet:GiveAwardByList({{szName="TiÒn",tbProp={4,417,1,0,0,0},nCount=30},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ngùa",tbProp={0,10,5,10,0,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tinh hång",tbProp={4,353,1,0,0,0},nCount=6, },}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tö thñy tinh",tbProp={4,239,1,0,0,0},nCount=3,},}, "test", 1);
	SetTask(5971, 1)

	end
	if(check_top == 10) then
tbAwardTemplet:GiveAwardByList({{szName="TiÒn",tbProp={4,417,1,0,0,0},nCount=30},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ngùa",tbProp={0,10,5,10,0,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tinh hång",tbProp={4,353,1,0,0,0},nCount=6, },}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tö thñy tinh",tbProp={4,239,1,0,0,0},nCount=3,},}, "test", 1);
	SetTask(5971, 1)


	end

	
	Talk(1, "", "Th× ra ®¹i hiÖp lµ ng­êi ®øng TOP "..check_top.." cña thÕ giíi, nÓ phôc, nÓ phôc!")
end










