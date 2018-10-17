-- ====================== �ļ���Ϣ ======================

-- ������Ե�����Խ�ϰ� - �۰��������NPC�Ի�
-- �ļ�������npc_dailog.lua
-- �����ߡ����ӷ��~
-- ����ʱ�䣺2009-05-20 18:30:39

-- ======================================================

Include("\\script\\event\\birthday_jieri\\200905\\class.lua");
Include("\\script\\lib\\compose_jinnang.lua");
Include("\\script\\task\\system\\task_string.lua");

tbZhuHe = 
{
	[1] = 
	{
		szComposeTitle =  "��i",
		nFreeItemCellLimit = 1,
		tbMaterial = 
		{
			{szName = "H�ng", tbProp = {6,1,2062,1}},
			{szName = "B�", tbProp = {6,1,2063,1}},
			{szName = "Thi�n", tbProp = {6,1,2064,1}},
			{szName = "H�", tbProp = {6,1,2065,1}},
			{szName = "��ng C�", tbProp = {6,1,2067,1}},
		},
		tbProduct = 
		{szName = "T�n B�n C�", tbProp = {6,1,2068,1,0,0}, nExpiredTime = tbBirthday0905.tbTask.item_expiredtime2},
	},
	
	[2] = 
	{
		szComposeTitle =  "��i",
		nFreeItemCellLimit = 1,
		tbMaterial = 
		{
			{szName = "H�ng", tbProp = {6,1,2062,1}},
			{szName = "B�", tbProp = {6,1,2063,1}},
			{szName = "Thi�n", tbProp = {6,1,2064,1}},
			{szName = "H�", tbProp = {6,1,2065,1}},
			{szName = "Ho�ng K�", tbProp = {6,1,2066,1}},
		},
		tbProduct = 
		{szName = "T�n B�n K�", tbProp = {6,1,2069,1,0,0}, nExpiredTime = tbBirthday0905.tbTask.item_expiredtime2},
	},
}


