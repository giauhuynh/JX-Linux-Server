
function main()
	local a = {
		{1888, 2904},
		{1888, 1912},
		{1881, 2908},
		{1881, 2913},
	}
	local b = random(1, getn(a))

	if ( GetFightState() == 0 ) then	
		SetPos(a[b][1], a[b][2])		
		SetFightState(1)		
	else			       		
		SetPos(1904, 2882)		
		SetFightState(0)		
	end
end
























