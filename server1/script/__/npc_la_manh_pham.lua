Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function bilFunc_Main_LA_ManhPham()
	if GetTask(5905) == 14 then
		bilNvTanThu:NextTask()
		CreateNewSayEx("<npc>Ng­êi lµ M¹nh Phµm ®¹i thóc ph¶i kh«ng?<enter> - VŞ ®©y lµ...? <enter>"
				.." - Ng­êi cña TÇm Long Héi. <enter> TÇm Long Héi lµ c¸i g×?<enter>"
				.." - Cã thÓ M¹nh Phµm kh«ng biÕt TÇm Long Héi?!"
				.." - µ, ta ®ïa chót th«i. ¤ng ch¾c biÕt M¹c SÇu?......<enter> Khoan ®·! TÇm Long Héi lµ c¸i g×, M¹c SÇu lµ ai? C¸c h¹ cã ph¶i ®· nhËn lÇm ng­êi råi. <enter>"
				.." - M¹nh §¹i thóc, «ng kh«ng tin ta µ? <enter>M¹nh Phµm: Ta thËt sù kh«ng biÕt ng­¬i ®ang nãi c¸i g×. <enter>"
				.." -M¹c SÇu mét ®¸m H¾c Y nh©n b¾t ®i, Thiªn Hoµng Long Khİ mÊt tİch! NÕu «ng kh«ng tin, cã thÓ dïng bå c©u truyÒn tin t×m X¶o Nhi c« n­¬ng ®èi chøng!<enter> M¹c SÇu bŞ b¾t cãc? X¶y ra lóc nµo vËy.<enter>"
				.." - Míi ®©y th«i! <enter> ChuyÖn nµy x¶y ra qu¸ ®ét ngét, ng­¬i h·y ®Õn H­ëng Thñy ®éng ®¸nh b¹i O¸n §éc, nÕu ®em ®­îc thñ cÊp h¾n vÒ ta míi tin. <enter>",
				{{"T¹i h¹ biÕt råi", bil.OnCancel}})
	elseif GetTask(5905) == 16 then
		bilNvTanThu:NextTask()
		CreateNewSayEx("<npc>M¹nh ®¹i thóc, thñ cÊp ë ®©y, «ng tin ch­a, mäi viÖc kh«ng nªn chËm trÔ.<enter>"
				.." - B¹n trÎ! Ta ®· hiÓu lÇm. Ta ®· ph¸i thuéc h¹ ®i ®iÒu tra. Ta tin chuyÖn nµy cã liªn quan ®Õn chñ nh©n TÇm Long Héi. <enter>"
				.." - Chñ nh©n? Chñ nh©n lµ ai? <enter> ViÖc nµy, thø lçi ta kh«ng thÓ nãi......Ta chØ cã thÓ cho ng­¬i biÕt, h¾n lµ ng­êi mµ trªn giang hå t­ëng r»ng ®· chÕt. <enter>"
				.." - §· sím chÕt råi?<enter>M¹nh Phµm: Mäi viÖc ng­¬i ®iÒu tra râ råi b¸o cho ta biÕt,chuyÖn nµy kh«ng nªn chËm trÔ. <enter>"
				.." - Cã chuyÖn g× lËp tøc b¸o ta biÕt.<enter> NhÊt ®Şnh. X¶o Nhi ë ®ã, ng­¬i kh«ng cÇn quay vÒ, ta ®· s¾p xÕp æn tháa. <enter>",
					{{"T¹i h¹ biÕt råi", bil.OnCancel}})
	else
		CreateNewSayEx("<npc>Ai còng nãi ta rÊt giái, thËt ra còng ch¼ng cã g×. Duy cã ®iÒu lµm ta hµi lßng lµ ­íc m¬ lóc trÎ ®· thµnh hiÖn thùc.", {{"KÕt thóc ®èi tho¹i", bil.OnCancel}})
	end
end