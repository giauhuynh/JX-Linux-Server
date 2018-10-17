--Î÷ÄÏ±±Çø ³É¶¼¸® ¢·ÈË2Ğ¤ÆÅÆÅ¶Ô»°
-- update by xiaoyang(2004\4\16) ¶ğ·¼90¼¶ÈÎÎñ

Include("\\script\\global\\repute_head.lua")

function main(sel)
	Uworld125 = GetTask(125)
	Uworld36 = GetByte(GetTask(36),1)
	if ((Uworld125 < 10) and (Uworld36 == 127) and (GetReputeLevel(GetRepute()) >= 5) and (GetLevel() >= 90) and (GetFaction() ~= "emei")) or 
		(GetLevel() >= 90 and GetCamp() == 4 and GetTask(5894) == 0) then
		Talk(8,"Uworld125_task","c¸c h¹ l­u l¹c giang hå , cã c¶m thÊy mÖt kh«ng?","thÕ gian cßn cã rÊt nhiÒu khã kh¨n , mÖt mái còng nªn kiªn tr×","Tèt , cã chİ khİ . ta cã mét nhiÖm vô , ng­¬i d¸m lµm kh«ng ?","nhiÖm vô g× ?","ph¸i Nga Mi s¸ng lËp cã mÊt mét bé thiªn th­ kh«ng cã ch÷, tr­íc ®©y kh«ng l©u , ta nhËn ®­îc tin tøc , thiªn th­ xuÊt hiÖn ë nói Thanh Thµnh phô cËn , nh­ng kh«ng cã ai t×m ®­îc . ng­¬i cã thÓ ®i mét chuyÕn ?","ng­¬i kh«ng sî ta t×m ®­îc råi chiÕm lÊy lu«n sao ?","ha ha ha , thiªn th­ kh«ng cã ch÷ chØ cã ng­êi h÷u duyªn míi cã thÓ xem hiÓu . cho dï t×m ®­îc , kh«ng cã c¸ch nµo më ra còng lµ v« dông !","th× ra lµ nh­ vËy .")
   elseif (Uworld125 == 15) and (HaveItem(388) == 1) then
   	Talk(10,"Uworld125_fire","nh­ thÕ nµo","®Ö tö lÊy ®­îc.","®Ó cho ta xem mét chót , qu¶ nhiªn lµ thiªn th­ kh«ng cã ch÷  ..","tho¹t nh×n ta lµ ng­êi h÷u duyªn ..","ng­¬i cÇm bİ tŞch , giang hå kh«ng hiÓu bao nhiªu ng­êi muèn !","cßn ch­a xong chuyÖn . cïng ng­¬i nãi , ta lµ Nga Mi ®Ö tö , Èn c­ ë thµnh ®« . ch­ëng m«n cã bİ lµm ®ãng tin nhiÖm vô cho ng­¬i , nhanh ®i lµm ®i !","bµ bµ ®©y ?","ta ®em gióp ng­¬i ng¨n c¶n ®¹o tÆc muèn trém bİ tŞch  !","tu©n lÖnh !")
   elseif (Uworld125 == 30) and (HaveItem(389) == 1) then
   	Talk(6,"Uworld125_change","ng­¬i rèt côc vÉn ph¶i ®Õn","thÕ nµo?","míi võa nhËn ®­îc chim bå c©u ®­a tin cña ch­ëng m«n , ®Ó cho ng­¬i nhanh trë vÒ Nga Mi ?","trong th¬ kh«ng cã nãi râ rµng , nh­ng dùa theo lêi ch­ëng m«n, chuyÖn nµy rÊt gÊp","ta lËp tøc ®i ngay")
   elseif (Uworld125 == 10) then
   	Talk(2,"","nh­ thÕ nµo ? kh«ng t×m ®­îc thiªn th­ µ ?","kh«ng nªn tøc giËn , ta nhÊt ®Şnh sÏ t×m ®­îc !")
   elseif (Uworld125 == 20) and (HaveItem(388) == 0) then
   	Talk(1,"","thiªn th­ muèn giao cho ch­ëng m«n thanh hiÓu s­ th¸i")
		AddEventItem(388)
		Msg2Player("®o¹t ®­îc thiªn th­ kh«ng cã ch÷")
   elseif (Uworld125 == 30) then
   	Talk(1,"","ng­¬i kh«ng cã Nga Mi lÖnh tiÔn , chøng minh nh­ thÕ nµo ng­¬i ®· giao cho ch­ëng m«n?")
   elseif (Uworld125 >= 50) then
   	Talk (1,"","tiÓu huynh ®Ö , giang hå hiÓm ¸c , cÇn b¶o träng .. ")
   else
		Talk(1,"","TiÕu bµ bµ : TiÓu Hçn Hçn lµ mét tªn h¸o s¾c , kh«ng ph¶i lµ ¨n trém gµ trém chã , chİnh lµ khi dÔ n÷ nhi , huyªn n¸o mäi ng­êi gµ chã kh«ng yªn. ")
	end
end

function Uworld125_task()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- °×·ûÎ´Ñ§Ò°ÇòÈ­µÄ£¬²»ÔÊĞí½ÓÈÎÎñ
		Talk(1,"","xem ng­¬i gÇy yÕu nh­ vËy , chŞu ®­îc sao ? ta ch¼ng qua lµ nãi giìn , ng­¬i h·y ®i luyÖn c«ng , sau ®ã sÏ nãi . ")
	else
		Say("xong chuyÖn , ta sÏ träng ¬n ng­¬i.",2,"®Ö tö sÏ ®i Thanh Thµnh mét chuyÕn .. /Uworld125_yes","ta cßn cã nh÷ng chuyÖn kh¸c , sî r»ng kh«ng thÓ gióp ng­¬i. /Uworld125_no")
	end
end

function Uworld125_yes()
	SetTask(125,10)
	SetTask(5894,1)
	Msg2Player("°´theo nh­ TiÕu bµ bµ nãi , ®i tiÖm thµnh t×m mé phÇn ")
	AddNote("°´theo nh­ TiÕu bµ bµ nãi , ®i tiÖm thµnh t×m mé phÇn ")
end

function Uworld125_no()
end

function Uworld125_fire()
	SetTask(125,20)
	Earn(10000)
	Msg2Player("theo nh­ TiÕu bµ bµ nãi , ®i Thanh Thµnh t×m bİ kİp ")
	AddNote("°theo nh­ TiÕu bµ bµ nãi , ®i Thanh Thµnh t×m bİ kİp ")
end

function Uworld125_change()
	SetTask(125,40)
	DelItem(389)
	Msg2Player("TiÕu bµ bµ cho ng­¬i 1 v¹n l­îng , ®ång thêi ®Ó cho ng­¬i mang thiªn th­ ®­a cho Nga Mi .")
	AddNote("TiÕu bµ bµ cho ng­¬i 1 v¹n l­îng , ®ång thêi ®Ó cho ng­¬i mang thiªn th­ ®­a cho Nga Mi .")
end
