IncludeLib("SETTING"); --ÔØÈëSETTING½Å±¾Ö¸Áî¿â


function main()
	if GetSkillState(440) == 1 then 
		Say("C¸c h¹ vÉn cßn hç trî tõ hiÖu øng Tiªn th¶o lé, kh«ngthÓ dïng nhiÒu lÇn còng lóc!", 0, "Ta biÕt råi!/OnCancel")
		return 1
	else
		AddSkillState(440, 1, 1, 64800, 1);
		return 0
	end
end

function OnCancel() return end