Include("\\script\\activitysys\\config\\44\\variables.lua") 

local nTask_HuDie		= 1
local nTask_XinXin		= 2
local nTask_ZhuXin_YuanXin		= 3
local nTask_ChenDu		= 4
local nTask_DaLi		= 5
local nTask_FengXiang		= 6
local nTask_XiangYang		= 7
local nTask_BianJin		= 8
local nTask_LinAn		= 9
local nTask_YangZhou		= 10
local nTask_GiveCount		= 11
local nTask_Activi_Point		= 2794
-------¾Ö²¿±äÁ¿¶¨Òå ½áÊø---
tbConfig = {}
tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "NpcOnDeath",
	szName = "´ß¹Öµ«¢äÁ«Åº±ý",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"322,321,144,124,93"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,3524,1,0,0},},1,"5"} },
	},
}
tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "´ß¹Öµ«¢ä¢Ì¶¹±ý",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"225,226,227,224,340,75"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,3524,1,0,0},},1,"5"} },
	},
}
tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "NpcOnDeath",
	szName = "´ß¹Öµ«¢äÓãÍ·",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"10,20,30,40,50,60,70,80"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,3524,1,0,0},},1,"1"} },
	},
}
tbConfig[4] = --Ò»¸öÏ¸½Ú
{
	nId = 4,
	szMessageType = "ClickNpc",
	szName = "Íæ¼Òµã»÷ÇÚÀÍÀÏÅ©",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§¹i S­ L·o L·o"},
	tbCondition = 
	{
	},
	tbActition = 
	{
                {"SetDialogTitle",	{"<npc>S« c« la rÊt lµ ngon, ®¹i hiÖp cã thÓ tÆng cho c¸c ®¹i hiÖp n÷. §¹i hiÖp muèn S«-c«-la g× ®©y ?"} },
		{"AddDialogOpt",	{"Ta muèn ®æi S« c« la.",5} },
                {"AddDialogOpt",	{"NhËn phÇn th­ëng sö dông s« c« la.",10} },
                
	},
}
tbConfig[5] = --Ò»¸öÏ¸½Ú
{
	nId = 5,
	szMessageType = "CreateDialog",
	szName = "ºÏ³É»®·ÖµÈ¼¶",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"<npc>C¸c h¹ muèn hîp thµnh lo¹i s« c« la nµo ?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Hîp thµnh S« c« la lo¹i 4",6} },
		{"AddDialogOpt",	{"Hîp thµnh S« c« la lo¹i 3",7} },
		{"AddDialogOpt",	{"Hîp thµnh S« c« la lo¹i 2",8} },
		{"AddDialogOpt",	{"Hîp thµnh S« c« la lo¹i 1",9} },
	},
}
tbConfig[6] = --Ò»¸öÏ¸½Ú
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh s«-c«-la lo¹i 4",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"Hîp thµnh s«-c«-la lo¹i 4",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S« C« La lo¹i 5",{tbProp={6,1,3524,1,0,0},},10} },
                {"AddOneMaterial",	{"100000 l­îng",{nJxb=100000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3525,1,0,0},},1,"[TÝnh n¨ng socola] [Hîp thµnh socola]"} },
	},
}
tbConfig[7] = --Ò»¸öÏ¸½Ú
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh s«-c«-la lo¹i 3",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"Hîp thµnh s«-c«-la lo¹i 3",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S« C« La lo¹i 5",{tbProp={6,1,3524,1,0,0},},10} },
                {"AddOneMaterial",	{"S« C« La lo¹i 4",{tbProp={6,1,3525,1,0,0},},10} },
                {"AddOneMaterial",	{"200000 l­îng",{nJxb=200000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3526,1,0,0},},1,"[TÝnh n¨ng socola] [Hîp thµnh socola]"} },
	},
}
tbConfig[8] = --Ò»¸öÏ¸½Ú
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh s«-c«-la lo¹i 2",
	nnStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"Hîp thµnh s«-c«-la lo¹i 2",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S« C« La lo¹i 5",{tbProp={6,1,3524,1,0,0},},10} },
                {"AddOneMaterial",	{"S« C« La lo¹i 3",{tbProp={6,1,3526,1,0,0},},10} },
                {"AddOneMaterial",	{"300000 l­îng",{nJxb=300000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3527,1,0,0},},1,"[TÝnh n¨ng socola] [Hîp thµnh socola]"} },
	},
}
tbConfig[9] = --Ò»¸öÏ¸½Ú
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh s«-c«-la lo¹i 1",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"Hîp thµnh s«-c«-la lo¹i 1",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S« C« La lo¹i 5",{tbProp={6,1,3524,1,0,0},},10} },
                {"AddOneMaterial",	{"S« C« La lo¹i 2",{tbProp={6,1,3527,1,0,0},},10} },
                {"AddOneMaterial",	{"400000 l­îng",{nJxb=400000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3528,1,0,0},},1,"[TÝnh n¨ng socola] [Hîp thµnh socola]"} },
	},
}
tbConfig[10] = --Ò»¸öÏ¸½Ú
{
	nId = 10,
	szMessageType = "CreateDialog",
	szName = "NhËn th­ëng s« c« la",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"<npc>C¸c h¹ muèn ®æi lo¹i lång ®Ìn ®Æc biÖt nµo ?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"NhËn phÇn th­ëng 100 c¸i S« c« la lo¹i 1",12} },
		{"AddDialogOpt",	{"NhËn phÇn th­ëng 200 c¸i S« c« la lo¹i 1",13} },
		{"AddDialogOpt",	{"NhËn phÇn th­ëng 400 c¸i S« c« la lo¹i 1",14} },
		{"AddDialogOpt",	{"NhËn phÇn th­ëng 600 c¸i S« c« la lo¹i 1",15} },
                {"AddDialogOpt",	{"NhËn phÇn th­ëng 800 c¸i S« c« la lo¹i 1",16} },
		{"AddDialogOpt",	{"NhËn phÇn th­ëng 1000 c¸i S« c« la lo¹i 1",17} },
	},
}
tbConfig[11] = --Ò»¸öÏ¸½Ú
{
	nId = 11,
	szMessageType = "ItemScript",
	szName = "Sö dông s« c« la lo¹i 1",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {{tbProp={6,1,3528,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi cã thÓ sö dông",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{10000000,0,"[TÝnh n¨ng socola][Sö dông S« c« la lo¹i 1]"} },
                {"PlayerFunLib:GetItem",	{{tbProp={6,1,2157,1,0,0},},1,"[TÝnh n¨ng socola] [Hîp thµnh socola]"} },
		{"ThisActivity:AddTask",	{nTask_HuDie,1} },
	},
}
tbConfig[12] = --Ò»¸öÏ¸½Ú
{
	nId = 12, 
        szMessageType = "nil", 
        szName = "NhËn phÇn th­ëng 100 c¸i S« c« la lo¹i 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,2,"§¹i hiÖp kh«ng ®ñ sö dông 100 chiÕc S« c« la lo¹i 1, kh«ng thÓ nhËn th­ëng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet100Award,0,"Ng­¬i ®· nhËn th­ëng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"Sö dông 100 chiÕc S« c« la lo¹i 1 nhËn th­ëng."} }, 
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,2157,1,0,0},},1,"[TÝnh n¨ng socola] [Hîp thµnh socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet100Award,1} }, 
        }, 
}
tbConfig[13] = --Ò»¸öÏ¸½Ú
{
	nId = 13,
	szMessageType = "nil", 
        szName = "NhËn phÇn th­ëng 200 c¸i S« c« la lo¹i 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,200,"§¹i hiÖp kh«ng ®ñ sö dông 200 chiÕc S« c« la lo¹i 1, kh«ng thÓ nhËn th­ëng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet200Award,0,"Ng­¬i ®· nhËn th­ëng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"Sö dông 200 chiÕc S« c« la lo¹i 1 nhËn th­ëng."} }, 
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,2157,1,0,0},},1,"[TÝnh n¨ng socola] [Hîp thµnh socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet200Award,1} }, 
        }, 
}
tbConfig[14] = --Ò»¸öÏ¸½Ú
{
	nId = 14,
	szMessageType = "nil", 
        szName = "NhËn phÇn th­ëng 400 c¸i S« c« la lo¹i 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,400,"§¹i hiÖp kh«ng ®ñ sö dông 400 chiÕc S« c« la lo¹i 1, kh«ng thÓ nhËn th­ëng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet300Award,0,"Ng­¬i ®· nhËn th­ëng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"Sö dông 400 chiÕc S« c« la lo¹i 1 nhËn th­ëng."} },
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,2157,1,0,0},},1,"[TÝnh n¨ng socola] [Hîp thµnh socola]"} }, 
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet300Award,1} }, 
        }, 
}
tbConfig[15] = --Ò»¸öÏ¸½Ú
{
	nId = 15,
	szMessageType = "nil", 
        szName = "NhËn phÇn th­ëng 600 c¸i S« c« la lo¹i 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,600,"§¹i hiÖp kh«ng ®ñ sö dông 600 chiÕc S« c« la lo¹i 1, kh«ng thÓ nhËn th­ëng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet400Award,0,"Ng­¬i ®· nhËn th­ëng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"Sö dông 600 chiÕc S« c« la lo¹i 1 nhËn th­ëng."} },
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,2157,1,0,0},},1,"[TÝnh n¨ng socola] [Hîp thµnh socola]"} }, 
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet400Award,1} }, 
        }, 
}
tbConfig[16] = --Ò»¸öÏ¸½Ú
{
	nId = 16,
	szMessageType = "nil", 
        szName = "NhËn phÇn th­ëng 800 c¸i S« c« la lo¹i 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,800,"§¹i hiÖp kh«ng ®ñ sö dông 800 chiÕc S« c« la lo¹i 1, kh«ng thÓ nhËn th­ëng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet500Award,0,"Ng­¬i ®· nhËn th­ëng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"Sö dông 800 chiÕc S« c« la lo¹i 1 nhËn th­ëng."} }, 
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,2157,1,0,0},},1,"[TÝnh n¨ng socola] [Hîp thµnh socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet500Award,1} }, 
        }, 
}
tbConfig[17] = --Ò»¸öÏ¸½Ú
{
	nId = 17,
	szMessageType = "nil", 
        szName = "NhËn phÇn th­ëng 1000 c¸i S« c« la lo¹i 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,1000,"§¹i hiÖp kh«ng ®ñ sö dông 1000 chiÕc S« c« la lo¹i 1, kh«ng thÓ nhËn th­ëng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet600Award,0,"Ng­¬i ®· nhËn th­ëng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"Sö dông 1000 chiÕc S« c« la lo¹i 1 nhËn th­ëng."} }, 
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,3483,1,0,0},},1,"[TÝnh n¨ng socola] [Hîp thµnh socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet600Award,1} }, 
        }, 
}

