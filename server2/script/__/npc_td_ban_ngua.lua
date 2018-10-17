-- b¸n ngùa t­¬ng d­¬ng

Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_horse_upgrade.lua")

function main(sel)
	if bilAllowHorseUpgrade == 0 then
		return Say("Thiªn h¹ ng­êi c­ìi ngùa th× nhiÒu, mµ ng­êi biÕt <enter>c¸ch ch¨m sãc ngùa hái cã mÊy ai?, vŞ thiÕu hiÖp cã  muèn mua ngùa cña ta kh«ng?", 2, 
		"Giao dŞch/yes", 
		"th«i/no");
	else
		return Say("Thiªn h¹ ng­êi c­ìi ngùa th× nhiÒu, mµ ng­êi biÕt <enter>c¸ch ch¨m sãc ngùa hái cã mÊy ai?, vŞ thiÕu hiÖp cã  muèn mua ngùa cña ta kh«ng?", 3, 
		"Giao dŞch/yes", 
		"VÒ viÖc ThuÇn hãa, n©ng cÊp chiÕn m·/bilHorseUpgradeMain",
		"th«i/no");
	end
end;


function yes()
	Sale(46);
end;


function no()
end;
