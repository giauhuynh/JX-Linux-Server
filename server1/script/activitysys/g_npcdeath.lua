Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_droprate.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_droprate_item_magic.lua")

Include("\\script\\_event\\monster.lua")

function OnGlobalNpcDeath(nNpcIndex, nAttackerIndex)
	if PlayerIndex and PlayerIndex > 0 then
		_EVENT:Monster(nNpcIndex, PlayerIndex)
	end
	
	
	local im_x, im_y, im_w = GetNpcPos(nNpcIndex)
	
------------------------------------------------- SUPPORT SEASONNPC ------------------------------------------------
	if (bilSupportForMenberDoingMissionOfSeasonNPC and bilSupportForMenberDoingMissionOfSeasonNPC == 1 and PlayerIndex and PlayerIndex > 0) then
		if GetTask(1021) == 4 and GetTask(1031) == SubWorldIdx2ID(im_w) and random(1,100) <= 10 then
			DropItemEx( im_w, im_x, im_y, 
				(PlayerIndex or -1), 
				4, random(),
				0, 6, 1, 206, 
				1, 0, 0, 
				0,0,0,0,0,0
			)
		end
	end
------------------------------------------------- SUPPORT SEASONNPC ------------------------------------------------
	
------------------------------------------------------- DROP MAGIC -------------------------------------------------------
	if bilAllowDropMagicItemManual and bilAllowDropMagicItemManual.isOpen == 1 and PlayerIndex and PlayerIndex > 0 then
		local im_mLvl = GetMapDropRateFile(im_w)
		
		if im_mLvl ~= "\\settings\\droprate\\npcdroprate80.ini" and im_mLvl ~= "\\settings\\droprate\\npcdroprate90.ini" and im_mLvl ~= "\\settings\\droprate\\npcdroprate90_pld.ini" then
			return
		end
	
		local im_nT = GetNpcPowerType(nNpcIndex)
		
		if im_nT ~= 1 and im_nT ~= 2 then return end
		
		local im_aD = ((im_nT == 1) and ((random(1000) <= 5) and 1 or nil) or ((im_nT == 2) and ((random(100) <= 10) and 1 or nil)))
		
		if not(im_aD) then return end
		
		local im_D = random(0,9)
		
		im_D = ((im_D == 0 or im_D == 1) and ((random(100) <= 5) and im_D or random(5,9)) or ((im_D == 3 or im_D == 4 or im_D == 9) and ((random(100) <= 8) and im_D or random(5,8)) or im_D))
		
		local im_MagicLevel = ((im_D == 0 or im_D == 1 or im_D == 3 or im_D == 4 or im_D == 9) and 3 or 8)
		local im_P = random(_bilTbDropNormalItem[(im_D + 1)][1][1], _bilTbDropNormalItem[(im_D + 1)][1][2])
		
		local im_Index = DropItemEx(
			im_w, im_x, im_y, 
			(PlayerIndex or -1), 
			bilAllowDropMagicItemManual.version, 
			random(), 
			0, 
			0, im_D, im_P, 
			random(7,10), random(0,4), 
			((im_D == 0 or im_D == 1) and random(30) or ((im_D == 3 or im_D == 4 or im_D == 9) and random(50) or random(150))), 
			random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel)
		)
		
		item_DropMagic:WriteLogs({im_Mis = "Train", im_Index = im_Index, im_D = im_D})
	end
------------------------------------------------------- DROP MAGIC -------------------------------------------------------
end




























