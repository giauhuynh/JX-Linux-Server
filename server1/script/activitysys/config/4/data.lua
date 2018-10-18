
_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>��ϲ <color=yellow>%s<color=green> �ѻ����Ʒ<color=yellow>%s<color=green> ��ʹ�� <color=yellow>����õ�廨��<color>", GetName(), strItemName)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end	

tbActivityNpc = {	
	[1] = {
		szName = "�ϳɻ�����", 
		nLevel = 95,
		nNpcId = 1888,
		nIsboss = 0,
		szScriptPath = "\\script\\activitysys\\npcdailog.lua",
		},
	[2] = {
		szName = "�̲�", 
		nLevel = 95,
		nNpcId = 1889,
		nIsboss = 0,
		bNoRevive = 0,
		szScriptPath = "\\script\\activitysys\\config\\40\\npc_grass.lua",
		}
}

tbActivityNpcPos = {
	[1] = {
			[1] = {78,1588,3221,},
			[2] = {11,3141,5061,},
			[3] = {37,1707,3117,},
		},
	[2] = {
		{20, 3593, 6273,},
		{53, 1670, 3256,},
		{99, 1717, 3279,},
		{100, 1576, 3226,},
		{101, 1766, 3272,},
		{121, 1874, 4587,},
		{153, 1715, 3297,},
		{174, 1544, 3287,},
		},
	}
	
	
tbMonstorAward = {
	[321] = {	-- ����ɽ��
		[1]={szName="��õ��",tbProp={6,1,3117,1,0,0},nExpiredTime=20190401,nRate = 25.0,},
		[2]={szName="��õ��",tbProp={6,1,3119,1,0,0},nExpiredTime=20190401,nRate = 25.0,},
		[3]={szName="õ�����",tbProp={6,1,3125,1,0,0},nExpiredTime=20190401,nRate = 10.0,},
		},	
	[322] = {	-- ����ɽ��
		[1]={szName="��õ��",tbProp={6,1,3118,1,0,0},nExpiredTime=20190401,nRate = 25.0,},
		[2]={szName="��õ��",tbProp={6,1,3120,1,0,0},nExpiredTime=20190401,nRate = 25.0,},
		[3]={szName="õ�����",tbProp={6,1,3125,1,0,0},nExpiredTime=20190401,nRate = 10.0,},
		},
	[227] = {	-- ɳĮɽ��3
		[1]={szName="��õ��",tbProp={6,1,3117,1,0,0},nExpiredTime=20190401,nRate = 20.0,},
		[2]={szName="��õ��",tbProp={6,1,3119,1,0,0},nExpiredTime=20190401,nRate = 20.0,},
		[3]={szName="��õ��",tbProp={6,1,3118,1,0,0},nExpiredTime=20190401,nRate = 20.0,},
		},
	[340] = {	-- Ī�߿�
		[1]={szName="��õ��",tbProp={6,1,3118,1,0,0},nExpiredTime=20190401,nRate = 20.0,},
		[2]={szName="��õ��",tbProp={6,1,3119,1,0,0},nExpiredTime=20190401,nRate = 20.0,},
		[3]={szName="��õ��",tbProp={6,1,3120,1,0,0},nExpiredTime=20190401,nRate = 20.0,},
		},
	}	
	
tbItemAward = {
	["3Color_Rose"] = {szName = "500000 ��exp", nExp=500000},
	["4Color_Rose"] = {szName = "1000000 ��exp", nExp=1000000},
	["MeiGuiXiangDai"] = {
		[1]={szName="��õ��",tbProp={6,1,3118,1,0,0},nCount=5, nExpiredTime=20190401,nRate = 25.0,},
		[2]={szName="��õ��",tbProp={6,1,3119,1,0,0},nCount=5, nExpiredTime=20190401,nRate = 25.0,},
		[3]={szName="��õ��",tbProp={6,1,3120,1,0,0},nCount=5, nExpiredTime=20190401,nRate = 25.0,},
		[4]={szName="��õ��",tbProp={6,1,3117,1,0,0},nCount=5, nExpiredTime=20190401,nRate = 25.0,},
		},		
	}	

