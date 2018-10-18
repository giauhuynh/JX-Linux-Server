function main()
	Say("Ng­¬i muèn vÒ D­¬ng Ch©u? 500 l­îng b¹c!", 2, "Lªn thuyÒn/toyangzhou", "Kh«ng ®i/no");
end

function toyangzhou()
	if( GetCash() >= 500 ) then
		NewWorld( 80,1369,3369 );
		DisabledUseTownP(0)	-- ²»ÏŞÖÆÆäÀë¿ªÎ÷É½Óì·µ»ØÑïÖİºóÊ¹ÓÃ»Ø³Ç·û
		SetFightState(1);
		Pay( 500 );
	else
		Talk( 1,"","Kh«ng ®ñ tiÒn kh«ng thÓ lªn thuyÒn!");
	end
end

function no()
end