Include("\\script\\activitysys\\config\\37\\variables.lua")
tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Kh�i ��ng gi�ng sinh 2011",
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
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "B�n �� ��nh qu�i ra v�t ph�m �o gi�ng sinh",
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
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "Tham gia t�ng kim ��t ���c �t nh�t 1000 �i�m t�ch l�y v� nh� h�n 3000 �i�m t�ch l�y m�i ���c t�i gi�ng sinh.",
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
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,10,EVENT_LOG_TITLE,"T�ng kim 1000 �i�m t�ch l�y nh�n l�y t�i gi�ng sinh"} },
	},
}
tbConfig[4] = --һ��ϸ��
{
	nId = 4,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim 3000 �i�m nh�n ���c t�i gi�ng sinh",
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
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,30,EVENT_LOG_TITLE,"T�ng kim 3000 �i�m nh�n ���c t�i gi�ng sinh �ai"} },
	},
}
tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "Chuanguan",
	szName = "V��t �i qu� 17 c�a �� ���c t�i gi�ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,10,EVENT_LOG_TITLE,"V��t �i qu� 17 c�a �� ���c t�i gi�ng sinh"} },
	},
}
tbConfig[6] = 
{
	nId = 6,
	szMessageType = "Chuanguan",
	szName = "V��t �i qua 28 c�a �� �� t�i gi�ng sinh ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,10,EVENT_LOG_TITLE,"V��t �i qua 28 c�a �� �� t�i gi�ng sinh ��i"} },
	},
}
tbConfig[7] = --һ��ϸ��
{
	nId = 7,
	szMessageType = "NpcOnDeath",
	szName = "Gi�t th�y t�c ��u l�nh �� ���c t�i gi�ng sinh.",
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
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,10,EVENT_LOG_TITLE,"Gi�t th�y t�c ��u l�nh �� ���c t�i gi�ng sinh."} },
	},
}
tbConfig[8] = --һ��ϸ��
{
	nId = 8,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t th�y t�c ��u l�nh Phong L�ng �� d� ���c t�i gi�ng sinh ��i.",
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
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,20,EVENT_LOG_TITLE,"Ti�u di�t th�y t�c ��u l�nh Phong L�ng �� d� ���c t�i gi�ng sinh ��i."} },
	},
}
tbConfig[9] = --һ��ϸ��
{
	nId = 9,
	szMessageType = "YDBZguoguan",
	szName = "Vi�n �� v��t qua �i th� 10 �� ���c t�i gi�ng sinh ��i.",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,15,EVENT_LOG_TITLE,"Vi�n �� v��t qua �i th� 10 �� ���c t�i gi�ng sinh ��i."} },
	},
}
tbConfig[10] = --һ��ϸ��
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t Boss Ho�ng Kim",
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
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,50,EVENT_LOG_TITLE,"Ti�u di�t Boss Ho�ng Kim �� ���c t�i gi�ng sinh ��i."} },
	},
}
tbConfig[11] = --һ��ϸ��
{
	nId = 11,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t Boss S�t th�",
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
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,3,EVENT_LOG_TITLE,"Ti�u di�t Boss s�t th� �� ���c t�i gi�ng sinh."} },
	},
}
tbConfig[12] = --һ��ϸ��
{
	nId = 12,
	szMessageType = "Chuanguan",
	szName = "V��t �i ti�u di�t boss. ",
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
tbConfig[13] = --һ��ϸ��
{
	nId = 13,
	szMessageType = "YDBZ_KillMaxBoss",
	szName = "Vi�n �� ti�u di�t boss cu�i c�ng",
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
tbConfig[14] = --һ��ϸ��
{
	nId = 14,
	szMessageType = "ClickNpc",
	szName = "K�ch Christmas Song",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Christmas Song"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Online nh�n th��ng",15} },
		{"AddDialogOpt",	{"V�t li�u t�ng h�p",17} },
	},
}
tbConfig[15] = --һ��ϸ��
{
	nId = 15,
	szMessageType = "CreateDialog",
	szName = "��i Tho�i v�i �ng Gi� Noel",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T�:00-01-12-2011 ��n 24:00-31-12-2011, ��i hi�p ��t c�p �� 150 (Kh�ng h�n ch�) c� th� giam gia ho�t ��ng gi�ng sinh� ch� c�n Online m�i gi� �� nh�n 10 qu�ng Gi�ng sinh v� 40 Pumpkin Pie� tham gia t�i �a 5 l�n",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Online nh�n th��ng",16} },
	},
}
tbConfig[16] = --һ��ϸ��
{
	nId = 16,
	szMessageType = "nil",
	szName = "Qu�n gi�ng sinh v� �o gi�ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"ThisActivity:CheckTaskDaily",	{TSK_XMAS_TROUSERS_DAILY,50,"H�m nay ng��i kh�ng th� l�nh, quay tr� l�i v�o ng�y mai.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:GiveXmasTrousers",	{nil} },
	},
}
tbConfig[17] = --һ��ϸ��
{
	nId = 17,
	szMessageType = "CreateDialog",
	szName = "D�i tho�i h�p th�nh v�t ph�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trong th�i gian ho�t ��ng, ��i hi�p c� th� h�p th�nh nh�ng m�n qu� gi�ng sinh, �ng gi� Noel (Nh�),�ng gi� Noel(Trung b�nh),�ng gi� Noel(L�n), b�nh gi�ng sinh, h�p qu� gi�ng sinh m� t� l� th�nh c�ng 70% h�p th�nh, �ng gi� noel c� t� l� 60%, c�n c�c tr��ng h�p kh�c l� 100%, ��i hi�p mu�n g�?",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H�p th�nh H�p qu� gi�ng sinh",18} },
		{"AddDialogOpt",	{"H�p th�nh �ng gi� Noel(Ti�u)",19} },
		--��ʱ�ر�- Modified By DinhHQ - 20111129
		{"AddDialogOpt",	{"H�p th�nh �ng gi� Noel(Trung)",20} },
		{"AddDialogOpt",	{"H�p th�nh �ng gi� Noel(��i)",21} },
		{"AddDialogOpt",	{"H�p th�nh B�nh gi�ng sinh",22} },
	},
}
tbConfig[18] = --һ��ϸ��
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh h�p qu� gi�ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Nh�n ���c h�p qu� gi�ng sinh",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�o Gi�ng Sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"Qu�n gi�ng sinh",ITEM_XMAS_TROUSERS,1} },
		--Change request Event Noel - Modified by DinhHQ - 20111129
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},50000} },
	},
	tbActition = 
	{
		{"ThisActivity:ComposeXmasGift",	{nil} },
	},
}
tbConfig[19] = --һ��ϸ��
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh �ng gi� Noel(Ti�u)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"�ng gi� Noel(Ti�u)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�o Gi�ng sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"Qu�n gi�ng sinh",ITEM_XMAS_TROUSERS,1} },
		{"AddOneMaterial",	{"T�i Gi�ng sinh",ITEM_XMAS_BAG,1} },
		--Change request Event Noel - Modified by DinhHQ - 20111129
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},100000} },
	},
	tbActition = 
	{
		{"ThisActivity:ComposeXmasPerson_S",	{nil} },
	},
}
tbConfig[20] = --һ��ϸ��
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh �ng gi� Noel(Trung)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"�ng gi� Noel(Trung)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�o gi�ng sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"N�n gi�ng sinh",{tbProp={6,1,3072,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3078,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"H�p th�nh �ng gi� Noel(Trung)"} },
	},
}
tbConfig[21] = --һ��ϸ��
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh �ng gi� Noel(��i)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ʥ������(��)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�o gi�ng sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"Qu�n gi�ng sinh",ITEM_XMAS_TROUSERS,1} },
		{"AddOneMaterial",	{"T�i gi�ng sinh",ITEM_XMAS_BAG,1} },
		{"AddOneMaterial",	{"N�n gi�ng sinh",{tbProp={6,1,3072,1,0,0},},2} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3079,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"H�p th�nh �ng gi� Noel(��i)"} },
	},
}
tbConfig[22] = --һ��ϸ��
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh b�nh gi�ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�nh gi�ng sinh",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�o gi�ng sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"T�i gi�ng sinh",ITEM_XMAS_BAG,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3082,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"composeXmasCake"} },
	},
}
tbConfig[23] = --һ��ϸ��
{
	nId = 23,
	szMessageType = "ClickNpc",
	szName = "Click �ng gi� Noel",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"�ng Gi� Noel"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"SetDialogTitle",	{"T� :01-12-2011 ��n 31-12-2011, Nh�ng ng��i ��t c�p 150 c� th� ��n m� s� d�ng 300,400,500 ng�i sao �� ��i L�nh b�i Boss, ng��i mu�n ��i lo�i n�o?"} },		
		{"AddDialogOpt",	{"L�nh b�i Boss - Tr��ng Tuy�n",24} },
		{"AddDialogOpt",	{"L�nh b�i Boss - Kim Th� L��ng",25} },
		{"AddDialogOpt",	{"L�nh b�i Boss - M� Dung To�n",26} },
		--��n b?exp - Modified by DinhHQ - 20111201
		--{"AddDialogOpt",	{"Nh�n l�y kinh nghi�m.",33} },
		--Ho�t ��ng th?3 - Modified By DinhHQ -20111215
		{"AddDialogOpt",	{"L� v�t ��m gi�ng sinh",34} },
		{"AddDialogOpt",	{"H�p th�nh �ng gi� Noel",38} },
	},
}
tbConfig[24] = --һ��ϸ��
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "L�nh b�i Boss - Tr��ng Tuy�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L�nh b�i Boss - Tr��ng Tuy�n",1,1,1,1,0,50},
	tbCondition = 
	{
		--Change request event noel - Modified By DinhHQ - 20111129
		{"AddOneMaterial",	{"Ng�i Sao",ITEM_XMAS_STAR,300} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3083,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"DoiLenhBaiGoiBossTaiNpcOngGiaNoel"} },
	},
}
tbConfig[25] = --һ��ϸ��
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "L�nh b�i Boss - Kim Th� L��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L�nh b�i Boss - Kim Th� L��ng",1,1,1,1,0,50},
	tbCondition = 
	{
		--Change request event noel - Modified By DinhHQ - 20111129
		{"AddOneMaterial",	{"Ng�i Sao",ITEM_XMAS_STAR,400} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3084,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"DoiLenhBaiGoiBossTaiNpcOngGiaNoel"} },
	},
}
tbConfig[26] = --һ��ϸ��
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "L�nh b�i Boss - M� Dung To�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L�nh b�i Boss - M� Dung To�n",1,1,1,1,0,50},
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
tbConfig[27] = --һ��ϸ��
{
	nId = 27,
	szMessageType = "ItemScript",
	szName = "S� d�ng �Ng Gi� Noel(Ti�u)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3077,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� � Th�nh th� v� th�n tr�n m�i c� th� s� d�ng"} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_PERSON_S_LIMIT,MAX_USED_XMAS_PERSON_S_LIMIT,"Ng��i �� s� d�ng �� �ng gi� Noel(Ti�u) r�i kh�ng th� s� d�ng ���c n�a!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasPerson_S",	{nil} },
	},
}
tbConfig[28] = --һ��ϸ��
{
	nId = 28,
	szMessageType = "ItemScript",
	szName = "S� d�ng �Ng Gi� Noel(Trung)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3078,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� � Th�nh th� v� th�n tr�n m�i c� th� s� d�ng."} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_PERSON_M_LIMIT,MAX_USED_XMAS_PERSON_M_LIMIT,"Ng��i �� s� d�ng �� �ng gi� Noel(Trung) r�i kh�ng th� s� d�ng ���c n�a!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasPerson_M",	{nil} },
	},
}
tbConfig[29] = --һ��ϸ��
{
	nId = 29,
	szMessageType = "ItemScript",
	szName = "S� d�ng �Ng Gi� Noel(��i)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3079,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� � Th�nh th� v� th�n tr�n m�i c� th� s� d�ng."} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_PERSON_L_LIMIT,MAX_USED_XMAS_PERSON_L_LIMIT,"Ng��i �� s� d�ng �� �ng gi� Noel(Ti�u) r�i kh�ng th� s� d�ng ���c n�a!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasPerson_L",	{nil} },
	},
}
tbConfig[30] = --һ��ϸ��
{
	nId = 30,
	szMessageType = "ItemScript",
	szName = "S� d�ng h�p qu� gi�ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3080,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� � Th�nh th� v� th�n tr�n m�i c� th� s� d�ng."} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_GIFT_LIMIT,MAX_USED_XMAS_GIFT_LIMIT,"Ng��i �� s� d�ng �� h�p qu� gi�ng sinh r�i,kh�ng th� s� d�ng n�a!.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasGift",	{nil} },
	},
}
tbConfig[31] = --һ��ϸ��
{
	nId = 31,
	szMessageType = "ItemScript",
	szName = "S� d�ng b�nh gi�ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3082,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� � Th�nh th� v� th�n tr�n m�i c� th� s� d�ng."} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_CAKE_LIMIT,MAX_USED_XMAS_CAKE_LIMIT,"Ng��i �� s� d�ng �� b�nh gi�ng sinh r�i,kh�ng th� s� d�ng n�a!.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasCake",	{nil} },
	},
}
tbConfig[32] = --һ��ϸ��
{
	nId = 32,
	szMessageType = "OnLogin",
	szName = "Ng��i ch�i tr�c tuy�n",
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
	szName = "Nh�n b�i th��ng gi�ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"ThisActivity:CheckTimeGetCompensation",	{nil} },
		{"tbVNG_BitTask_Lib:CheckBitTaskValue", {{nTaskID = 2911,nStartBit = 29,nBitCount = 1,nMaxValue = 1}, 0, "M�i ng��i ch� nh�n ���c 1 ph�n th��ng", "=="}},	
	},
	tbActition = 
	{
		{"tbVNG_BitTask_Lib:setBitTask", {{nTaskID = 2911,nStartBit = 29,nBitCount = 1,nMaxValue = 1}, 1}},
		{"PlayerFunLib:AddExp",	{18e6,0,"Event_Noel","Nh�n b�i th��ng"} },
	},
}
tbConfig[34] =
{
	nId = 34,
	szMessageType = "CreateDialog",
	szName = "��m gi�ng sinh tho�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T� 0:00-24-12-2011 ��n 24:00-25-12-2011,��i hi�p tr�n c�p 150 c� th� ��n nh�n th��ng l� 2 T� kinh nghi�m",0},
	tbCondition = 
	{		
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta mu�n nh�n th��ng",35} },
	},
}
tbConfig[35] = 
{
	nId = 35,
	szMessageType = "nil",
	szName = "Nh�n th��ng ��m gi�ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"ThisActivity:CheckTimeGetFreeExp",	{nil} },
		{"tbVNG_BitTask_Lib:CheckBitTaskValue", {{nTaskID = 2912,nStartBit = 20,nBitCount = 1,nMaxValue = 1}, 0, "M�i ng��i ch� nh�n ���c 1 l�n.", "=="}},	
	},
	tbActition = 
	{
		{"tbVNG_BitTask_Lib:setBitTask", {{nTaskID = 2912,nStartBit = 20,nBitCount = 1,nMaxValue = 1}, 1}},
		{"PlayerFunLib:AddExp",	{200e6,0,"Event_Noel","NhanThuongDiemKinhNghiemDemGiangSinh"} },
	},
}
tbConfig[36] =--�̷��򿾼�
{
	nId = 36,
	szMessageType = "ClickNpc",
	szName = "Nh�n Th��ng Nh�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Th��ng Nh�n"},
	tbCondition = 
	{
	},
	tbActition = 
	{		
		{"AddDialogOpt",	{"Qu� gi�ng sinh",37} },
	},
}
tbConfig[37] =
{
	nId = 37,
	szMessageType = "CreateCompose",
	szName = "Mua g� n��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Qu� gi�ng sinh",1,1,1,0.02,0,50},
	tbCondition = 
	{		
		{"AddOneMaterial",	{"Ng�n l��ng ",{nJxb=1},10000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="Qu� gi�ng sinh",tbProp={6,1,30167,1,0,0},nExpiredTime=20190101,},1,EVENT_LOG_TITLE,"Qu� gi�ng sinh"} },
	},
}
tbConfig[38] =
{
	nId = 38,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh �ng gi� noel",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"�ng gi� Noel",1,1,1,0.02,0,50},
	tbCondition = 
	{		
		{"AddOneMaterial",	{"Qu� gi�ng sinh",{tbProp={6,1,30167,1,0,0},nExpiredTime=20190101,},1} },		
		{"AddOneMaterial",	{"V� gi�ng sinh",{tbProp={6,1,30166,1,0,0},nExpiredTime=20190101,},1} },
		{"AddOneMaterial",	{"M� gi�ng sinh",ITEM_XMAS_HAT,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30168,1,0,0},nExpiredTime=20190101,},1, EVENT_LOG_TITLE, "H�p th�nh �ng gi� Noel"} },
	},
}
tbConfig[39] = 
{
	nId = 39,
	szMessageType = "ItemScript",
	szName = "S� d�ng �ng gi� Noel",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30168,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCellWH",	{3, 3, 1,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� � Th�nh th� v� th�n tr�n m�i c� th� s� d�ng."} },
		{"PlayerFunLib:CheckTask",	{2916,1500,"Ch� c� th� s� d�ng nhi�u nh�t l� 1500.","<"} },		
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasPerson_Pink",	{nil} },
	},
}
