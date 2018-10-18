-- ====================== ÎÄ¼þÐÅÏ¢ ======================

-- ½£ÏÀÇéÔµÍøÂç°æÔ½ÄÏ°æ - ÐÛ°ÔÌìÏÂÀñ¹ÙNPC¶Ô»°
-- ÎÄ¼þÃû¡¡£ºnpc_dailog.lua
-- ´´½¨Õß¡¡£º×Ó·Çô~
-- ´´½¨Ê±¼ä£º2009-05-20 18:30:39

-- ======================================================

Include("\\script\\event\\birthday_jieri\\200905\\class.lua");
Include("\\script\\lib\\compose_jinnang.lua");
Include("\\script\\task\\system\\task_string.lua");

tbZhuHe = 
{
	[1] = 
	{
		szComposeTitle =  "§æi",
		nFreeItemCellLimit = 1,
		tbMaterial = 
		{
			{szName = "Hïng", tbProp = {6,1,2062,1}},
			{szName = "B¸", tbProp = {6,1,2063,1}},
			{szName = "Thiªn", tbProp = {6,1,2064,1}},
			{szName = "H¹", tbProp = {6,1,2065,1}},
			{szName = "§ång Cæ", tbProp = {6,1,2067,1}},
		},
		tbProduct = 
		{szName = "T©n B¶n Cæ", tbProp = {6,1,2068,1,0,0}, nExpiredTime = tbBirthday0905.tbTask.item_expiredtime2},
	},
	
	[2] = 
	{
		szComposeTitle =  "§æi",
		nFreeItemCellLimit = 1,
		tbMaterial = 
		{
			{szName = "Hïng", tbProp = {6,1,2062,1}},
			{szName = "B¸", tbProp = {6,1,2063,1}},
			{szName = "Thiªn", tbProp = {6,1,2064,1}},
			{szName = "H¹", tbProp = {6,1,2065,1}},
			{szName = "Hoµng Kú", tbProp = {6,1,2066,1}},
		},
		tbProduct = 
		{szName = "T©n B¶n Kú", tbProp = {6,1,2069,1,0,0}, nExpiredTime = tbBirthday0905.tbTask.item_expiredtime2},
	},
}


