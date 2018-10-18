--Î÷ÄÏ±±Çø ³É¶¼¸® ĞÅÏµË¢´Èº£´óÊ¦¶Ô»°
--author: yuanlan	
--date: 2003/3/6
-- Update: Dan_Deng(2003-08-12)

function main(sel)
	UTask_em = GetTask(1);
	if (UTask_em <10) then				--·»ÓĞ¼ÓÈë¶ëáÒÅÉ
Talk(4, "", "Tõ v©n ph¸p s­: Thİ chñ, xem ra ng­êi muèn luyÖn tËp vâ nghÖ, h·y ®i tíi Thµnh §«,Nga My ph¸i,hoÆc thôc nam Tróc H¶i", "VŞ thİ chñ ®©y thËt cã c¬ duyªn,nÕu kh«ng ng¹i th× nghe l·o n¹p nãi mÊy c©u", "Nga mi ph¸i thanh hiÓu s­ th¸i cïng c¸c trô tr× lµ tu ®¹o bªn trong chïa , nµng lµm ng­êi tõ bi , sÏ kh«ng lµm khã ng­¬i . Nh­ng mÊy vŞ tôc gia ®Ö tö vâ c«ng cao c­êng ,nÕu ng­¬i muèn lªn Nga Mi , nhÊt ®Şnh ph¶i th«ng qua c¸c kh¶o nghiÖm cña nµng míi ®­îc .", "vÒ phÇn thôc nam tróc h¶i chİnh lµ §­êng m«n , l·o n¹p khuyªn ng­¬i h·y chí véi liÒu lÜnh . §Ö tö §­êng m«n trong lµm viÖc quû bİ , §­êng m«n bèn phİa c¬ quan nÆng nÒ , nÕu muèn x«ng qua tróc h¶i , sî r»ng d÷ nhiÒu lµnh İt")
	elseif (UTask_em == 40*256+50) then 		--¶ëáÒÅÉ40¼¶ÈÎÎñ
		UTask_emsub02 = GetByte(GetTask(29),2)
		if (UTask_emsub02 == 0) then 
			Say("A di ®µ phËt ! ph¸i Nga Mi ®İch thŞ n÷ hiÖp , quı ph¸i ch­ëng m«n thanh hiÓu s­ th¸i phËt lı th«ng suèt , m«n h¹ ®Ö tö phËt häc thµnh tùu cao siªu , l·o t¨ng kh«ng biÕt tù l­îng søc m×nh , chØ muèn më réng phËt ph¸p", 2, "xin mêi ®¹i s­ chØ ®iÓm/L40_V2_Q1", "V·n bèi cßn cã chuyÖn kh¸c /no")
		elseif (UTask_emsub02 == 3) then
			L40_V2_Q1()
		elseif (UTask_emsub02 == 5) then
			L40_V2_Q2()
		elseif (UTask_emsub02 == 7) then
			L40_V2_Q3()
		else
			if (HaveItem(167) == 0) then
				AddEventItem(167)
				Talk(1,"","n÷ hiÖp qu¶ nhiªn kh«ng hæ lµ Nga Mi ®Ö tö , n¬i nµy cã c¶ hé th©n phï , xin mêi nhËn lÊy!")
			else
				Talk(1,"","Nga Mi n÷ hiÖp ®İch  thŞ phËt häc  cïng vâ häc thµnh tùu thËt kh«ng tÇm th­êng , l·o t¨ng béi phôc!")
			end
		end
	elseif ((UTask_em == 50*256+50) and (HaveItem(23) == 1)) then		--¶ëáÒÅÉ50¼¶ÈÎÎñ
		Talk(5, "","tõ v©n ph¸p s­ : A di ®µ phËt ! n÷ hiÖp cã chuyÖn g× kh«ng ?","t¹i h¹ phông s­ t«n chi mÖnh , cã lÔ vËt tÆng quı tù , lµm phiÒn ®¹i s­ hái quı tù tõ h¶i ph­¬ng tr­îng th«ng b¸o mét tiÕng .","®a t¹ t«n s­ ı tèt ,bÇn t¨ng còng kh«ng biÕt ph­¬ng tr­îng b©y giê n¬i nµo , ®ang lo l¾ng an nguy cña ng­êi.","kh«ng biÕt ®· x¶y ra chuyÖn g× ?","nãi ®Õn thËt kú qu¸i , ph­¬ng tr­îng s¸ng nay nhËn mét phong th­ sau ®ã ®i ngay ra hËu viÖn , cho tíi b©y giê còng kh«ng cã ®i ra , còng kh«ng biÕt x¶y ra chuyÖn g×.")
		SetTask(1, 50*256+60)
		AddNote("Cïng tõ v©n ph¸p s­ nãi chuyÖn sau Tõ h¶i ®¹i s­ ®i hËu viÖn . ")
		Msg2Player("Cïng tõ v©n ph¸p s­ nãi chuyÖn sau Tõ h¶i ®¹i s­ ®i hËu viÖn")
	elseif (UTask_em == 50*256+60) then
		Talk(1,"","nãi ®Õn thËt kú qu¸i , ph­¬ng tr­îng s¸ng nay nhËn mét phong th­ sau ®ã ®i ngay ra hËu viÖn , cho tíi b©y giê còng kh«ng cã ®i ra , còng kh«ng biÕt x¶y ra chuyÖn g×.")
	elseif (UTask_em >= 50*256+80) and (GetFaction() == "emei") then
		Talk(1,"","®a t¹ n÷ hiÖp cøu ph­¬ng tr­îng , Nga Mi n÷ hiÖp qu¶ nhiªn danh bÊt h­ truyÒn.")
	elseif (UTask_em == 70*256) then
		Talk(1,"","n÷ hiÖp ngµy sau hµnh tÈu giang hå , cã g× cÇn vèn tù gióp mét tay chØ cÇn më lêi , vèn tù nhÊt ®Şnh khuynh lùc t­¬ng trî.")
	else
		Say("tõ v©n ph¸p s­ : t«n s­ cã kháe kh«ng ?")	--¼ÓÈë¶ëáÒÅÉºóµÄ·ÇÈÎÎñ¶Ô»°
	end
