Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function Fuc_Main_TY_LeThuThuy()
	if GetTask(5905) == 25 then
		CreateNewSayEx("<npc>- Ng­¬i lµ ai? §Õn Thóy Yªn m«n víi môc ®İch g×? <enter>"
		.."- Ta lµ ng­êi trong héi, Nam B¨ng b¶o ta ®Õn t×m c«. <enter>- Hõ! Ta ®· nãi víi hä, kh«ng nªn t×m nh÷ng kÎ v« dông. <enter>"
		.."- Ta vèn còng ch¼ng thİch ®ång hµnh víi c«! <enter>- A! Kh«ng ngê ng­¬i còng cã tİnh c¸ch. <enter>"
		.."- Ta sÏ cho c« thÊy b¶n lÜnh cña ta! <enter>- Nãi hay l¾m! KhÈu khİ còng kh«ng tÖ. KiÕm m«n cã Tõ Tù Lùc ®ang gi÷ 1 b¶o vËt. §Õn ®ã lÊy nã vÒ cho ta. <enter>"
		.."- Lµ c¸i g×? <enter>- 1 bé ¸o gi¸p--B¹ch Long Tøc. <enter>"
		.."- ¤ng ta ë ®©u. <enter>- Kinh Hoµng ®éng, lµ 1 tªn t­íng ph¶n quèc.<enter>"
		.."- L¹i thªm 1 tªn t­íng ph¶n quèc.",
			{{"§­îc råi, ®îi tin cña ta!", TY_LeThuThuy_Step_1}}
		)
	elseif GetTask(5905) == 27 then
		CreateNewSayEx("<npc>- B¹ch Long Tøc lµ b¶o khİ trong truyÒn thuyÕt. Hay qu¸! <enter>"
		.."- B¶o Khİ? Ch¼ng lÏ ®©y lµ Thiªn Hoµng Long Khİ. <enter>- Ng­¬i biÕt Thiªn Hoµng Long Khİ? <enter>"
		.."- Ta nghe thî rÌn nh¾c ®Õn. <enter>- Thî rÌn? Kh«ng ngê trªn ®êi nµy ng­êi biÕt chuyÖn nµy còng kh«ng İt. B»ng h÷u, ta ®· xem th­êng ng­¬i. <enter>"
		.."- §Òu v× L©m Uyªn Nhai mµ th«i! VÒ Long Khİ, c« biÕt ®­îc bao nhiªu? <enter> Thiªn Hoµng Long Khİ víi bİ mËt cña tæ chøc cã liªn quan, ta chØ cã thÓ nãi víi ng­¬i bÊy nhiªu. ViÖc cña ng­¬i ®· xong, giê h·y quay vÒ gÆp Phã Nam B¨ng.",
			{{"§­îc råi!", TY_LeThuThuy_Step_2}}
		)
	else
		return Talk(1, "","Ta kh«ng cã g× ®Ó nãi!")
	end
end

function TY_LeThuThuy_Step_1()
	bilNvTanThu:NextTask()
end

function TY_LeThuThuy_Step_2()
	bilNvTanThu:NextTask()
end