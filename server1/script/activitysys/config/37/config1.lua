Include("\\script\\activitysys\\config\\37\\variables.lua")
tbConfig = {}
tbConfig[1] = --一个细节
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Kh雐 ng gi竛g sinh 2011",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:AddInitNpc",	{nil} },
	},
}
tbConfig[2] = --一个细节
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "B秐  nh qu竔 ra v藅 ph萴 竜 gi竛g sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckInMap",	{"20,121,99,100,101,174,53"} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{ITEM_XMAS_CLOTHING,1,"6"} },
	},
}
tbConfig[3] = --一个细节
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "Tham gia t鑞g kim t 頲 輙 nh蕋 1000 甶觤 t輈h l騳 v� nh� h琻 3000 甶觤 t輈h l騳 m韎 頲 t骾 gi竛g sinh.",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",1000,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",3000,"","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,10,EVENT_LOG_TITLE,"T鑞g kim 1000 甶觤 t輈h l騳 nh薾 l蕐 t骾 gi竛g sinh"} },
	},
}
tbConfig[4] = --一个细节
{
	nId = 4,
	szMessageType = "FinishSongJin",
	szName = "T鑞g kim 3000 甶觤 nh薾 頲 t骾 gi竛g sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",3000,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,30,EVENT_LOG_TITLE,"T鑞g kim 3000 甶觤 nh薾 頲 t骾 gi竛g sinh 產i"} },
	},
}
tbConfig[5] = --一个细节
{
	nId = 5,
	szMessageType = "Chuanguan",
	szName = "Vt 秈 qu� 17 c鯽  頲 t骾 gi竛g sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,10,EVENT_LOG_TITLE,"Vt 秈 qu� 17 c鯽  頲 t骾 gi竛g sinh"} },
	},
}
tbConfig[6] = 
{
	nId = 6,
	szMessageType = "Chuanguan",
	szName = "Vt 秈 qua 28 c鯽   t骾 gi竛g sinh i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,10,EVENT_LOG_TITLE,"Vt 秈 qua 28 c鯽   t骾 gi竛g sinh i"} },
	},
}
tbConfig[7] = --一个细节
{
	nId = 7,
	szMessageType = "NpcOnDeath",
	szName = "Gi誸 th駓 t芻 u l躰h  頲 t骾 gi竛g sinh.",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckBoatBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,10,EVENT_LOG_TITLE,"Gi誸 th駓 t芻 u l躰h  頲 t骾 gi竛g sinh."} },
	},
}
tbConfig[8] = --一个细节
{
	nId = 8,
	szMessageType = "NpcOnDeath",
	szName = "Ti猽 di謙 th駓 t芻 u l躰h Phong L╪g ч d� 頲 t骾 gi竛g sinh i.",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,20,EVENT_LOG_TITLE,"Ti猽 di謙 th駓 t芻 u l躰h Phong L╪g ч d� 頲 t骾 gi竛g sinh i."} },
	},
}
tbConfig[9] = --一个细节
{
	nId = 9,
	szMessageType = "YDBZguoguan",
	szName = "Vi猲  vt qua 秈 th� 10  頲 t骾 gi竛g sinh i.",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,15,EVENT_LOG_TITLE,"Vi猲  vt qua 秈 th� 10  頲 t骾 gi竛g sinh i."} },
	},
}
tbConfig[10] = --一个细节
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Ti猽 di謙 Boss Ho祅g Kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckWorldBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,50,EVENT_LOG_TITLE,"Ti猽 di謙 Boss Ho祅g Kim  頲 t骾 gi竛g sinh i."} },
	},
}
tbConfig[11] = --一个细节
{
	nId = 11,
	szMessageType = "NpcOnDeath",
	szName = "Ti猽 di謙 Boss S竧 th�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,3,EVENT_LOG_TITLE,"Ti猽 di謙 Boss s竧 th�  韈 t骾 gi竛g sinh."} },
	},
}
tbConfig[12] = --一个细节
{
	nId = 12,
	szMessageType = "Chuanguan",
	szName = "Vt 秈 ti猽 di謙 boss. ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"30"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_STAR,1,EVENT_LOG_TITLE,"chuangguan30"} },
	},
}
tbConfig[13] = --一个细节
{
	nId = 13,
	szMessageType = "YDBZ_KillMaxBoss",
	szName = "Vi猲  ti猽 di謙 boss cu鑙 c飊g",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:YDBZ_GiveStar",	{nil} },
	},
}
tbConfig[14] = --一个细节
{
	nId = 14,
	szMessageType = "ClickNpc",
	szName = "K輈h Christmas Song",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Christmas Song"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Online nh薾 thng",15} },
		{"AddDialogOpt",	{"V藅 li猽 t鎛g h頿",17} },
	},
}
tbConfig[15] = --一个细节
{
	nId = 15,
	szMessageType = "CreateDialog",
	szName = "цi Tho筰 v韎 g Gi� Noel",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T�:00-01-12-2011 n 24:00-31-12-2011, i hi謕 t c蕄  150 (Kh玭g h筺 ch�) c� th� giam gia ho箃 ng gi竛g sinh� ch� c莕 Online m鏸 gi�  nh薾 10 qu﹏g Gi竛g sinh v� 40 Pumpkin Pie� tham gia t鑙 產 5 l莕",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Online nh薾 thng",16} },
	},
}
tbConfig[16] = --一个细节
{
	nId = 16,
	szMessageType = "nil",
	szName = "Qu莕 gi竛g sinh v� 竜 gi竛g sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"ThisActivity:CheckTaskDaily",	{TSK_XMAS_TROUSERS_DAILY,50,"H玬 nay ngi kh玭g th� l躰h, quay tr� l筰 v祇 ng祔 mai.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:GiveXmasTrousers",	{nil} },
	},
}
tbConfig[17] = --一个细节
{
	nId = 17,
	szMessageType = "CreateDialog",
	szName = "D鑙 tho筰 h頿 th祅h v藅 ph萴",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trong th阨 gian ho箃 ng, i hi謕 c� th� h頿 th祅h nh鱪g m鉵 qu� gi竛g sinh, g gi� Noel (Nh�),g gi� Noel(Trung b譶h),g gi� Noel(L琻), b竛h gi竛g sinh, h閜 qu� gi竛g sinh m� t� l� th祅h c玭g 70% h頿 th祅h, 玭g gi� noel c� t� l� 60%, c遪 c竎 trng h頿 kh筩 l� 100%, i hi謕 mu鑞 g�?",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H頿 th祅h H閜 qu� gi竛g sinh",18} },
		{"AddDialogOpt",	{"H頿 th祅h g gi� Noel(Ti觰)",19} },
		--暂时关闭- Modified By DinhHQ - 20111129
		{"AddDialogOpt",	{"H頿 th祅h g gi� Noel(Trung)",20} },
		{"AddDialogOpt",	{"H頿 th祅h g gi� Noel(Чi)",21} },
		{"AddDialogOpt",	{"H頿 th祅h B竛h gi竛g sinh",22} },
	},
}
tbConfig[18] = --一个细节
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h h閜 qu� gi竛g sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Nh薾 頲 h閜 qu� gi竛g sinh",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"竜 Gi竛g Sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"Qu莕 gi竛g sinh",ITEM_XMAS_TROUSERS,1} },
		--Change request Event Noel - Modified by DinhHQ - 20111129
		{"AddOneMaterial",	{"Ng﹏ lng",{nJxb=1},50000} },
	},
	tbActition = 
	{
		{"ThisActivity:ComposeXmasGift",	{nil} },
	},
}
tbConfig[19] = --一个细节
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h 玭g gi� Noel(Ti觰)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"g gi� Noel(Ti觰)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"竜 Gi竛g sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"Qu莕 gi竛g sinh",ITEM_XMAS_TROUSERS,1} },
		{"AddOneMaterial",	{"T骾 Gi竛g sinh",ITEM_XMAS_BAG,1} },
		--Change request Event Noel - Modified by DinhHQ - 20111129
		{"AddOneMaterial",	{"Ng﹏ lng",{nJxb=1},100000} },
	},
	tbActition = 
	{
		{"ThisActivity:ComposeXmasPerson_S",	{nil} },
	},
}
tbConfig[20] = --一个细节
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h 玭g gi� Noel(Trung)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"g gi� Noel(Trung)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"竜 gi竛g sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"N鉵 gi竛g sinh",{tbProp={6,1,3072,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3078,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"H頿 th祅h g gi� Noel(Trung)"} },
	},
}
tbConfig[21] = --一个细节
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h g gi� Noel(Чi)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"圣诞老人(大)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"竜 gi竛g sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"Qu莕 gi竛g sinh",ITEM_XMAS_TROUSERS,1} },
		{"AddOneMaterial",	{"T骾 gi竛g sinh",ITEM_XMAS_BAG,1} },
		{"AddOneMaterial",	{"N鉵 gi竛g sinh",{tbProp={6,1,3072,1,0,0},},2} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3079,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"H頿 th祅h 玭g gi� Noel(Чi)"} },
	},
}
tbConfig[22] = --一个细节
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h b竛h gi竛g sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B竛h gi竛g sinh",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"竜 gi竛g sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"T骾 gi竛g sinh",ITEM_XMAS_BAG,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3082,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"composeXmasCake"} },
	},
}
tbConfig[23] = --一个细节
{
	nId = 23,
	szMessageType = "ClickNpc",
	szName = "Click g gi� Noel",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"g Gi� Noel"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"SetDialogTitle",	{"T� :01-12-2011 n 31-12-2011, Nh鱪g ngi t c蕄 150 c� th� n m� s� d鬾g 300,400,500 ng玦 sao  i L謓h b礽 Boss, ngi mu鑞 i lo筰 n祇?"} },		
		{"AddDialogOpt",	{"L謓h b礽 Boss - Trng Tuy猲",24} },
		{"AddDialogOpt",	{"L謓h b礽 Boss - Kim Th� Lng",25} },
		{"AddDialogOpt",	{"L謓h b礽 Boss - M� Dung To祅",26} },
		--бn b?exp - Modified by DinhHQ - 20111201
		--{"AddDialogOpt",	{"Nh薾 l蕐 kinh nghi謒.",33} },
		--Ho箃 ng th?3 - Modified By DinhHQ -20111215
		{"AddDialogOpt",	{"L� v藅 m gi竛g sinh",34} },
		{"AddDialogOpt",	{"H頿 th祅h 玭g gi� Noel",38} },
	},
}
tbConfig[24] = --一个细节
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "L謓h b礽 Boss - Trng Tuy猲",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L謓h b礽 Boss - Trng Tuy猲",1,1,1,1,0,50},
	tbCondition = 
	{
		--Change request event noel - Modified By DinhHQ - 20111129
		{"AddOneMaterial",	{"Ng玦 Sao",ITEM_XMAS_STAR,300} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3083,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"DoiLenhBaiGoiBossTaiNpcOngGiaNoel"} },
	},
}
tbConfig[25] = --一个细节
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "L謓h b礽 Boss - Kim Th� Lng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L謓h b礽 Boss - Kim Th� Lng",1,1,1,1,0,50},
	tbCondition = 
	{
		--Change request event noel - Modified By DinhHQ - 20111129
		{"AddOneMaterial",	{"Ng玦 Sao",ITEM_XMAS_STAR,400} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3084,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"DoiLenhBaiGoiBossTaiNpcOngGiaNoel"} },
	},
}
tbConfig[26] = --一个细节
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "L謓h b礽 Boss - M� Dung To祅",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L謓h b礽 Boss - M� Dung To祅",1,1,1,1,0,50},
	tbCondition = 
	{
		--Change request event noel - Modified By DinhHQ - 20111129
		{"AddOneMaterial",	{"Ng� Sao",ITEM_XMAS_STAR,500} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3085,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"DoiLenhBaiGoiBossTaiNpcOngGiaNoel"} },
	},
}
tbConfig[27] = --一个细节
{
	nId = 27,
	szMessageType = "ItemScript",
	szName = "S� d鬾g g Gi� Noel(Ti觰)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3077,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� � Th祅h th� v� th玭 tr蕁 m韎 c� th� s� d鬾g"} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_PERSON_S_LIMIT,MAX_USED_XMAS_PERSON_S_LIMIT,"Ngi  s� d鬾g  玭g gi� Noel(Ti觰) r錳 kh玭g th� s� d鬾g 頲 n鱝!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasPerson_S",	{nil} },
	},
}
tbConfig[28] = --一个细节
{
	nId = 28,
	szMessageType = "ItemScript",
	szName = "S� d鬾g g Gi� Noel(Trung)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3078,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� � Th祅h th� v� th玭 tr蕁 m韎 c� th� s� d鬾g."} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_PERSON_M_LIMIT,MAX_USED_XMAS_PERSON_M_LIMIT,"Ngi  s� d鬾g  玭g gi� Noel(Trung) r錳 kh玭g th� s� d鬾g 頲 n鱝!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasPerson_M",	{nil} },
	},
}
tbConfig[29] = --一个细节
{
	nId = 29,
	szMessageType = "ItemScript",
	szName = "S� d鬾g g Gi� Noel(Чi)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3079,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� � Th祅h th� v� th玭 tr蕁 m韎 c� th� s� d鬾g."} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_PERSON_L_LIMIT,MAX_USED_XMAS_PERSON_L_LIMIT,"Ngi  s� d鬾g  玭g gi� Noel(Ti觰) r錳 kh玭g th� s� d鬾g 頲 n鱝!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasPerson_L",	{nil} },
	},
}
tbConfig[30] = --一个细节
{
	nId = 30,
	szMessageType = "ItemScript",
	szName = "S� d鬾g h閜 qu� gi竛g sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3080,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� � Th祅h th� v� th玭 tr蕁 m韎 c� th� s� d鬾g."} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_GIFT_LIMIT,MAX_USED_XMAS_GIFT_LIMIT,"Ngi  s� d鬾g  h閜 qu� gi竛g sinh r錳,kh玭g th� s� d鬾g n鱝!.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasGift",	{nil} },
	},
}
tbConfig[31] = --一个细节
{
	nId = 31,
	szMessageType = "ItemScript",
	szName = "S� d鬾g b竛h gi竛g sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3082,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� � Th祅h th� v� th玭 tr蕁 m韎 c� th� s� d鬾g."} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_CAKE_LIMIT,MAX_USED_XMAS_CAKE_LIMIT,"Ngi  s� d鬾g  b竛h gi竛g sinh r錳,kh玭g th� s� d鬾g n鱝!.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasCake",	{nil} },
	},
}
tbConfig[32] = --一个细节
{
	nId = 32,
	szMessageType = "OnLogin",
	szName = "Ngi ch琲 tr鵦 tuy猲",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:PlayerOnLogin",	{nil} },
	},
}
tbConfig[33] = 
{
	nId = 33,
	szMessageType = "nil",
	szName = "Nh薾 b錳 thng gi竛g sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"ThisActivity:CheckTimeGetCompensation",	{nil} },
		{"tbVNG_BitTask_Lib:CheckBitTaskValue", {{nTaskID = 2911,nStartBit = 29,nBitCount = 1,nMaxValue = 1}, 0, "M鏸 ngi ch� nh薾 頲 1 ph莕 thng", "=="}},	
	},
	tbActition = 
	{
		{"tbVNG_BitTask_Lib:setBitTask", {{nTaskID = 2911,nStartBit = 29,nBitCount = 1,nMaxValue = 1}, 1}},
		{"PlayerFunLib:AddExp",	{18e6,0,"Event_Noel","Nh薾 b錳 thng"} },
	},
}
tbConfig[34] =
{
	nId = 34,
	szMessageType = "CreateDialog",
	szName = "Иm gi竛g sinh tho筰",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T� 0:00-24-12-2011 n 24:00-25-12-2011,Чi hi謕 tr猲 c蕄 150 c� th� n nh薾 thng l� 2 T� kinh nghi謒",0},
	tbCondition = 
	{		
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta mu鑞 nh薾 thng",35} },
	},
}
tbConfig[35] = 
{
	nId = 35,
	szMessageType = "nil",
	szName = "Nh薾 thng m gi竛g sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"ThisActivity:CheckTimeGetFreeExp",	{nil} },
		{"tbVNG_BitTask_Lib:CheckBitTaskValue", {{nTaskID = 2912,nStartBit = 20,nBitCount = 1,nMaxValue = 1}, 0, "M鏸 ngi ch� nh薾 頲 1 l莕.", "=="}},	
	},
	tbActition = 
	{
		{"tbVNG_BitTask_Lib:setBitTask", {{nTaskID = 2912,nStartBit = 20,nBitCount = 1,nMaxValue = 1}, 1}},
		{"PlayerFunLib:AddExp",	{200e6,0,"Event_Noel","NhanThuongDiemKinhNghiemDemGiangSinh"} },
	},
}
tbConfig[36] =--商贩买烤鸡
{
	nId = 36,
	szMessageType = "ClickNpc",
	szName = "Nh蕁 Thng Nh﹏",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thng Nh﹏"},
	tbCondition = 
	{
	},
	tbActition = 
	{		
		{"AddDialogOpt",	{"Qu� gi竛g sinh",37} },
	},
}
tbConfig[37] =
{
	nId = 37,
	szMessageType = "CreateCompose",
	szName = "Mua g� nng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Qu� gi竛g sinh",1,1,1,0.02,0,50},
	tbCondition = 
	{		
		{"AddOneMaterial",	{"Ng﹏ lng ",{nJxb=1},10000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="Qu� gi竛g sinh",tbProp={6,1,30167,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"Qu� gi竛g sinh"} },
	},
}
tbConfig[38] =
{
	nId = 38,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h 玭g gi� noel",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"g gi� Noel",1,1,1,0.02,0,50},
	tbCondition = 
	{		
		{"AddOneMaterial",	{"Qu� gi竛g sinh",{tbProp={6,1,30167,1,0,0},nExpiredTime=20190101,},1} },		
		{"AddOneMaterial",	{"V� gi竛g sinh",{tbProp={6,1,30166,1,0,0},nExpiredTime=20190101,},1} },
		{"AddOneMaterial",	{"M� gi竛g sinh",ITEM_XMAS_HAT,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30168,1,0,0},nExpiredTime=20190101,},1, EVENT_LOG_TITLE, "H頿 th祅h 玭g gi� Noel"} },
	},
}
tbConfig[39] = 
{
	nId = 39,
	szMessageType = "ItemScript",
	szName = "S� d鬾g 玭g gi� Noel",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30168,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCellWH",	{3, 3, 1,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� � Th祅h th� v� th玭 tr蕁 m韎 c� th� s� d鬾g."} },
		{"PlayerFunLib:CheckTask",	{2916,1500,"Ch� c� th� s� d鬾g nhi襲 nh蕋 l� 1500.","<"} },		
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasPerson_Pink",	{nil} },
	},
}