end;

function no()
	Talk(1,"","l·o t¨ng còng kh«ng quÊy rÇy n÷ hiÖp nghØ ng¬i")
end;

function L40_V2_Q1()
	Say("PhËt gi¸o lµ ë thêi gian nµo truyÒn vµo trung thæ  ?", 4, "ChiÕn quèc/ /f1", "Nhµ H¸n /L40_V2_Q2", "Nhµ §­êng /f1", "Nhµ Minh /f1")
end;

function f1()
	Say("A di ®µ phËt ! xem ra n÷ hiÖp ®èi víi phËt häc hiÓu râ cßn ch­a ®ñ s©u ")
	SetTask(29, SetByte(GetTask(29),2,3))
end;

function L40_V2_Q2()
	Say("rÊt tèt . n÷ hiÖp biÕt vŞ cao t¨ng §­êng triÒu ®Õn Thiªn Tróc thØnh kinh lµ ai ?", 4, "BiÖn kş/f2", "Gi¸m thÊt/f2", "NhÊt §¹i/f2", "§­êng T¨ng/L40_V2_Q3")
end;

function f2()
	Say("Cã ph¶i n÷ hiÖp ®· nhí nhÇm hay kh«ng", 0)
	SetTask(29, SetByte(GetTask(29),2,5))
end;

function L40_V2_Q3()
	Say("kh«ng tÖ , quı ph¸i vŞ trİ Nga Mi s¬n lµ mét trong thiªn h¹ tø ®¹i phËt s¬n, n÷ hiÖp cã biÕt c¸i nµo kh«ng thuéc vÒ tø ®¹i phËt s¬n ?", 4, "Phæ ®µ s¬n/f3", "Cöu Hoa S¬n/f3", "tung s¬n/L40_V2_prise", "Ngò ®µi s¬n/f3")
end;

function f3()
	Say("ch¼ng lÏ t«n s­ ch­a nãi víi c¸c ng­¬i sao ?", 0)
	SetTask(29, SetByte(GetTask(29),2,7))
end;

function L40_V2_prise()
	Talk(1,"","Nga Mi ®Ö tö ®İch phËt häc cïng vâ häc thµnh tùu kh«ng tÇm th­êng , l·o t¨ng béi phôc , xin tÆng ­ng t×nh hé th©n phï ®­a cho n÷ hiÖp , ®Ó bµy tá t©m ı")
	AddEventItem(167)
	SetTask(29, SetByte(GetTask(29),2,10))
	AddNote("NhËn ®­îc ­ng t×nh hé th©n phï . ")
	Msg2Player("b¾t ®­îc ­ng t×nh hé th©n phï . ")
end;
