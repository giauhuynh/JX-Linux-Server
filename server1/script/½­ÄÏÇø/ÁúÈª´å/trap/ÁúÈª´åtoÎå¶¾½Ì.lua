--江南区 龙泉村to五毒教
--Trap ID：江南区 108

function main(sel)
	if (GetLevel() >= 5) then						--等级达到十级
		SetFightState(1);
		NewWorld(183, 1371, 3677);
	else
		Talk(1,"","Ph輆 trc v� c飊g nguy hi觤, h穣 v� luy謓 t藀 th猰!")
	end
end;
