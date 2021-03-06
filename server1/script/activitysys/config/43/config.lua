Include("\\script\\activitysys\\config\\43\\variables.lua")
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
tbConfig = {}
tbConfig[1] = --一个细节
{
	nId = 1,
	szMessageType = "NpcOnDeath",
	szName = "催怪但莲藕饼",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"322,321,144,124,93"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,1220,1,0,0},nExpiredTime=20141011,},1,"5"} },
	},
}
tbConfig[2] = --一个细节
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "催怪但⑻豆饼",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"225,226,227,224,340,75"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,1220,1,0,0},nExpiredTime=20141011,},1,"5"} },
	},
}
tbConfig[3] = --一个细节
{
	nId = 3,
	szMessageType = "NpcOnDeath",
	szName = "催怪但鱼头",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"10,20,30,40,50,60,70,80"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,1220,1,0,0},nExpiredTime=20141011,},1,"1"} },
	},
}
tbConfig[4] = --一个细节
{
	nId = 4,
	szMessageType = "ClickNpc",
	szName = "玩家点击勤劳老农",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"H籲g Nga"},
	tbCondition = 
	{
	},
	tbActition = 
	{
                {"SetDialogTitle",	{"<npc>Trung thu n╩ 2014  n m颽 tr╪g tr遪. H籲g Nga h� gi韎 xu鑞g tr莕 ch琲. C竎 h� mu鑞 i th� g� ?"} },
		{"AddDialogOpt",	{"Ta mu鑞 h頿 th祅h l錸g n",5} },
                {"AddDialogOpt",	{"Ta mu鑞 i l錸g n c bi謙",12} },
                {"AddDialogOpt",	{"фi b竛h trung thu",19} },
	},
}
tbConfig[5] = --一个细节
{
	nId = 5,
	szMessageType = "CreateDialog",
	szName = "合成划分等级",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"<npc>C竎 h� mu鑞 h頿 th祅h lo筰 l錸g n n祇 ?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H頿 th祅h l錸g n bm bm",6} },
		{"AddDialogOpt",	{"H頿 th祅h l錸g n ng玦 sao",7} },
		{"AddDialogOpt",	{"H頿 th祅h l錸g n 鑞g",8} },
		{"AddDialogOpt",	{"H頿 th祅h l錸g n tr遪",9} },
                {"AddDialogOpt",	{"H頿 th祅h l錸g n c� ch衟",10} },
		{"AddDialogOpt",	{"H頿 th祅h l錸g n k衞 qu﹏",11} },
	},
}
tbConfig[6] = --一个细节
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h l錸g n bm bm",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"H頿 th祅h L錸g n bm bm",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Gi蕐 ki課g v祅g",{tbProp={6,1,1221,1,0,0},},2} },
		{"AddOneMaterial",	{"Thanh tre",{tbProp={6,1,1226,1,0,0},},1} },
		{"AddOneMaterial",	{"D﹜ c鉯",{tbProp={6,1,1227,1,0,0},},1} },
                {"AddOneMaterial",	{"N課",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"100000 lng",{nJxb=100000,},1} },
		{"lib:CheckDay",	{20140809, 20141011, "Ho箃 ng  k誸 th骳."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1241,1,0,0},nExpiredTime=20141018,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n bm bm]"} },
	},
}
tbConfig[7] = --一个细节
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h l錸g n ng玦 sao",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"H頿 th祅h l錸g n ng玦 sao",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Gi蕐 ki課g lam",{tbProp={6,1,1222,1,0,0},},2} },
		{"AddOneMaterial",	{"Thanh tre",{tbProp={6,1,1226,1,0,0},},1} },
		{"AddOneMaterial",	{"D﹜ c鉯",{tbProp={6,1,1227,1,0,0},},1} },
                {"AddOneMaterial",	{"N課",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"100000 lng",{nJxb=100000,},1} },
		{"lib:CheckDay",	{20140809, 20141011, "Ho箃 ng  k誸 th骳."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1242,1,0,0},nExpiredTime=20141018,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
	},
}
tbConfig[8] = --一个细节
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h l錸g n 鑞g",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"H頿 th祅h l錸g n 鑞g",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Gi蕐 ki課g l鬰",{tbProp={6,1,1223,1,0,0},},2} },
		{"AddOneMaterial",	{"Thanh tre",{tbProp={6,1,1226,1,0,0},},1} },
		{"AddOneMaterial",	{"D﹜ c鉯",{tbProp={6,1,1227,1,0,0},},1} },
                {"AddOneMaterial",	{"N課",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"100000 lng",{nJxb=100000,},1} },
		{"lib:CheckDay",	{20140809, 20141011, "Ho箃 ng  k誸 th骳."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1243,1,0,0},nExpiredTime=20141018,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
	},
}
tbConfig[9] = --一个细节
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h l錸g n tr遪",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"H頿 th祅h l錸g n tr遪",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Gi蕐 ki課g ",{tbProp={6,1,1224,1,0,0},},2} },
		{"AddOneMaterial",	{"Thanh tre",{tbProp={6,1,1226,1,0,0},},1} },
		{"AddOneMaterial",	{"D﹜ c鉯",{tbProp={6,1,1227,1,0,0},},1} },
                {"AddOneMaterial",	{"N課",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"200000 lng",{nJxb=200000,},1} },
		{"lib:CheckDay",	{20140809, 20141011, "Ho箃 ng  k誸 th骳."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1244,1,0,0},nExpiredTime=20141018,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
	},
}
tbConfig[10] = --一个细节
{
	nId = 10,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h l錸g n c� ch衟",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"H頿 th祅h l錸g n c� ch衟",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Gi蕐 ki課g cam",{tbProp={6,1,1225,1,0,0},},2} },
		{"AddOneMaterial",	{"Thanh tre",{tbProp={6,1,1226,1,0,0},},1} },
		{"AddOneMaterial",	{"D﹜ c鉯",{tbProp={6,1,1227,1,0,0},},1} },
                {"AddOneMaterial",	{"N課",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"200000 lng",{nJxb=200000,},1} },
		{"lib:CheckDay",	{20140809, 20141011, "Ho箃 ng  k誸 th骳."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1245,1,0,0},nExpiredTime=20141018,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
	},
}
tbConfig[11] = --一个细节
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h l錸g n k衞 qu﹏",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"H頿 th祅h l錸g n k衞 qu﹏",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Gi蕐 ki課g cam",{tbProp={6,1,1225,1,0,0},},5} },
		{"AddOneMaterial",	{"Thanh tre",{tbProp={6,1,1226,1,0,0},},1} },
		{"AddOneMaterial",	{"D﹜ c鉯",{tbProp={6,1,1227,1,0,0},},1} },
                {"AddOneMaterial",	{"N課",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"300000 lng",{nJxb=300000,},1} },
		{"lib:CheckDay",	{20140809, 20141011, "Ho箃 ng  k誸 th骳."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1246,1,0,0},nExpiredTime=20141018,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
	},
}
tbConfig[12] = --一个细节
{
	nId = 12,
	szMessageType = "CreateDialog",
	szName = "фi l錸g n c bi謙",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"<npc>C竎 h� mu鑞 i lo筰 l錸g n c bi謙 n祇 ?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"фi l錸g n bm bm c bi謙",13} },
		{"AddDialogOpt",	{"фi l錸g n ng玦 sao c bi謙",14} },
		{"AddDialogOpt",	{"фi l錸g n 鑞g c bi謙",15} },
		{"AddDialogOpt",	{"фi l錸g n tr遪 c bi謙",16} },
                {"AddDialogOpt",	{"фi l錸g n c� ch衟 c bi謙",17} },
		{"AddDialogOpt",	{"фi l錸g n k衞 qu﹏ c bi謙",18} },
	},
}
tbConfig[13] = --一个细节
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "фi l錸g n bm bm c bi謙",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"фi l錸g n bm bm c bi謙",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L錸g n bm bm",{tbProp={6,1,1241,1,0,0},},1} },
                {"AddOneMaterial",	{"N課",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"1000000 lng",{nJxb=1000000,},1} },
		{"lib:CheckDay",	{20140809, 20141011, "Ho箃 ng  k誸 th骳."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1229,1,0,0},nExpiredTime=20141018,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
	},
}
tbConfig[14] = --一个细节
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "фi l錸g n ng玦 sao c bi謙",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"фi l錸g n ng玦 sao c bi謙",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L錸g n ng玦 sao",{tbProp={6,1,1242,1,0,0},},1} },
                {"AddOneMaterial",	{"N課",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"2000000 lng",{nJxb=2000000,},1} },
		{"lib:CheckDay",	{20140809, 20141011, "Ho箃 ng  k誸 th骳."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1230,1,0,0},nExpiredTime=20141018,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
	},
}
tbConfig[15] = --一个细节
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "фi l錸g n 鑞g c bi謙",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"фi l錸g n 鑞g c bi謙",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L錸g n 鑞g",{tbProp={6,1,1243,1,0,0},},1} },
                {"AddOneMaterial",	{"N課",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"3000000 lng",{nJxb=3000000,},1} },
		{"lib:CheckDay",	{20140809, 20141011, "Ho箃 ng  k誸 th骳."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1231,1,0,0},nExpiredTime=20141018,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
	},
}
tbConfig[16] = --一个细节
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "фi l錸g n tr遪 c bi謙",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"фi l錸g n tr遪 c bi謙",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L錸g n tr遪",{tbProp={6,1,1244,1,0,0},},1} },
                {"AddOneMaterial",	{"N課",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"4000000 lng",{nJxb=4000000,},1} },
		{"lib:CheckDay",	{20140809, 20141011, "Ho箃 ng  k誸 th骳."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1232,1,0,0},nExpiredTime=20141018,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
	},
}
tbConfig[17] = --一个细节
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "фi l錸g n c� ch衟 c bi謙",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"фi l錸g n c� ch衟 c bi謙",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L錸g n c� ch衟",{tbProp={6,1,1245,1,0,0},},1} },
                {"AddOneMaterial",	{"N課",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"5000000 lng",{nJxb=5000000,},1} },
		{"lib:CheckDay",	{20140809, 20141011, "Ho箃 ng  k誸 th骳."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1233,1,0,0},nExpiredTime=20141018,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
	},
}
tbConfig[18] = --一个细节
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "фi l錸g n k衞 qu﹏ c bi謙",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"фi l錸g n k衞 qu﹏ c bi謙",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L錸g n k衞 qu﹏",{tbProp={6,1,1246,1,0,0},},1} },
                {"AddOneMaterial",	{"N課",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"10000000 lng",{nJxb=10000000,},1} },
		{"lib:CheckDay",	{20140809, 20141011, "Ho箃 ng  k誸 th骳."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1234,1,0,0},nExpiredTime=20141018,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
	},
}
tbConfig[19] = --一个细节
{
	nId = 19,
	szMessageType = "CreateDialog",
	szName = "合成划分等级",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"<npc>C竎 h� mu鑞 h頿 th祅h lo筰 b竛h trung thu n祇 ?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"фi b竛h trung thu thng.",20} },
		{"AddDialogOpt",	{"фi b竛h trung thu u xanh.",21} },
		{"AddDialogOpt",	{"фi b竛h trung thu nh﹏ tr鴑g.",22} },
		{"AddDialogOpt",	{"фi b竛h trung thu c bi謙.",23} },
                {"AddDialogOpt",	{"фi b竛h trung thu h箃 sen.",24} },
		{"AddDialogOpt",	{"фi b竛h trung thu con heo.",25} },
	},
}
tbConfig[20] = --一个细节
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "фi b竛h trung thu thng",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"фi b竛h trung thu thng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L錸g n bm bm c bi謙",{tbProp={6,1,1229,1,0,0},},1} },
                {"AddOneMaterial",	{"10000000 lng",{nJxb=10000000,},1} },
		{"lib:CheckDay",	{20140809, 20141011, "Ho箃 ng  k誸 th骳."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1235,1,0,0},nExpiredTime=20141018,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
	},
}
tbConfig[21] = --一个细节
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "фi b竛h trung thu u xanh",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"фi b竛h trung thu u xanh",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L錸g n ng玦 sao c bi謙",{tbProp={6,1,1230,1,0,0},},1} },
                {"AddOneMaterial",	{"B竛h trung thu thng",{tbProp={6,1,1235,1,0,0},},1} },
                {"AddOneMaterial",	{"10000000 lng",{nJxb=10000000,},1} },
		{"lib:CheckDay",	{20140809, 20141011, "Ho箃 ng  k誸 th骳."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1236,1,0,0},nExpiredTime=20141018,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
	},
}
tbConfig[22] = --一个细节
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "фi b竛h trung thu nh﹏ tr鴑g",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"фi b竛h trung thu nh﹏ tr鴑g",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L錸g n 鑞g c bi謙",{tbProp={6,1,1231,1,0,0},},1} },
                {"AddOneMaterial",	{"B竛h trung thu thng",{tbProp={6,1,1235,1,0,0},},1} },
                {"AddOneMaterial",	{"10000000 lng",{nJxb=10000000,},1} },
		{"lib:CheckDay",	{20140809, 20141011, "Ho箃 ng  k誸 th骳."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1237,1,0,0},nExpiredTime=20141018,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
	},
}
tbConfig[23] = --一个细节
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "фi b竛h trung thu nh﹏ tr鴑g",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"фi b竛h trung thu nh﹏ tr鴑g",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L錸g n tr遪 c bi謙",{tbProp={6,1,1232,1,0,0},},1} },
                {"AddOneMaterial",	{"B竛h trung thu thng",{tbProp={6,1,1235,1,0,0},},1} },
                {"AddOneMaterial",	{"10000000 lng",{nJxb=10000000,},1} },
		{"lib:CheckDay",	{20140809, 20141011, "Ho箃 ng  k誸 th骳."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1237,1,0,0},nExpiredTime=20141018,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
	},
}
tbConfig[24] = --一个细节
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "фi b竛h trung thu c bi謙",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"фi b竛h trung thu c bi謙",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L錸g n c� ch衟 c bi謙",{tbProp={6,1,1233,1,0,0},},1} },
                {"AddOneMaterial",	{"B竛h trung thu thng",{tbProp={6,1,1235,1,0,0},},1} },
                {"AddOneMaterial",	{"10000000 lng",{nJxb=10000000,},1} },
		{"lib:CheckDay",	{20140809, 20141011, "Ho箃 ng  k誸 th骳."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1238,1,0,0},nExpiredTime=20141018,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
	},
}
tbConfig[25] = --一个细节
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "фi b竛h trung thu h箃 sen",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"фi b竛h trung thu h箃 sen",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L錸g n k衞 qu﹏ c bi謙",{tbProp={6,1,1234,1,0,0},},1} },
                {"AddOneMaterial",	{"B竛h trung thu thng",{tbProp={6,1,1235,1,0,0},},1} },
                {"AddOneMaterial",	{"10000000 lng",{nJxb=10000000,},1} },
		{"lib:CheckDay",	{20140809, 20141011, "Ho箃 ng  k誸 th骳."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1239,1,0,0},nExpiredTime=20141018,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
	},
}
tbConfig[26] = --一个细节
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "фi b竛h trung thu con heo",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"фi b竛h trung thu con heo",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B竛h trung thu h箃 sen",{tbProp={6,1,1239,1,0,0},},1} },
                {"AddOneMaterial",	{"B竛h trung thu thng",{tbProp={6,1,1235,1,0,0},},1} },
                {"AddOneMaterial",	{"10000000 lng",{nJxb=10000000,},1} },
		{"lib:CheckDay",	{20140809, 20141011, "Ho箃 ng  k誸 th骳."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1240,1,0,0},nExpiredTime=20141018,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
	},
}
tbConfig[27] = --一个细节
{
	nId = 27,
	szMessageType = "ServerStart",
	szName = "服务器打开将加载NPC",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:AddInitNpc",	{nil} },
	},
}