tbItemOtherAward = {
	["3Color_Rose"] = {
		[500] = "ʹ��500����ɫ����",
		[1000] = "ʹ��1000����ɫ����",
		},
	["4Color_Rose"] = {
		[500] = "ʹ��500����ɫ����",
		[1000] = "ʹ��1000����ɫ����",
		[1500] = "ʹ��1500����ɫ����",
		},
	["Corbeil"] = {
		[100] = {
			tbAward = {nExp_tl=10000000},
			szLog = "ʹ������õ�廨��100��",
			},
		[200] = {
			tbAward = {nExp_tl=10000000},
			szLog = "ʹ������õ�廨��200��",
			},
		[300] = {
			tbAward = {nExp_tl=10000000},
			szLog = "ʹ������õ�廨��300��",
			},
		[400] = {
			tbAward = {nExp_tl=10000000},
			szLog = "ʹ������õ�廨��400��",
			},
		[500] = {
			tbAward = {nExp_tl=20000000},
			szLog = "ʹ������õ�廨��500��",
			},
		[600] = {
			tbAward = {nExp_tl=20000000},
			szLog = "ʹ������õ�廨��600��",
			},
		[700] = {
			tbAward = {nExp_tl=20000000},
			szLog = "ʹ������õ�廨��700��",
			},
		[800] = {
			tbAward = {nExp_tl=20000000},
			szLog = "ʹ������õ�廨��800��",
			},
		[900] = {
			tbAward = {nExp_tl=20000000},
			szLog = "ʹ������õ�廨��900��",
			},
		[1000] = {
			tbAward = {nExp_tl=30000000},
			szLog = "ʹ������õ�廨��1000��",
			},
		[1100] = {
			tbAward = {nExp_tl=30000000},
			szLog = "ʹ������õ�廨��1100��",
			},
		[1200] = {
			tbAward = {nExp_tl=30000000},
			szLog = "ʹ������õ�廨��1200��",
			},
		[1300] = {
			tbAward = {nExp_tl=40000000},
			szLog = "ʹ������õ�廨��1300��",
			},
		[1400] = {
			tbAward = {nExp_tl=50000000},
			szLog = "ʹ������õ�廨��1400��",
			},
		[1500] = {
			tbAward ={
					{szName="���ڿ�����",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate=14, CallBack = _Message},
					{szName="�����±���",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={6,0,0,0,0,0},nRate=14, CallBack = _Message},
					{szName="����Ь����",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nRate=14, CallBack = _Message},
					{szName="������������",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nRate=11, CallBack = _Message},
					{szName="���ڻ�����",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nRate=11, CallBack = _Message},
					{szName="������������",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},nRate=14, CallBack = _Message},
					{szName="�����屦��",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={9,0,0,0,0,0}, nRate=10, CallBack = _Message},
					{szName="�����Ͻ䱦��",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nRate=5, CallBack = _Message},
					{szName="�����½䱦��",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},nRate=5, CallBack = _Message},
					{szName="������������",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={7,0,0,0,0,0},nRate=2, CallBack = _Message},	
			},
			szLog = "ʹ������õ�廨��1500�ν���O",
			},	
		},
	}	
	
-- ���˴��Ľ����Լ�����	
tbLuckBeltAward = {
	[1]={szName="��ɫõ�廨��",tbProp={6,1,3121,1,0,0},nExpiredTime=20190401,nBindState = -2,},
	[2]={szName="��ɫõ�廨��",tbProp={6,1,3122,1,0,0},nExpiredTime=20190401,nBindState = -2,},
	[3]={szName="����õ�廨��",tbProp={6,1,3127,1,0,0},nExpiredTime=20190401,nBindState = -2,},	
	}	
tbLuckBelt = {
	[1] = {nRate = 45, szActionLog = "ʹ�����˴���ȡ��ɫ����",},
	[2] = {nRate = 45, szActionLog = "ʹ�����˴���ȡ��ɫ����",},
	[3] = {nRate = 10, szActionLog = "ʹ�����˴���ȡ����õ�廨��",},
	}	