tbBirthday0905.tbZhuHe = tbComposeListForJinNang:new("tbBirthday0905_Compose", tbZhuHe)
tbXinwu =
{
	[1] =
	{
		szFailMsg = "Sè l­îng kh«ng ®ñ, tËp hîp cho ®ñ råi quay l¹i nhÐ!",
		tbMaterial = 
		{
			[1]	= {szName = "Hïng T©m KiÕm", tbProp = {6, 1, 2070, 1, 0, 0},	nCount = 1},
		},
		tbProduct = 
		{
			szName="50 v¹n EXP (1 Hïng T©m KiÕm)",
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
				Msg2Player("§¹i hiÖp ®· nhËn ®­îc kinh nghiÖm giíi h¹n cao nhÊt råi, kh«ng thÓ tiÕp tôc nhËn thªm n÷a!");
				return 0;
			else
				return 1;
			end
			
		end
	},
	[2] =
	{
		szFailMsg = "Sè l­îng kh«ng ®ñ, tËp hîp cho ®ñ råi quay l¹i nhÐ!",
		tbMaterial = 
		{
			[1]	= {szName = "B¸ V­¬ng Th­¬ng", tbProp = {6, 1, 2071, 1, 0, 0},	nCount = 1},
		},
		tbProduct = 
		{
			szName="200 v¹n EXP (1 B¸ V­¬ng Th­¬ng)",
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
				Msg2Player("§¹i hiÖp ®· nhËn ®­îc kinh nghiÖm giíi h¹n cao nhÊt råi, kh«ng thÓ tiÕp tôc nhËn thªm n÷a!");
				return 0;
			else
				return 1;
			end
			
		end
	},
	[3] =
	{
		szFailMsg = "Sè l­îng kh«ng ®ñ, tËp hîp cho ®ñ råi quay l¹i nhÐ!",
		tbMaterial = 
		{
			[1]	= {szName = "Thiªn Tµn §ao", tbProp = {6, 1, 2072, 1, 0, 0},	nCount = 1},
			
		},
		tbProduct = 
		{
			szName="200 v¹n EXP (1 Thiªn Tµn §ao)",
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
				Msg2Player("§¹i hiÖp ®· nhËn ®­îc kinh nghiÖm giíi h¹n cao nhÊt råi, kh«ng thÓ tiÕp tôc nhËn thªm n÷a!");
				return 0;
			else
				return 1;
			end
			
		end
	},
	[4] =
	{
		szFailMsg = "Sè l­îng kh«ng ®ñ, tËp hîp cho ®ñ råi quay l¹i nhÐ!",
		tbMaterial = 
		{
			[1]	= {szName = "H¹ NhËt Cung", tbProp = {6, 1, 2073, 1, 0, 0},	nCount = 1},
			
		},
		tbProduct = 
		{
			szName="300 v¹n EXP (1 H¹ NhËt Cung)",
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
				Msg2Player("§¹i hiÖp ®· nhËn ®­îc kinh nghiÖm giíi h¹n cao nhÊt råi, kh«ng thÓ tiÕp tôc nhËn thªm n÷a!");
				return 0
			else
				return 1
			end
			
		end
	},
	[5] =
	{
		szFailMsg = "Sè l­îng kh«ng ®ñ, tËp hîp cho ®ñ råi quay l¹i nhÐ!",
		tbMaterial = 
		{
			[1]	= {szName = "Hïng T©m KiÕm", tbProp = {6, 1, 2070, 1, 0, 0}, nCount = 5},
			[2]	= {szName = "B¸ V­¬ng Th­¬ng", tbProp = {6, 1, 2071, 1, 0, 0}, nCount = 2},
			
		},
		tbProduct = 
		{
			szName="800 v¹n EXP (5 Hïng T©m KiÕm + 2 B¸ V­¬ng Th­¬ng)",
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
				Msg2Player("§¹i hiÖp ®· nhËn ®­îc kinh nghiÖm giíi h¹n cao nhÊt råi, kh«ng thÓ tiÕp tôc nhËn thªm n÷a!");
				return 0;
			else
				return 1;
			end
			
		end
	},
	[6] =
	{
		szFailMsg = "Sè l­îng kh«ng ®ñ, tËp hîp cho ®ñ råi quay l¹i nhÐ!",
		tbMaterial = 
		{
			[1]	= {szName = "Hïng T©m KiÕm", tbProp = {6, 1, 2070, 1, 0, 0}, nCount = 5},
			[2]	= {szName = "B¸ V­¬ng Th­¬ng", tbProp = {6, 1, 2071, 1, 0, 0}, nCount = 2},
			[3]	= {szName = "Thiªn Tµn §ao", tbProp = {6, 1, 2072, 1, 0, 0}, nCount = 1},
		},
		tbProduct = 
		{
			szName="1200 v¹n EXP (5 Hïng T©m KiÕm + 2 B¸ V­¬ng Th­¬ng + 1 Thiªn Tµn §ao)",
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
				Msg2Player("§¹i hiÖp ®· nhËn ®­îc kinh nghiÖm giíi h¹n cao nhÊt råi, kh«ng thÓ tiÕp tôc nhËn thªm n÷a!");
				return 0;
			else
				return 1;
			end
			
		end
	},
	[7] =
	{
		szFailMsg = "Sè l­îng kh«ng ®ñ, tËp hîp cho ®ñ råi quay l¹i nhÐ!",
		tbMaterial = 
		{
			[1]	= {szName = "Hïng T©m KiÕm", tbProp = {6, 1, 2070, 1, 0, 0}, nCount = 5},
			[2]	= {szName = "B¸ V­¬ng Th­¬ng", tbProp = {6, 1, 2071, 1, 0, 0}, nCount = 2},
			[3]	= {szName = "Thiªn Tµn §ao", tbProp = {6, 1, 2072, 1, 0, 0}, nCount = 1},
			[4]	= {szName = "H¹ NhËt Cung", tbProp = {6, 1, 2073, 1, 0, 0}, nCount = 1},
			
		},
		tbProduct = 
		{
			szName="2000 v¹n EXP (5 Hïng T©m KiÕm+2 B¸ V­¬ng Th­¬ng+1 Thiªn Tµn §ao+1 H¹ NhËt Cung)",
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
				Msg2Player("§¹i hiÖp ®· nhËn ®­îc kinh nghiÖm giíi h¹n cao nhÊt råi, kh«ng thÓ tiÕp tôc nhËn thªm n÷a!");
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

