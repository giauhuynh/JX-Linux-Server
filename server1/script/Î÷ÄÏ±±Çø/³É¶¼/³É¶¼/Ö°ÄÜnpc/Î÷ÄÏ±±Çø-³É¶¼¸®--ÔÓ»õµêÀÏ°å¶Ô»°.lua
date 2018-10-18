--Î÷ÄÏ±±Çø ³É¶¼¸® ÔÓ»õµêµÏ°å¶Ô»° 
--author: yuanlan	
--date: 2003/5/23
-- Update: Dan_Deng(2003-08-12)
Include("\\script\\global\\global_zahuodian.lua");

function main(sel)
	UTask_em = GetTask(1);
	UTask_tm = GetTask(2);
	if (UTask_em == 30*256+50) then 		--¶ëáÒÅÉÄ¢ÔÆ´È30¼¶ÈÎÎñ
Say("Chñ tiÖm t¹p hãa : ta chç nµy b¸n lµ c¸c lo¹i nam b¾c t¹p hãa , mêi xem vµ chän thø m×nh cÇn ?", 3, "Cã b¸n ®ïi gµ kh«ng ?/chicken", "Giao dŞch/yes", "Kh«ng giao dŞch/no")
	elseif ((UTask_em == 40*256+50) and (GetByte(GetTask(29),1) == 1)) then		--¶ëáÒÅÉ40¼¶ÈÎÎñ
		Say("C¸c lo¹i tr©m cµi míi nhÊt chØ cã 200 l­¬ng, mua 1 c¸i ®i", 3, "Mua ng©n tr©m/hairpin", "Mua nh÷ng vËt kh¸c/yes", "Kh«ng giao dŞch/no")
	elseif (UTask_tm == 10*256+40) then		--ÌÆ·ÅÌÆº×10¼¶ÈÎÎñ
		Say("NhÉn m· n·o rÊt ®Ñp , 500 l­îng , kh«ng mua sÏ hèi hËn !", 3, "Mua nhÉn m· n·o. /ring", "Giao dŞch/yes", "Kh«ng giao dŞch/no")
	else
		local Buttons = store_sel_extend();
		Say("Chñ tiÖm t¹p hãa : ta chç nµy b¸n lµ c¸c lo¹i nam b¾c t¹p hãa , mêi xem vµ chän thø m×nh cÇn ?", getn(Buttons), Buttons);
	end
end;

function chicken()
	if (GetCash() >= 50) then
		Pay(50)
		AddEventItem(119)
		Msg2Player("Mua ®­îc ®ïi gµ")
		AddNote("ë tiÖm t¹p hãa thµnh d« mua ®­îc ®ïi gµ ")
	else
		Say("Khi nµo ®ñ tiÒn h·y trë l¹i hoÆc xem vËt kh¸c ®i", 2, "Giao dŞch/yes", "Kh«ng giao dŞch/no")		
	end
end;

function hairpin()
	if (GetCash() >= 200) then
		Pay(200)
		AddEventItem(63)
		Msg2Player("Mua ®­îc ng©n tr©m")
--		SetTask(29, 4)
		AddNote("ë tiÖm t¹p hãa thµnh ®« mua ®­îc ng©n tr©m ")
	else
		Say("Khi nµo ®ñ tiÒn h·y trë l¹i hoÆc xem vËt kh¸c ®i", 2, "Giao dŞch/yes", "Kh«ng giao dŞch/no")		
	end
end;


function ring()
	if (GetCash() >= 500) then
		Pay(500)
		AddEventItem(165)
		Msg2Player("Mua ®­îc nhÉn m· n·o ")
		AddNote("ë tiÖm t¹p hãa thµnh d« mua ®­îc nhÉn m· n·o")
	else
		Say("Khi nµo ®ñ tiÒn h·y trë l¹i hoÆc xem vËt kh¸c ®i", 2, "Giao dŞch/yes", "Kh«ng giao dŞch/no")		
	end
end;

function yes()
Sale(14);  		--µ¯³ö½»Ò×¿ò
end;

function BuyChristmasCard()
	Sale(97);
end

function no()
end;
