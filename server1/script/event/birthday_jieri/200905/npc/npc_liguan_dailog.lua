-- ====================== 文件信息 ======================

-- 剑侠情缘网络版越南版 - 雄霸天下礼官NPC对话
-- 文件名　：npc_dailog.lua
-- 创建者　：子非魚
-- 创建时间：2009-05-20 18:30:39

-- ======================================================

Include("\\script\\event\\birthday_jieri\\200905\\class.lua");
Include("\\script\\lib\\compose_jinnang.lua");
Include("\\script\\task\\system\\task_string.lua");

tbZhuHe = 
{
	[1] = 
	{
		szComposeTitle =  "фi",
		nFreeItemCellLimit = 1,
		tbMaterial = 
		{
			{szName = "H飊g", tbProp = {6,1,2062,1}},
			{szName = "B�", tbProp = {6,1,2063,1}},
			{szName = "Thi猲", tbProp = {6,1,2064,1}},
			{szName = "H�", tbProp = {6,1,2065,1}},
			{szName = "уng C�", tbProp = {6,1,2067,1}},
		},
		tbProduct = 
		{szName = "T﹏ B秐 C�", tbProp = {6,1,2068,1,0,0}, nExpiredTime = tbBirthday0905.tbTask.item_expiredtime2},
	},
	
	[2] = 
	{
		szComposeTitle =  "фi",
		nFreeItemCellLimit = 1,
		tbMaterial = 
		{
			{szName = "H飊g", tbProp = {6,1,2062,1}},
			{szName = "B�", tbProp = {6,1,2063,1}},
			{szName = "Thi猲", tbProp = {6,1,2064,1}},
			{szName = "H�", tbProp = {6,1,2065,1}},
			{szName = "Ho祅g K�", tbProp = {6,1,2066,1}},
		},
		tbProduct = 
		{szName = "T﹏ B秐 K�", tbProp = {6,1,2069,1,0,0}, nExpiredTime = tbBirthday0905.tbTask.item_expiredtime2},
	},
}


