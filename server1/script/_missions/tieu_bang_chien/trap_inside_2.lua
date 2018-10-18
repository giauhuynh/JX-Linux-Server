
function main()
	local a = {
		{1582, 2992},
		{1589, 2993},
		{1584, 2999},
		{1589, 2999},
	}
	local b = random(1, getn(a))

	if ( GetFightState() == 0 ) then	
		SetPos(a[b][1], a[b][2])		
		SetFightState(1)		
	else			       		
		SetPos(1568, 2974)		
		SetFightState(0)		
	end
end
























