--江南区 龙泉村to罗霄山
--Trap ID：江南区 5

function main(sel)
	if (GetLevel() >= 5) then						--等级达到十级
		SetFightState(1);
		NewWorld(179, 1618, 3292);
		AddTermini(153);
	else
		Talk(1,"","Ph輆 trc r蕋 nguy hi觤, h穣 v� luy謓 t藀 th猰 甶!")
	end
end;
