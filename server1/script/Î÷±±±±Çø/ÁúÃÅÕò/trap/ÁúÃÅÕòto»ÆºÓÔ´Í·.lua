--西北北区 龙门镇to黄河源头
--TrapID：西北北区 1

function main(sel)
	if (GetLevel() >= 5) then						--等级达到十级
		SetFightState(1);
		NewWorld(122, 1612, 3328);
		AddTermini(182);
	else
		Talk(1,"","Ph輆 trc nguy hi觤, h穣 quay v� luy謓 t藀 th猰!")
	end
end;