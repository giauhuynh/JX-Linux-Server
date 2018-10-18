Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function bilFunc_DC_HaVoThu()
	local name = GetName()  
	if ( GetTask(5905) == 11 ) then
		bilNvTanThu:NextTask()
		CreateNewSayEx("<npc>"..name.."<#>: Ng­êi lµ H¹ V« Th­?<enter>"
				.." - Chİnh ta.<enter>"
				.." - Ta lµ ng­êi cña TÇm Long Héi. <enter> T¹i sao ta ch­a thÊy qua ng­¬i. <enter>"
				.." - Kh«ng cÇn thÊy ta, chØ cÇn biÕt nã lµ ®­îc. <enter>lÖnh bµi ®· mÊt<enter> Ng­¬i lµ ng­êi cña M¹c SÇu? <enter>"
				.." - T¹i sao ta ®Õn H¹ tiªn sinh ch¾c ®· râ. <enter>Ta biÕt. D­¬ng Ch©u mäi thø b×nh th­êng! Mêi ngåi! Ta ®· chuÈn bŞ thøc ¨n. <enter>"
				.." - H¹ tiªn sinh ®õng quanh co n÷a, «ng biÕt Thiªn Hoµng Long Khİ chø?<enter> §­¬ng nhiªn kh«ng biÕt.<enter>"
				.." - XuÊt hiÖn ë D­¬ng Ch©u «ng t¹i sao l¹i kh«ng biÕt chø? <enter>  VËy µ, ta ch­a nghe qua tin nµy. <enter>"
				.." - H¹ tiªn sinh kh«ng cÇn che giÊu, ta ®· sím biÕt 'Cöu HiÖn Chi ChØ' trªn tay «ng! Giao ra ®©y ®i. <enter> SÇu c« n­¬ng ®· biÕt viÖc nµy råi. <enter>"
				.." - H¹ tiªn sinh, ta cho «ng mét con ®­êng sèng. NÕu b©y giê giao ra th× cßn kŞp ®Êy. <enter> NÕu ta kh«ng nãi th× sao? <enter>H¹ V« Th¶ bŞ b¹n ®¸nh gôc.<enter>"
				.." - Nãi ®i.<enter> Th«i råi! Lµ H¹ mç bÊt nghÜa tr­íc, ng­¬i lªn tÇng 3 §iÓm Th­¬ng S¬n ®i, ta ®· ®­a cho huynh ®Ö ta Tö §ao HiÖp gi÷ råi. <enter>"
				.." - H¹ tiªn sinh, h«m nay ng­êi chøc cao quyÒn träng, ta kh«ng biÕt t¹i sao ng­¬i thÊy lîi quªn nghÜa. <enter> Ha ha ha ha! Ng­¬i qu¸ xem th­êng H¹ mç råi. <enter>",
				{{"KÕt thóc ®èi tho¹i", bil.OnCancel}})
	else
		CreateNewSayEx("<npc>ChuyÖn mµ c¶ ®êi ng­êi muèn lµm chØ cã vµi chuyÖn lµm ®­îc, lµm kh«ng thµnh cã mét sè ng­êi tù nguyÖn bá ®i, ta th× kh«ng!", {{"KÕt thóc ®èi tho¹i", bil.OnCancel}})
	end
end