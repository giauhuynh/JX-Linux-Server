Include("\\script\\dailogsys\\g_dialog.lua");
Include("\\script\\lib\\composeex.lua");

tbsinhnhat = {};
tbsinhnhat.tbCompose = 
{
				["B�nh kem"] = 
				{
					tbFormula = 
						{
							szComposeTitle = format("B�n mu�n l�m b�nh: %s", "B�nh kem"),
							nWidth = 1,
							nHeight = 1,
							nFreeItemCellLimit = 0.02,
							tbMaterial = 
								{
									{szName = "S�a t��i", tbProp = {4,975,1,1,0,0}, nCount = 6},
									{szName = "B�t tinh", tbProp = {4,976,1,1,0,0}, nCount = 6},
									{szName = "���ng tinh", tbProp = {4,977,1,1,0,0}, nCount = 6},
									{szName = "Tr�ng g�", tbProp = {4,979,1,1,0,0}, nCount = 6},
									
								},
							tbProduct = {szName = "B�nh kem", tbProp = {6,1,2859,1,0,0}, nExpiredTime = 180*24*7},
						},
						pCompos = nil;
				},
				["B�nh sinh nh�t nh�"] = 
				{
					tbFormula = 
						{
							szComposeTitle = format("B�n mu�n l�m b�nh: %s", "B�nh sinh nh�t nh�"),
							nWidth = 1,
							nHeight = 1,
							nFreeItemCellLimit = 0.02,
							tbMaterial = 
								{
									{szName = "S�a t��i", tbProp = {4,975,1,1,0,0}, nCount = 10},
									{szName = "B�t tinh", tbProp = {4,976,1,1,0,0}, nCount = 10},
									{szName = "���ng tinh", tbProp = {4,977,1,1,0,0}, nCount = 10},
									{szName = "Tr�ng g�", tbProp = {4,979,1,1,0,0}, nCount = 10},
								},
							tbProduct = {szName = "B�nh sinh nh�t nh�", tbProp = {6,1,30181,1,0,0}, nExpiredTime = 160*24*7},
						},
						pCompos = nil;
				},
				["B�nh sinh nh�t l�n"] = 
				{
					tbFormula = 
						{
							szComposeTitle = format("B�n mu�n l�m b�nh: %s", "B�nh sinh nh�t l�n"),
							nWidth = 1,
							nHeight = 1,
							nFreeItemCellLimit = 0.02,
							tbMaterial = 
								{
									{szName = "S�a t��i", tbProp = {4,975,1,1,0,0}, nCount = 18},
									{szName = "B�t tinh", tbProp = {4,976,1,1,0,0}, nCount = 18},
									{szName = "���ng tinh", tbProp = {4,977,1,1,0,0}, nCount = 18},
									{szName = "Tr�ng g�", tbProp = {4,979,1,1,0,0}, nCount = 18},
								},
							tbProduct = {szName = "B�nh sinh nh�t l�n", tbProp = {6,1,2861,1,0,0}, nExpiredTime = 60*24*7},
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
--??�??d??
function tbsinhnhat:main()
	-- local tbMainDialog = tbsinhnhat:CreateDialog()
	-- tbMainDialog.szTitleMsg = "B�y gi� l� sinh nh�t Ng�c Tu�n b�n mu�n ��i ph�n th��ng g�?"
	-- tbMainDialog:AddOptEntry("L�m B�nh kem", tbsinhnhat.ComposeItem, {tbsinhnhat, "B�nh kem"})
	-- tbMainDialog:AddOptEntry("L�m B�nh sinh nh�t nh�", tbsinhnhat.ComposeItem, {tbsinhnhat, "B�nh sinh nh�t nh�"})
	-- tbMainDialog:AddOptEntry("L�m B�nh sinh nh�t l�n", tbsinhnhat.ComposeItem, {tbsinhnhat, "B�nh sinh nh�t l�n"})
	-- tbMainDialog:Show()
end