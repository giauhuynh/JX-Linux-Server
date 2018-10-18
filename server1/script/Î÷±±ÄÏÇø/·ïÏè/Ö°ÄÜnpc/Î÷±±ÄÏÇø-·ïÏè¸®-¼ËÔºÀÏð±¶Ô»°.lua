--Î÷±±ÄÏÇø ·ïÏè¸® ¼ËÔºµÏð±¶Ô»°

function main(sel)

if ( GetSex() == 0 ) then      -- Ýæ¼ÒÐÔ±ðÎªÄÐ

	i = random(0,2)
	
	if (i == 0) then
	Say("Kü viÖn l·o b¶n: Cã c©u \"MÔ chi ®Ých bµ di, tuy ®øc ®Ých h¸n\", ng­¬i cã nghe qua chø? ",0)
	return
	end

	if (i == 1) then
	Say("Kü viÖn l·o b¶n: ë chç ta kh«ng thiÕu thø ®Ó vui ®ïa, bít chót thêi gian vµo ®©y. SÏ kh«ng uæng c«ng ®Õn ®©y ®©u. Nµo! C«ng tö ®i vµo ®ïa vui mét chót.", 0)
	return
	end

	if (i == 2) then
	Say("Kü viÖn l·o b¶n: L·o gia, ng­êi thÝch c« n­¬ng nµo? ë chç ta toµn lµ quèc s¾c thiªn h­¬ng, ®¶m b¶o sÏ lµm ngµi hµi lßng.", 0)
	return
	end

else						  -- Ýæ¼ÒÐÔ±ðÎªÅ®

	Say("Kü viÖn l·o b¶n: ®©y lµ n¬i vui ch¬i cña c¸nh nam nhi, phËn n÷ ng­¬i còng ®Õn ®©y ­. §óng lµ lo¹i phËn n÷ h­ háng mµ. Ta ®©y kh«ng tiÕp.", 0)

end;



end;
