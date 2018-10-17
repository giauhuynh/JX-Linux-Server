Include("\\script\\dailogsys\\g_dialog.lua");
Include("\\script\\lib\\composeex.lua");

tbsinhnhat = {};
tbsinhnhat.tbCompose = 
{
				["B¸nh kem"] = 
				{
					tbFormula = 
						{
							szComposeTitle = format("B¹n muèn lµm b¸nh: %s", "B¸nh kem"),
							nWidth = 1,
							nHeight = 1,
							nFreeItemCellLimit = 0.02,
							tbMaterial = 
								{
									{szName = "S÷a t­¬i", tbProp = {4,975,1,1,0,0}, nCount = 6},
									{szName = "Bét tinh", tbProp = {4,976,1,1,0,0}, nCount = 6},
									{szName = "§­êng tinh", tbProp = {4,977,1,1,0,0}, nCount = 6},
									{szName = "Trøng gµ", tbProp = {4,979,1,1,0,0}, nCount = 6},
									
								},
							tbProduct = {szName = "B¸nh kem", tbProp = {6,1,2859,1,0,0}, nExpiredTime = 180*24*7},
						},
						pCompos = nil;
				},
				["B¸nh sinh nhËt nhá"] = 
				{
					tbFormula = 
						{
							szComposeTitle = format("B¹n muèn lµm b¸nh: %s", "B¸nh sinh nhËt nhá"),
							nWidth = 1,
							nHeight = 1,
							nFreeItemCellLimit = 0.02,
							tbMaterial = 
								{
									{szName = "S÷a t­¬i", tbProp = {4,975,1,1,0,0}, nCount = 10},
									{szName = "Bét tinh", tbProp = {4,976,1,1,0,0}, nCount = 10},
									{szName = "§­êng tinh", tbProp = {4,977,1,1,0,0}, nCount = 10},
									{szName = "Trøng gµ", tbProp = {4,979,1,1,0,0}, nCount = 10},
								},
							tbProduct = {szName = "B¸nh sinh nhËt nhá", tbProp = {6,1,30181,1,0,0}, nExpiredTime = 160*24*7},
						},
						pCompos = nil;
				},
				["B¸nh sinh nhËt lín"] = 
				{
					tbFormula = 
						{
							szComposeTitle = format("B¹n muèn lµm b¸nh: %s", "B¸nh sinh nhËt lín"),
							nWidth = 1,
							nHeight = 1,
							nFreeItemCellLimit = 0.02,
							tbMaterial = 
								{
									{szName = "S÷a t­¬i", tbProp = {4,975,1,1,0,0}, nCount = 18},
									{szName = "Bét tinh", tbProp = {4,976,1,1,0,0}, nCount = 18},
									{szName = "§­êng tinh", tbProp = {4,977,1,1,0,0}, nCount = 18},
									{szName = "Trøng gµ", tbProp = {4,979,1,1,0,0}, nCount = 18},
								},
							tbProduct = {szName = "B¸nh sinh nhËt lín", tbProp = {6,1,2861,1,0,0}, nExpiredTime = 60*24*7},
						},
						pCompos = nil;
				},
}

function tbsinhnhat:CreateDialog()
	-- local nNpcIndex = GetLastDiagNpc();
	-- local szNpcName = GetNpcName(nNpcIndex)
	-- if NpcName2Replace then
		-- szNpcName = NpcName2Replace(szNpcName)
	-- end
	-- return DailogClass:new(szNpcName)
end

function tbsinhnhat:ComposeItem(strItemName)
	-- local tbItem = self.tbCompose[strItemName]
	-- if tbItem then
		-- if (tbItem.pCompos == nil) then
			-- tbItem.pCompos = tbActivityCompose:new(tbItem.tbFormula, strItemName);			
		-- end
		-- tbItem.pCompos:ComposeDailog(0);
	-- end
end
--??Ã??d??
function tbsinhnhat:main()
	-- local tbMainDialog = tbsinhnhat:CreateDialog()
	-- tbMainDialog.szTitleMsg = "B©y giê lµ sinh nhËt Ngäc TuÊn b¹n muèn ®æi phÇn th­ëng g×?"
	-- tbMainDialog:AddOptEntry("Lµm B¸nh kem", tbsinhnhat.ComposeItem, {tbsinhnhat, "B¸nh kem"})
	-- tbMainDialog:AddOptEntry("Lµm B¸nh sinh nhËt nhá", tbsinhnhat.ComposeItem, {tbsinhnhat, "B¸nh sinh nhËt nhá"})
	-- tbMainDialog:AddOptEntry("Lµm B¸nh sinh nhËt lín", tbsinhnhat.ComposeItem, {tbsinhnhat, "B¸nh sinh nhËt lín"})
	-- tbMainDialog:Show()
end