tbBirthday0905.tbZhuHe = tbComposeListForJinNang:new("tbBirthday0905_Compose", tbZhuHe)
tbXinwu =
{
	[1] =
	{
		szFailMsg = "S� l��ng kh�ng ��, t�p h�p cho �� r�i quay l�i nh�!",
		tbMaterial = 
		{
			[1]	= {szName = "H�ng T�m Ki�m", tbProp = {6, 1, 2070, 1, 0, 0},	nCount = 1},
		},
		tbProduct = 
		{
			szName="50 v�n EXP (1 H�ng T�m Ki�m)",
			[1]	= {nExp = 500000},
			[2] = 
			{
				pFun = function (self, nCount, szLogTilte)
					SetTask(tbBirthday0905.tbTask.tsk_toll_explmt, 500000 + GetTask(tbBirthday0905.tbTask.tsk_toll_explmt));
				end
			}
		},
		pLimitFun = function (self, nCount)
			if (GetTask(tbBirthday0905.tbTask.tsk_toll_explmt) + 500000 > 1000000000) then
				Msg2Player("��i hi�p �� nh�n ���c kinh nghi�m gi�i h�n cao nh�t r�i, kh�ng th� ti�p t�c nh�n th�m n�a!");
				return 0;
			else
				return 1;
			end
			
		end
	},
	[2] =
	{
		szFailMsg = "S� l��ng kh�ng ��, t�p h�p cho �� r�i quay l�i nh�!",
		tbMaterial = 
		{
			[1]	= {szName = "B� V��ng Th��ng", tbProp = {6, 1, 2071, 1, 0, 0},	nCount = 1},
		},
		tbProduct = 
		{
			szName="200 v�n EXP (1 B� V��ng Th��ng)",
			[1]	= {nExp = 2000000},
			[2] = 
			{
				pFun = function (self, nCount, szLogTilte)
					SetTask(tbBirthday0905.tbTask.tsk_toll_explmt, 2000000 + GetTask(tbBirthday0905.tbTask.tsk_toll_explmt));
				end
			}
		},
		pLimitFun = function (self, nCount)
			if (GetTask(tbBirthday0905.tbTask.tsk_toll_explmt) + 2000000 > 1000000000) then
				Msg2Player("��i hi�p �� nh�n ���c kinh nghi�m gi�i h�n cao nh�t r�i, kh�ng th� ti�p t�c nh�n th�m n�a!");
				return 0;
			else
				return 1;
			end
			
		end
	},
	[3] =
	{
		szFailMsg = "S� l��ng kh�ng ��, t�p h�p cho �� r�i quay l�i nh�!",
		tbMaterial = 
		{
			[1]	= {szName = "Thi�n T�n �ao", tbProp = {6, 1, 2072, 1, 0, 0},	nCount = 1},
			
		},
		tbProduct = 
		{
			szName="200 v�n EXP (1 Thi�n T�n �ao)",
			[1]	= {nExp = 2000000},
			[2] = 
			{
				pFun = function (self, nCount, szLogTilte)
					SetTask(tbBirthday0905.tbTask.tsk_toll_explmt, 2000000 + GetTask(tbBirthday0905.tbTask.tsk_toll_explmt));
				end
			}
		},
		pLimitFun = function (self, nCount)
			if (GetTask(tbBirthday0905.tbTask.tsk_toll_explmt) + 2000000 > 1000000000) then
				Msg2Player("��i hi�p �� nh�n ���c kinh nghi�m gi�i h�n cao nh�t r�i, kh�ng th� ti�p t�c nh�n th�m n�a!");
				return 0;
			else
				return 1;
			end
			
		end
	},
	[4] =
	{
		szFailMsg = "S� l��ng kh�ng ��, t�p h�p cho �� r�i quay l�i nh�!",
		tbMaterial = 
		{
			[1]	= {szName = "H� Nh�t Cung", tbProp = {6, 1, 2073, 1, 0, 0},	nCount = 1},
			
		},
		tbProduct = 
		{
			szName="300 v�n EXP (1 H� Nh�t Cung)",
			[1]	= {nExp = 3000000},
			[2] = 
			{
				pFun = function (self, nCount, szLogTilte)
					SetTask(tbBirthday0905.tbTask.tsk_toll_explmt, 3000000 + GetTask(tbBirthday0905.tbTask.tsk_toll_explmt));
				end
			}
		},
		pLimitFun = function (self, nCount)
			if (GetTask(tbBirthday0905.tbTask.tsk_toll_explmt) + 3000000 > 1000000000) then
				Msg2Player("��i hi�p �� nh�n ���c kinh nghi�m gi�i h�n cao nh�t r�i, kh�ng th� ti�p t�c nh�n th�m n�a!");
				return 0
			else
				return 1
			end
			
		end
	},
	[5] =
	{
		szFailMsg = "S� l��ng kh�ng ��, t�p h�p cho �� r�i quay l�i nh�!",
		tbMaterial = 
		{
			[1]	= {szName = "H�ng T�m Ki�m", tbProp = {6, 1, 2070, 1, 0, 0}, nCount = 5},
			[2]	= {szName = "B� V��ng Th��ng", tbProp = {6, 1, 2071, 1, 0, 0}, nCount = 2},
			
		},
		tbProduct = 
		{
			szName="800 v�n EXP (5 H�ng T�m Ki�m + 2 B� V��ng Th��ng)",
			[1]	= {nExp = 8000000},
			[2] = 
			{
				pFun = function (self, nCount, szLogTilte)
					SetTask(tbBirthday0905.tbTask.tsk_toll_explmt, 8000000 + GetTask(tbBirthday0905.tbTask.tsk_toll_explmt));
				end
			}
		},
		pLimitFun = function (self, nCount)
			if (GetTask(tbBirthday0905.tbTask.tsk_toll_explmt) + 8000000 > 1000000000) then
				Msg2Player("��i hi�p �� nh�n ���c kinh nghi�m gi�i h�n cao nh�t r�i, kh�ng th� ti�p t�c nh�n th�m n�a!");
				return 0;
			else
				return 1;
			end
			
		end
	},
	[6] =
	{
		szFailMsg = "S� l��ng kh�ng ��, t�p h�p cho �� r�i quay l�i nh�!",
		tbMaterial = 
		{
			[1]	= {szName = "H�ng T�m Ki�m", tbProp = {6, 1, 2070, 1, 0, 0}, nCount = 5},
			[2]	= {szName = "B� V��ng Th��ng", tbProp = {6, 1, 2071, 1, 0, 0}, nCount = 2},
			[3]	= {szName = "Thi�n T�n �ao", tbProp = {6, 1, 2072, 1, 0, 0}, nCount = 1},
		},
		tbProduct = 
		{
			szName="1200 v�n EXP (5 H�ng T�m Ki�m + 2 B� V��ng Th��ng + 1 Thi�n T�n �ao)",
			[1]	= {nExp = 12000000},
			[2] = 
			{
				pFun = function (self, nCount, szLogTilte)
					SetTask(tbBirthday0905.tbTask.tsk_toll_explmt, 12000000 + GetTask(tbBirthday0905.tbTask.tsk_toll_explmt));
				end
			}
		},
		pLimitFun = function (self, nCount)
			if (GetTask(tbBirthday0905.tbTask.tsk_toll_explmt) + 12000000 > 1000000000) then
				Msg2Player("��i hi�p �� nh�n ���c kinh nghi�m gi�i h�n cao nh�t r�i, kh�ng th� ti�p t�c nh�n th�m n�a!");
				return 0;
			else
				return 1;
			end
			
		end
	},
	[7] =
	{
		szFailMsg = "S� l��ng kh�ng ��, t�p h�p cho �� r�i quay l�i nh�!",
		tbMaterial = 
		{
			[1]	= {szName = "H�ng T�m Ki�m", tbProp = {6, 1, 2070, 1, 0, 0}, nCount = 5},
			[2]	= {szName = "B� V��ng Th��ng", tbProp = {6, 1, 2071, 1, 0, 0}, nCount = 2},
			[3]	= {szName = "Thi�n T�n �ao", tbProp = {6, 1, 2072, 1, 0, 0}, nCount = 1},
			[4]	= {szName = "H� Nh�t Cung", tbProp = {6, 1, 2073, 1, 0, 0}, nCount = 1},
			
		},
		tbProduct = 
		{
			szName="2000 v�n EXP (5 H�ng T�m Ki�m+2 B� V��ng Th��ng+1 Thi�n T�n �ao+1 H� Nh�t Cung)",
			[1]	= {nExp = 20000000},
			[2] = 
			{
				pFun = function (self, nCount, szLogTilte)
					SetTask(tbBirthday0905.tbTask.tsk_toll_explmt, 20000000 + GetTask(tbBirthday0905.tbTask.tsk_toll_explmt));
				end
			}
		},
		pLimitFun = function (self, nCount)
			if (GetTask(tbBirthday0905.tbTask.tsk_toll_explmt) + 20000000 > 1000000000) then
				Msg2Player("��i hi�p �� nh�n ���c kinh nghi�m gi�i h�n cao nh�t r�i, kh�ng th� ti�p t�c nh�n th�m n�a!");
				return 0;
			else
				return 1;
			end
			
		end
	},	
}

function tbBirthday0905:OnDailogMain2(nItemIndex, szDescLink)
end

tbBirthday0905.tbXinwu = tbComposeListForJinNang:new("tbBirthday0905_Compose_chuangguan", tbXinwu)
function tbBirthday0905:OnDailogMain3(nItemIndex, szDescLink)
end

function tbBirthday0905:GetJinnang()
end


function tbBirthday0905:OnDailogMain4()
end


function tbBirthday0905:OnDailogMain5()
end

