--description: ÖĞÔ­±±Çø ãê¾©¸® Ìú½³1¶Ô»° ÌìÈÌ½Ì³öÊ¦ÈÎÎñ
--author: yuanlan	
--date: 2003/5/19
-- Update: Dan_Deng(2003-08-14)
Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc> Tr­íc kia ta ®©y thî rÌn cöa hµng ®İch lµm ¨n nh­ng hång háa liÔu, bao nhiªu danh sÜ hiÖp kh¸ch còng ®Õn ta ®©y mµ ®Şnh chÕ binh khİ, hiÖn nay kh«ng nãi còng ®­îc! Cã muèn nh×n mét chót hay kh«ng ta ®©y mµ ®İch binh khİ ?"


function main(sel)
	UTask_tr = GetTask(4)
	if (UTask_tr == 60*256+20) then
		UTask_trsub60 = GetByte(GetTask(28),1)
		if (UTask_trsub60 == 0) then
			tiejiang_city("<dec><npc>Ta n¨m nay ba m­¬i råi, kh«ng cã c­íi vî, ai, t¹i sao kh«ng cã ai thİch ta ®©y ? Kh«ng nãi g¹t ng­¬i, thËt ra th× ta thËt thİch thµnh ®«ng Tr­¬ng Qu¶ Phô, nh­ng lµ ta mét mùc kh«ng d¸m h­íng nµng thó téi, ta sî nµng ghĞt ta.", "Ta thay ng­¬i hái mét chót t©m ı cña nµng!/L60_sub_yes")
		elseif (UTask_trsub60 == 1) then
			if (HaveItem(63) == 1) then
				tiejiang_city("<dec><npc>Qu¸ lµm phiÒn ng­¬i , ng©n tr©m thay ta ®­a cho nµng ®­îc kh«ng?")
			else
				AddEventItem(63)
				Talk(1,"","Ng­¬i cßn kh«ng cã cÇm ng©n tr©m liÒn ®i , ng­¬i thËt muèn gióp ta sao?")
			end
		elseif (UTask_trsub60 == 2) and (HaveItem(64) == 1) then
			Talk(2, "", "ThËt ra th× Tr­¬ng Qu¶ Phô ®èi víi ng­¬i còng cã h¶o c¶m, ®©y lµ nµng trë vÒ ®­a cho ng­¬i h­¬ng nang !", "ThËt c¸m ¬n ng­¬i, nÕu nh­ kh«ng cã ng­¬i, chóng ta kh«ng biÕt ph¶i ®îi bao l©u míi cã thÓ hiÓu t©m ı cña ®èi ph­¬ng. Ta cã mét thanh ®o¹n kiÕm, mÆc dï kh«ng ®¸ng gi¸ bao nhiªu tiÒn, nh­ng lµ nhµ chóng ta tæ truyÒn ®İch, sÏ ®­a cho ng­¬i lµm t¹ lÔ.")
			DelItem(64)
			AddEventItem(127)
			SetTask(28, SetByte(GetTask(28),1,10))
			AddNote("§ãng h­¬ng nang cho khóc thî rÌn, lÊy ®­îc ®o¹n kiÕm 'YÓu NhËt'.")
			Msg2Player("µÃµ½¶Ï½£¡°ÑÚÈÕ'.")
		else
			if (HaveItem(127) == 1) then
				tiejiang_city("<dec><npc>§a t¹ ng­¬i t¸i hîp ta cïng Tr­¬ng Qu¶ Phô nh©n duyªn, cã muèn nh×n mét chót hay kh«ng ta ®©y mµ ®İch binh khİ ")
			else
				AddEventItem(127)
				Talk(1,"","MÆc dï ng­¬i thi ©n kh«ng cÇu håi b¸o, nh­ng lµ, ng­¬i gióp ta ®¹i mang, thanh kiÕm nÇy v« luËn nh­ thÕ nµo ng­¬i muèn thu h¹.")
			end
		end
	elseif (UTask_tr > 60*256+20) then
		tiejiang_city("<dec><npc>§a t¹ ng­¬i t¸i hîp ta cïng Tr­¬ng Qu¶ Phô nh©n duyªn, cã muèn nh×n mét chót hay kh«ng ta ®©y mµ ®İch binh khİ ")
	else
		tiejiang_city()
	end
end;

function L60_sub_yes()
	Talk(1,"","VËy qu¸ lµm phiÒn ng­¬i, c¸i nµy c©y ng©n tr©m lµ ta tù tay ®¸nh chÕ ®İch, ng­¬i gióp ta ®­a cho nµng, nÕu nh­ nµng tiÕp nhËn, liÒn tá râ trong lßng cña nµng còng cã ta.")
	AddEventItem(63)
	SetTask(28, SetByte(GetTask(28),1,1))
	AddNote("Cïng Khóc ThiÕt T­îng  ®èi tho¹i, gióp h¾n cÇm ng©n tr©m cho Tr­¬ng Qu¶ Phô ")
	Msg2Player("§¹t ®­îc mét Ng©n Tr©m.")
end;

function yes()
Sale(7);  			--µ¯³ö½»Ò×¿ò
end;