tbBirthday0905.tbZhuHe = tbComposeListForJinNang:new("tbBirthday0905_Compose", tbZhuHe)
tbXinwu =
{
	[1] =
	{
		szFailMsg = "S� lng kh玭g , t藀 h頿 cho  r錳 quay l筰 nh�!",
		tbMaterial = 
		{
			[1]	= {szName = "H飊g T﹎ Ki誱", tbProp = {6, 1, 2070, 1, 0, 0},	nCount = 1},
		},
		tbProduct = 
		{
			szName="50 v筺 EXP (1 H飊g T﹎ Ki誱)",
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
				Msg2Player("Чi hi謕  nh薾 頲 kinh nghi謒 gi韎 h筺 cao nh蕋 r錳, kh玭g th� ti誴 t鬰 nh薾 th猰 n鱝!");
				return 0;
			else
				return 1;
			end
			
		end
	},
	[2] =
	{
		szFailMsg = "S� lng kh玭g , t藀 h頿 cho  r錳 quay l筰 nh�!",
		tbMaterial = 
		{
			[1]	= {szName = "B� Vng Thng", tbProp = {6, 1, 2071, 1, 0, 0},	nCount = 1},
		},
		tbProduct = 
		{
			szName="200 v筺 EXP (1 B� Vng Thng)",
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
				Msg2Player("Чi hi謕  nh薾 頲 kinh nghi謒 gi韎 h筺 cao nh蕋 r錳, kh玭g th� ti誴 t鬰 nh薾 th猰 n鱝!");
				return 0;
			else
				return 1;
			end
			
		end
	},
	[3] =
	{
		szFailMsg = "S� lng kh玭g , t藀 h頿 cho  r錳 quay l筰 nh�!",
		tbMaterial = 
		{
			[1]	= {szName = "Thi猲 T祅 o", tbProp = {6, 1, 2072, 1, 0, 0},	nCount = 1},
			
		},
		tbProduct = 
		{
			szName="200 v筺 EXP (1 Thi猲 T祅 o)",
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
				Msg2Player("Чi hi謕  nh薾 頲 kinh nghi謒 gi韎 h筺 cao nh蕋 r錳, kh玭g th� ti誴 t鬰 nh薾 th猰 n鱝!");
				return 0;
			else
				return 1;
			end
			
		end
	},
	[4] =
	{
		szFailMsg = "S� lng kh玭g , t藀 h頿 cho  r錳 quay l筰 nh�!",
		tbMaterial = 
		{
			[1]	= {szName = "H� Nh藅 Cung", tbProp = {6, 1, 2073, 1, 0, 0},	nCount = 1},
			
		},
		tbProduct = 
		{
			szName="300 v筺 EXP (1 H� Nh藅 Cung)",
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
				Msg2Player("Чi hi謕  nh薾 頲 kinh nghi謒 gi韎 h筺 cao nh蕋 r錳, kh玭g th� ti誴 t鬰 nh薾 th猰 n鱝!");
				return 0
			else
				return 1
			end
			
		end
	},
	[5] =
	{
		szFailMsg = "S� lng kh玭g , t藀 h頿 cho  r錳 quay l筰 nh�!",
		tbMaterial = 
		{
			[1]	= {szName = "H飊g T﹎ Ki誱", tbProp = {6, 1, 2070, 1, 0, 0}, nCount = 5},
			[2]	= {szName = "B� Vng Thng", tbProp = {6, 1, 2071, 1, 0, 0}, nCount = 2},
			
		},
		tbProduct = 
		{
			szName="800 v筺 EXP (5 H飊g T﹎ Ki誱 + 2 B� Vng Thng)",
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
				Msg2Player("Чi hi謕  nh薾 頲 kinh nghi謒 gi韎 h筺 cao nh蕋 r錳, kh玭g th� ti誴 t鬰 nh薾 th猰 n鱝!");
				return 0;
			else
				return 1;
			end
			
		end
	},
	[6] =
	{
		szFailMsg = "S� lng kh玭g , t藀 h頿 cho  r錳 quay l筰 nh�!",
		tbMaterial = 
		{
			[1]	= {szName = "H飊g T﹎ Ki誱", tbProp = {6, 1, 2070, 1, 0, 0}, nCount = 5},
			[2]	= {szName = "B� Vng Thng", tbProp = {6, 1, 2071, 1, 0, 0}, nCount = 2},
			[3]	= {szName = "Thi猲 T祅 o", tbProp = {6, 1, 2072, 1, 0, 0}, nCount = 1},
		},
		tbProduct = 
		{
			szName="1200 v筺 EXP (5 H飊g T﹎ Ki誱 + 2 B� Vng Thng + 1 Thi猲 T祅 o)",
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
				Msg2Player("Чi hi謕  nh薾 頲 kinh nghi謒 gi韎 h筺 cao nh蕋 r錳, kh玭g th� ti誴 t鬰 nh薾 th猰 n鱝!");
				return 0;
			else
				return 1;
			end
			
		end
	},
	[7] =
	{
		szFailMsg = "S� lng kh玭g , t藀 h頿 cho  r錳 quay l筰 nh�!",
		tbMaterial = 
		{
			[1]	= {szName = "H飊g T﹎ Ki誱", tbProp = {6, 1, 2070, 1, 0, 0}, nCount = 5},
			[2]	= {szName = "B� Vng Thng", tbProp = {6, 1, 2071, 1, 0, 0}, nCount = 2},
			[3]	= {szName = "Thi猲 T祅 o", tbProp = {6, 1, 2072, 1, 0, 0}, nCount = 1},
			[4]	= {szName = "H� Nh藅 Cung", tbProp = {6, 1, 2073, 1, 0, 0}, nCount = 1},
			
		},
		tbProduct = 
		{
			szName="2000 v筺 EXP (5 H飊g T﹎ Ki誱+2 B� Vng Thng+1 Thi猲 T祅 o+1 H� Nh藅 Cung)",
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
				Msg2Player("Чi hi謕  nh薾 頲 kinh nghi謒 gi韎 h筺 cao nh蕋 r錳, kh玭g th� ti誴 t鬰 nh薾 th猰 n鱝!");
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

