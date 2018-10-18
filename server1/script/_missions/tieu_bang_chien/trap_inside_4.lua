
function main()
	local a = {
		{1709, 3237},
		{1704, 3234},
		{1705, 3229},
		{1710, 3234},
	}
	local b = random(1, getn(a))

	if ( GetFightState() == 0 ) then	
		SetPos(a[b][1], a[b][2])		
		SetFightState(1)		
	else			       		
		SetPos(1727, 3255)		
		SetFightState(0)		
	end
end
























