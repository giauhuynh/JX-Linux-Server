
function main()
	local a = {
		{1619, 3210},
		{1629, 3206},
		{1626, 3195},
		{1632, 3197},
	}
	local b = random(1, getn(a))

	if ( GetFightState() == 0 ) then	
		SetPos(a[b][1], a[b][2])		
		SetFightState(1)		
	else			       		
		SetPos(1608, 3223)		
		SetFightState(0)		
	end
end
























