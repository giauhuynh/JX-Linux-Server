Include("\\script\\activitysys\\config\\37\\variables.lua")
tbConfig = {}
tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Khëi ®éng gi¸ng sinh 2011",
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
tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "B¶n ®å ®¸nh qu¸i ra vËt phÈm ¸o gi¸ng sinh",
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
tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "Tham gia tèng kim ®¹t ®­îc Ýt nhÊt 1000 ®iÓm tÝch lòy vµ nhá h¬n 3000 ®iÓm tÝch lòy míi ®­îc tói gi¸ng sinh.",
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
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,10,EVENT_LOG_TITLE,"Tèng kim 1000 ®iÓm tÝch lòy nhËn lÊy tói gi¸ng sinh"} },
	},
}
tbConfig[4] = --Ò»¸öÏ¸½Ú
{
	nId = 4,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim 3000 ®iÓm nhËn ®­îc tói gi¸ng sinh",
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
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,30,EVENT_LOG_TITLE,"Tèng kim 3000 ®iÓm nhËn ®­îc tói gi¸ng sinh ®ai"} },
	},
}
tbConfig[5] = --Ò»¸öÏ¸½Ú
{
	nId = 5,
	szMessageType = "Chuanguan",
	szName = "V­ît ¶i qu¸ 17 cöa ®Î ®­îc tói gi¸ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,10,EVENT_LOG_TITLE,"V­ît ¶i qu¸ 17 cöa ®Î ®­îc tói gi¸ng sinh"} },
	},
}
tbConfig[6] = 
{
	nId = 6,
	szMessageType = "Chuanguan",
	szName = "V­ît ¶i qua 28 cöa ®Ó ®Ó tói gi¸ng sinh ®¹i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,10,EVENT_LOG_TITLE,"V­ît ¶i qua 28 cöa ®Ó ®Ó tói gi¸ng sinh ®¹i"} },
	},
}
tbConfig[7] = --Ò»¸öÏ¸½Ú
{
	nId = 7,
	szMessageType = "NpcOnDeath",
	szName = "GiÕt thñy tÆc ®Çu lÜnh ®Ó ®­îc tói gi¸ng sinh.",
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
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,10,EVENT_LOG_TITLE,"GiÕt thñy tÆc ®Çu lÜnh ®Ó ®­îc tói gi¸ng sinh."} },
	},
}
tbConfig[8] = --Ò»¸öÏ¸½Ú
{
	nId = 8,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt thñy tÆc ®Çu lÜnh Phong L¨ng §é dÓ ®­îc tói gi¸ng sinh ®¹i.",
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
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,20,EVENT_LOG_TITLE,"Tiªu diÖt thñy tÆc ®Çu lÜnh Phong L¨ng §é dÓ ®­îc tói gi¸ng sinh ®¹i."} },
	},
}
tbConfig[9] = --Ò»¸öÏ¸½Ú
{
	nId = 9,
	szMessageType = "YDBZguoguan",
	szName = "Viªn ®Õ v­ît qua ¶i thø 10 ®Ó ®­îc tói gi¸ng sinh ®¹i.",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,15,EVENT_LOG_TITLE,"Viªn ®Õ v­ît qua ¶i thø 10 ®Ó ®­îc tói gi¸ng sinh ®¹i."} },
	},
}
tbConfig[10] = --Ò»¸öÏ¸½Ú
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt Boss Hoµng Kim",
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
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,50,EVENT_LOG_TITLE,"Tiªu diÖt Boss Hoµng Kim ®Ó ®­îc tói gi¸ng sinh ®¹i."} },
	},
}
tbConfig[11] = --Ò»¸öÏ¸½Ú
{
	nId = 11,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt Boss S¸t thñ",
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
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,3,EVENT_LOG_TITLE,"Tiªu diÖt Boss s¸t thñ ®Ó ®­íc tói gi¸ng sinh."} },
	},
}
tbConfig[12] = --Ò»¸öÏ¸½Ú
{
	nId = 12,
	szMessageType = "Chuanguan",
	szName = "V­ît ¶i tiªu diÖt boss. ",
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
tbConfig[13] = --Ò»¸öÏ¸½Ú
{
	nId = 13,
	szMessageType = "YDBZ_KillMaxBoss",
	szName = "Viªn ®Õ tiªu diÖt boss cuèi cïng",
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
tbConfig[14] = --Ò»¸öÏ¸½Ú
{
	nId = 14,
	szMessageType = "ClickNpc",
	szName = "KÝch Christmas Song",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Christmas Song"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Online nhËn th­ëng",15} },
		{"AddDialogOpt",	{"VËt liªu tæng hîp",17} },
	},
}
tbConfig[15] = --Ò»¸öÏ¸½Ú
{
	nId = 15,
	szMessageType = "CreateDialog",
	szName = "§èi Tho¹i víi ¤ng Giµ Noel",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tõ:00-01-12-2011 ®Õn 24:00-31-12-2011, ®¹i hiÖp ®¹t cÊp ®é 150 (Kh«ng h¹n chÕ) cã thÓ giam gia ho¹t ®éng gi¸ng sinh¸ chØ cÇn Online mçi giê ®Ó nhËn 10 qu©ng Gi¸ng sinh vµ 40 Pumpkin Pie¸ tham gia tèi ®a 5 lÇn",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Online nhËn th­ëng",16} },
	},
}
tbConfig[16] = --Ò»¸öÏ¸½Ú
{
	nId = 16,
	szMessageType = "nil",
	szName = "QuÇn gi¸ng sinh vµ ¸o gi¸ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"ThisActivity:CheckTaskDaily",	{TSK_XMAS_TROUSERS_DAILY,50,"H«m nay ng­¬i kh«ng thÓ lÜnh, quay trë l¹i vµo ngµy mai.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:GiveXmasTrousers",	{nil} },
	},
}
tbConfig[17] = --Ò»¸öÏ¸½Ú
{
	nId = 17,
	szMessageType = "CreateDialog",
	szName = "Dèi tho¹i hîp thµnh vËt phÈm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trong thêi gian ho¹t ®«ng, ®¹i hiÖp cã thÓ hîp thµnh nh÷ng mãn quµ gi¸ng sinh, ¤ng giµ Noel (Nhá),¤ng giµ Noel(Trung b×nh),¤ng giµ Noel(L¬n), b¸nh gi¸ng sinh, hép quµ gi¸ng sinh mµ tØ lÖ thµnh c«ng 70% hîp thµnh, «ng gi¸ noel cã tØ lÖ 60%, cßn c¸c tr­êng hîp kh¹c lµ 100%, ®¹i hiÖp muèn g×?",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Hîp thµnh Hép quµ gi¸ng sinh",18} },
		{"AddDialogOpt",	{"Hîp thµnh ¤ng giµ Noel(TiÓu)",19} },
		--ÔÝÊ±¹Ø±Õ- Modified By DinhHQ - 20111129
		{"AddDialogOpt",	{"Hîp thµnh ¤ng giµ Noel(Trung)",20} },
		{"AddDialogOpt",	{"Hîp thµnh ¤ng giµ Noel(§¹i)",21} },
		{"AddDialogOpt",	{"Hîp thµnh B¸nh gi¸ng sinh",22} },
	},
}
tbConfig[18] = --Ò»¸öÏ¸½Ú
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh hép quµ gi¸ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"NhËn ®­îc hép quµ gi¸ng sinh",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"¸o Gi¸ng Sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"QuÇn gi¸ng sinh",ITEM_XMAS_TROUSERS,1} },
		--Change request Event Noel - Modified by DinhHQ - 20111129
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},50000} },
	},
	tbActition = 
	{
		{"ThisActivity:ComposeXmasGift",	{nil} },
	},
}
tbConfig[19] = --Ò»¸öÏ¸½Ú
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh «ng giµ Noel(TiÓu)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"¤ng giµ Noel(TiÓu)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"¸o Gi¸ng sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"QuÇn gi¸ng sinh",ITEM_XMAS_TROUSERS,1} },
		{"AddOneMaterial",	{"Tói Gi¸ng sinh",ITEM_XMAS_BAG,1} },
		--Change request Event Noel - Modified by DinhHQ - 20111129
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},100000} },
	},
	tbActition = 
	{
		{"ThisActivity:ComposeXmasPerson_S",	{nil} },
	},
}
tbConfig[20] = --Ò»¸öÏ¸½Ú
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh «ng giµ Noel(Trung)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"¤ng giµ Noel(Trung)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"¸o gi¸ng sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"Nãn gi¸ng sinh",{tbProp={6,1,3072,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3078,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"Hîp thµnh ¤ng giµ Noel(Trung)"} },
	},
}
tbConfig[21] = --Ò»¸öÏ¸½Ú
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh ¤ng giµ Noel(§¹i)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ê¥µ®ÀÏÈË(´ó)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"¸o gi¸ng sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"QuÇn gi¸ng sinh",ITEM_XMAS_TROUSERS,1} },
		{"AddOneMaterial",	{"Tói gi¸ng sinh",ITEM_XMAS_BAG,1} },
		{"AddOneMaterial",	{"Nãn gi¸ng sinh",{tbProp={6,1,3072,1,0,0},},2} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3079,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"Hîp thµnh «ng giµ Noel(§¹i)"} },
	},
}
tbConfig[22] = --Ò»¸öÏ¸½Ú
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh b¸nh gi¸ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¸nh gi¸ng sinh",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"¸o gi¸ng sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"Tói gi¸ng sinh",ITEM_XMAS_BAG,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3082,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"composeXmasCake"} },
	},
}
tbConfig[23] = --Ò»¸öÏ¸½Ú
{
	nId = 23,
	szMessageType = "ClickNpc",
	szName = "Click ¤ng giµ Noel",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"¤ng Giµ Noel"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"SetDialogTitle",	{"Tõ :01-12-2011 ®Õn 31-12-2011, Nh÷ng ng­êi ®¹t cÊp 150 cã thÓ ®Õn mµ sö dông 300,400,500 ng«i sao ®Ó ®æi LÖnh bµi Boss, ng­¬i muèn ®æi lo¹i nµo?"} },		
		{"AddDialogOpt",	{"LÖnh bµi Boss - Tr­¬ng Tuyªn",24} },
		{"AddDialogOpt",	{"LÖnh bµi Boss - Kim ThÝ L­îng",25} },
		{"AddDialogOpt",	{"LÖnh bµi Boss - Mé Dung Toµn",26} },
		--§Òn b?exp - Modified by DinhHQ - 20111201
		--{"AddDialogOpt",	{"NhËn lÊy kinh nghiÖm.",33} },
		--Ho¹t ®éng th?3 - Modified By DinhHQ -20111215
		{"AddDialogOpt",	{"LÔ vËt ®ªm gi¸ng sinh",34} },
		{"AddDialogOpt",	{"Hîp thµnh «ng giµ Noel",38} },
	},
}
tbConfig[24] = --Ò»¸öÏ¸½Ú
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "LÖnh bµi Boss - Tr­¬ng Tuyªn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"LÖnh bµi Boss - Tr­¬ng Tuyªn",1,1,1,1,0,50},
	tbCondition = 
	{
		--Change request event noel - Modified By DinhHQ - 20111129
		{"AddOneMaterial",	{"Ng«i Sao",ITEM_XMAS_STAR,300} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3083,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"DoiLenhBaiGoiBossTaiNpcOngGiaNoel"} },
	},
}
tbConfig[25] = --Ò»¸öÏ¸½Ú
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "LÖnh bµi Boss - Kim ThÝ L­îng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"LÖnh bµi Boss - Kim ThÝ L­îng",1,1,1,1,0,50},
	tbCondition = 
	{
		--Change request event noel - Modified By DinhHQ - 20111129
		{"AddOneMaterial",	{"Ng«i Sao",ITEM_XMAS_STAR,400} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3084,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"DoiLenhBaiGoiBossTaiNpcOngGiaNoel"} },
	},
}
tbConfig[26] = --Ò»¸öÏ¸½Ú
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "LÖnh bµi Boss - Mé Dung Toµn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"LÖnh bµi Boss - Mé Dung Toµn",1,1,1,1,0,50},
	tbCondition = 
	{
		--Change request event noel - Modified By DinhHQ - 20111129
		{"AddOneMaterial",	{"Ng« Sao",ITEM_XMAS_STAR,500} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3085,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"DoiLenhBaiGoiBossTaiNpcOngGiaNoel"} },
	},
}
tbConfig[27] = --Ò»¸öÏ¸½Ú
{
	nId = 27,
	szMessageType = "ItemScript",
	szName = "Sö dông ¤Ng Giµ Noel(TiÓu)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3077,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "ChØ cã ë Thµnh thÞ vµ th«n trÊn míi cã thÓ sö dông"} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_PERSON_S_LIMIT,MAX_USED_XMAS_PERSON_S_LIMIT,"Ng­¬i ®· sö dông ®ñ «ng giµ Noel(TiÓu) råi kh«ng thÓ sö dông ®­îc n÷a!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasPerson_S",	{nil} },
	},
}
tbConfig[28] = --Ò»¸öÏ¸½Ú
{
	nId = 28,
	szMessageType = "ItemScript",
	szName = "Sö dông ¤Ng Giµ Noel(Trung)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3078,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "ChØ cã ë Thµnh thÞ vµ th«n trÊn míi cã thÓ sö dông."} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_PERSON_M_LIMIT,MAX_USED_XMAS_PERSON_M_LIMIT,"Ng­¬i ®· sö dông ®ñ «ng giµ Noel(Trung) råi kh«ng thÓ sö dông ®­îc n÷a!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasPerson_M",	{nil} },
	},
}
tbConfig[29] = --Ò»¸öÏ¸½Ú
{
	nId = 29,
	szMessageType = "ItemScript",
	szName = "Sö dông ¤Ng Giµ Noel(§¹i)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3079,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "ChØ cã ë Thµnh thÞ vµ th«n trÊn míi cã thÓ sö dông."} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_PERSON_L_LIMIT,MAX_USED_XMAS_PERSON_L_LIMIT,"Ng­¬i ®· sö dông ®ñ «ng giµ Noel(TiÓu) råi kh«ng thÓ sö dông ®­îc n÷a!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasPerson_L",	{nil} },
	},
}
tbConfig[30] = --Ò»¸öÏ¸½Ú
{
	nId = 30,
	szMessageType = "ItemScript",
	szName = "Sö dông hép quµ gi¸ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3080,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "ChØ cã ë Thµnh thÞ vµ th«n trÊn míi cã thÓ sö dông."} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_GIFT_LIMIT,MAX_USED_XMAS_GIFT_LIMIT,"Ng­¬i ®· sö dông ®ñ hép quµ gi¸ng sinh råi,kh«ng thÓ sö dông n÷a!.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasGift",	{nil} },
	},
}
tbConfig[31] = --Ò»¸öÏ¸½Ú
{
	nId = 31,
	szMessageType = "ItemScript",
	szName = "Sö dông b¸nh gi¸ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3082,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "ChØ cã ë Thµnh thÞ vµ th«n trÊn míi cã thÓ sö dông."} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_CAKE_LIMIT,MAX_USED_XMAS_CAKE_LIMIT,"Ng­¬i ®· sö dông ®ñ b¸nh gi¸ng sinh råi,kh«ng thÓ sö dông n÷a!.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasCake",	{nil} },
	},
}
tbConfig[32] = --Ò»¸öÏ¸½Ú
{
	nId = 32,
	szMessageType = "OnLogin",
	szName = "Ng­¬i ch¬i trùc tuyªn",
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
	szName = "NhËn båi th­êng gi¸ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"ThisActivity:CheckTimeGetCompensation",	{nil} },
		{"tbVNG_BitTask_Lib:CheckBitTaskValue", {{nTaskID = 2911,nStartBit = 29,nBitCount = 1,nMaxValue = 1}, 0, "Mçi ng­êi chØ nhËn ®­îc 1 phÇn th­ëng", "=="}},	
	},
	tbActition = 
	{
		{"tbVNG_BitTask_Lib:setBitTask", {{nTaskID = 2911,nStartBit = 29,nBitCount = 1,nMaxValue = 1}, 1}},
		{"PlayerFunLib:AddExp",	{18e6,0,"Event_Noel","NhËn båi th­ëng"} },
	},
}
tbConfig[34] =
{
	nId = 34,
	szMessageType = "CreateDialog",
	szName = "§ªm gi¸ng sinh tho¹i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tõ 0:00-24-12-2011 ®Õn 24:00-25-12-2011,§¹i hiÖp trªn cÊp 150 cã thÓ ®Õn nhËn th­ëng lµ 2 TØ kinh nghiÖm",0},
	tbCondition = 
	{		
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta muèn nhËn th­ëng",35} },
	},
}
tbConfig[35] = 
{
	nId = 35,
	szMessageType = "nil",
	szName = "NhËn th­ëng ®ªm gi¸ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"ThisActivity:CheckTimeGetFreeExp",	{nil} },
		{"tbVNG_BitTask_Lib:CheckBitTaskValue", {{nTaskID = 2912,nStartBit = 20,nBitCount = 1,nMaxValue = 1}, 0, "Mçi ng­êi chØ nhËn ®­îc 1 lÇn.", "=="}},	
	},
	tbActition = 
	{
		{"tbVNG_BitTask_Lib:setBitTask", {{nTaskID = 2912,nStartBit = 20,nBitCount = 1,nMaxValue = 1}, 1}},
		{"PlayerFunLib:AddExp",	{200e6,0,"Event_Noel","NhanThuongDiemKinhNghiemDemGiangSinh"} },
	},
}
tbConfig[36] =--ÉÌ··Âò¿¾¼¦
{
	nId = 36,
	szMessageType = "ClickNpc",
	szName = "NhÊn Th­¬ng Nh©n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Th­¬ng Nh©n"},
	tbCondition = 
	{
	},
	tbActition = 
	{		
		{"AddDialogOpt",	{"Qu¶ gi¸ng sinh",37} },
	},
}
tbConfig[37] =
{
	nId = 37,
	szMessageType = "CreateCompose",
	szName = "Mua gµ n­íng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Qu¶ gi¸ng sinh",1,1,1,0.02,0,50},
	tbCondition = 
	{		
		{"AddOneMaterial",	{"Ng©n l­îng ",{nJxb=1},10000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="Qu¶ gi¸ng sinh",tbProp={6,1,30167,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"Qu¶ gi¸ng sinh"} },
	},
}
tbConfig[38] =
{
	nId = 38,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh «ng giµ noel",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"¤ng giµ Noel",1,1,1,0.02,0,50},
	tbCondition = 
	{		
		{"AddOneMaterial",	{"Qu¶ gi¸ng sinh",{tbProp={6,1,30167,1,0,0},nExpiredTime=20190101,},1} },		
		{"AddOneMaterial",	{"Ví gi¸ng sinh",{tbProp={6,1,30166,1,0,0},nExpiredTime=20190101,},1} },
		{"AddOneMaterial",	{"Mò gi¸ng sinh",ITEM_XMAS_HAT,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30168,1,0,0},nExpiredTime=20190101,},1, EVENT_LOG_TITLE, "Hîp thµnh «ng giµ Noel"} },
	},
}
tbConfig[39] = 
{
	nId = 39,
	szMessageType = "ItemScript",
	szName = "Sö dông «ng giµ Noel",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30168,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCellWH",	{3, 3, 1,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "ChØ cã ë Thµnh thÞ vµ th«n trÊn míi cã thÓ sö dông."} },
		{"PlayerFunLib:CheckTask",	{2916,1500,"ChØ cã thÓ sö dông nhiÒu nhÊt lµ 1500.","<"} },		
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasPerson_Pink",	{nil} },
	},
}
