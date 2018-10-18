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
-------�ֲ��������� ����---
tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "NpcOnDeath",
	szName = "�߹ֵ�����ź��",
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
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "�߹ֵ���̶���",
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
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "NpcOnDeath",
	szName = "�߹ֵ�����ͷ",
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
tbConfig[4] = --һ��ϸ��
{
	nId = 4,
	szMessageType = "ClickNpc",
	szName = "��ҵ��������ũ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i S� L�o L�o"},
	tbCondition = 
	{
	},
	tbActition = 
	{
                {"SetDialogTitle",	{"<npc>S� c� la r�t l� ngon, ��i hi�p c� th� t�ng cho c�c ��i hi�p n�. ��i hi�p mu�n S�-c�-la g� ��y ?"} },
		{"AddDialogOpt",	{"Ta mu�n ��i S� c� la.",5} },
                {"AddDialogOpt",	{"Nh�n ph�n th��ng s� d�ng s� c� la.",10} },
                
	},
}
tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "CreateDialog",
	szName = "�ϳɻ��ֵȼ�",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"<npc>C�c h� mu�n h�p th�nh lo�i s� c� la n�o ?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H�p th�nh S� c� la lo�i 4",6} },
		{"AddDialogOpt",	{"H�p th�nh S� c� la lo�i 3",7} },
		{"AddDialogOpt",	{"H�p th�nh S� c� la lo�i 2",8} },
		{"AddDialogOpt",	{"H�p th�nh S� c� la lo�i 1",9} },
	},
}
tbConfig[6] = --һ��ϸ��
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh s�-c�-la lo�i 4",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"H�p th�nh s�-c�-la lo�i 4",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S� C� La lo�i 5",{tbProp={6,1,3524,1,0,0},},10} },
                {"AddOneMaterial",	{"100000 l��ng",{nJxb=100000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3525,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}
tbConfig[7] = --һ��ϸ��
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh s�-c�-la lo�i 3",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"H�p th�nh s�-c�-la lo�i 3",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S� C� La lo�i 5",{tbProp={6,1,3524,1,0,0},},10} },
                {"AddOneMaterial",	{"S� C� La lo�i 4",{tbProp={6,1,3525,1,0,0},},10} },
                {"AddOneMaterial",	{"200000 l��ng",{nJxb=200000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3526,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}
tbConfig[8] = --һ��ϸ��
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh s�-c�-la lo�i 2",
	nnStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"H�p th�nh s�-c�-la lo�i 2",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S� C� La lo�i 5",{tbProp={6,1,3524,1,0,0},},10} },
                {"AddOneMaterial",	{"S� C� La lo�i 3",{tbProp={6,1,3526,1,0,0},},10} },
                {"AddOneMaterial",	{"300000 l��ng",{nJxb=300000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3527,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}
tbConfig[9] = --һ��ϸ��
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh s�-c�-la lo�i 1",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"H�p th�nh s�-c�-la lo�i 1",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S� C� La lo�i 5",{tbProp={6,1,3524,1,0,0},},10} },
                {"AddOneMaterial",	{"S� C� La lo�i 2",{tbProp={6,1,3527,1,0,0},},10} },
                {"AddOneMaterial",	{"400000 l��ng",{nJxb=400000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3528,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}
tbConfig[10] = --һ��ϸ��
{
	nId = 10,
	szMessageType = "CreateDialog",
	szName = "Nh�n th��ng s� c� la",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"<npc>C�c h� mu�n ��i lo�i l�ng ��n ��c bi�t n�o ?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Nh�n ph�n th��ng 100 c�i S� c� la lo�i 1",12} },
		{"AddDialogOpt",	{"Nh�n ph�n th��ng 200 c�i S� c� la lo�i 1",13} },
		{"AddDialogOpt",	{"Nh�n ph�n th��ng 400 c�i S� c� la lo�i 1",14} },
		{"AddDialogOpt",	{"Nh�n ph�n th��ng 600 c�i S� c� la lo�i 1",15} },
                {"AddDialogOpt",	{"Nh�n ph�n th��ng 800 c�i S� c� la lo�i 1",16} },
		{"AddDialogOpt",	{"Nh�n ph�n th��ng 1000 c�i S� c� la lo�i 1",17} },
	},
}
tbConfig[11] = --һ��ϸ��
{
	nId = 11,
	szMessageType = "ItemScript",
	szName = "S� d�ng s� c� la lo�i 1",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {{tbProp={6,1,3528,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i c� th� s� d�ng",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{10000000,0,"[T�nh n�ng socola][S� d�ng S� c� la lo�i 1]"} },
                {"PlayerFunLib:GetItem",	{{tbProp={6,1,2157,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
		{"ThisActivity:AddTask",	{nTask_HuDie,1} },
	},
}
tbConfig[12] = --һ��ϸ��
{
	nId = 12, 
        szMessageType = "nil", 
        szName = "Nh�n ph�n th��ng 100 c�i S� c� la lo�i 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,2,"��i hi�p kh�ng �� s� d�ng 100 chi�c S� c� la lo�i 1, kh�ng th� nh�n th��ng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet100Award,0,"Ng��i �� nh�n th��ng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S� d�ng 100 chi�c S� c� la lo�i 1 nh�n th��ng."} }, 
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,2157,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet100Award,1} }, 
        }, 
}
tbConfig[13] = --һ��ϸ��
{
	nId = 13,
	szMessageType = "nil", 
        szName = "Nh�n ph�n th��ng 200 c�i S� c� la lo�i 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,200,"��i hi�p kh�ng �� s� d�ng 200 chi�c S� c� la lo�i 1, kh�ng th� nh�n th��ng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet200Award,0,"Ng��i �� nh�n th��ng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S� d�ng 200 chi�c S� c� la lo�i 1 nh�n th��ng."} }, 
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,2157,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet200Award,1} }, 
        }, 
}
tbConfig[14] = --һ��ϸ��
{
	nId = 14,
	szMessageType = "nil", 
        szName = "Nh�n ph�n th��ng 400 c�i S� c� la lo�i 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,400,"��i hi�p kh�ng �� s� d�ng 400 chi�c S� c� la lo�i 1, kh�ng th� nh�n th��ng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet300Award,0,"Ng��i �� nh�n th��ng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S� d�ng 400 chi�c S� c� la lo�i 1 nh�n th��ng."} },
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,2157,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} }, 
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet300Award,1} }, 
        }, 
}
tbConfig[15] = --һ��ϸ��
{
	nId = 15,
	szMessageType = "nil", 
        szName = "Nh�n ph�n th��ng 600 c�i S� c� la lo�i 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,600,"��i hi�p kh�ng �� s� d�ng 600 chi�c S� c� la lo�i 1, kh�ng th� nh�n th��ng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet400Award,0,"Ng��i �� nh�n th��ng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S� d�ng 600 chi�c S� c� la lo�i 1 nh�n th��ng."} },
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,2157,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} }, 
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet400Award,1} }, 
        }, 
}
tbConfig[16] = --һ��ϸ��
{
	nId = 16,
	szMessageType = "nil", 
        szName = "Nh�n ph�n th��ng 800 c�i S� c� la lo�i 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,800,"��i hi�p kh�ng �� s� d�ng 800 chi�c S� c� la lo�i 1, kh�ng th� nh�n th��ng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet500Award,0,"Ng��i �� nh�n th��ng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S� d�ng 800 chi�c S� c� la lo�i 1 nh�n th��ng."} }, 
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,2157,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet500Award,1} }, 
        }, 
}
tbConfig[17] = --һ��ϸ��
{
	nId = 17,
	szMessageType = "nil", 
        szName = "Nh�n ph�n th��ng 1000 c�i S� c� la lo�i 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,1000,"��i hi�p kh�ng �� s� d�ng 1000 chi�c S� c� la lo�i 1, kh�ng th� nh�n th��ng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet600Award,0,"Ng��i �� nh�n th��ng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S� d�ng 1000 chi�c S� c� la lo�i 1 nh�n th��ng."} }, 
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,3483,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet600Award,1} }, 
        }, 
}

