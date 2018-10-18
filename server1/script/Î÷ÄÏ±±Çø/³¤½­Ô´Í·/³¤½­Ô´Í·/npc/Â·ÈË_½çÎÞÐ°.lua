-- ³¤½­Ô´Í· Â·ÈË_½çÎŞĞ°.lua¡¡Ø¤°ï90¼¶¼¼ÄÜÈÎÎñ
-- By£ºXiaoYang(2004-04-29)
-- Update£ºdan_deng(2004-05-20)

Include("\\script\\global\\repute_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main()
	if allbrother_0801_CheckIsDialog(2) == 1 then
		allbrother_0801_FindNpcTaskDialog(2)
		return 0;
	end
	
	Uworld128 = GetTask(128)
	Uworld30 = GetByte(GetTask(30),2)
	if ((Uworld128 < 10) and (GetReputeLevel(GetRepute()) >= 5) and (GetLevel() >= 90) and (GetFaction() ~="gaibang") and (Uworld30 ==127)) or
		(GetLevel() >= 90 and GetCamp() == 4 and GetTask(5892) == 0) then
		Talk(8,"Uworld128_get","L¹i cã ng­êi ®Õn µ!!!","Ng­¬i ®Õn n¬i hoang vu nµy ®Ó lµm g×?",
		"Cã ph¶i lµ v× c¸i bang ph¸i?",
		"::§óng vËy, t¹i h¹ ®Õn ®©y lµ v× c¸i bang ph¸i",
		"nh÷ng ng­êi ®Õn nhê ta gióp ®ì ®Òu ph¶i mang theo h¶o töu ®Ó lµm quµ th× ta ®©y cßn suy nghÜ l¹i, cßn ng­¬i....!",
		"::Th× ra vŞ ®¹i huynh ®©y thİch h¶o töu","::§­îc th«i, ®îi tin cña ta ","§­îc, ta sÏ ®îi h¶o töu tõ ng­¬i")
   elseif (Uworld128 == 10) and (HaveItem(76) == 1) then
   	Talk(11,"Uworld128_envelop",
	"::R­îu cña ngµi ë ®©y",
	"::HuÖ tuyÒn töu, kh«ng biÕt ®· võa ı vŞ huynh ®µi ®©y ch­a?",
	"HuÖ tuyÒn töu, ng­¬i nãi thËt chø?",
	"®óng lµ r­îi ngon råi!",
	"thÕ lóc n·y ng­êi nhê ta viÖc g× nhØ?",
	"::Nhê vŞ huynh ®µi vÒ tin tøc cña c¸i bang ph¸i",
	"µ µ!",
	"ë ®©y ta cã 1 bøc mËt th­!",
	"nhê ng­êi ®Õn tæng ®µ c¸i bang vµ giao nã cho La khu«ng sinh, «ng ta sÏ cã manh mèi gióp ®¹i hiÖp!",
	"::c¶m ¬n vŞ huynh ®µi!")
   elseif (Uworld128 == 40) then
   	Talk(7,"Uworld128_kill","§· h¹ gôc ®­îc s¸t thñ råi sao?",
	"§¹i hiÖp thËt tèt bông!","::kh«ng cã g×!",
	"kh«ng biÕt tõ ®©u ®Õn, bän chóng l¹i muèn h¹i ta","còng cã thÓ lµ v× manh mèi vÒ bİ kİp cña c¸i bang!",
	"vÒ cuèn bİ kİp nµy t¹i h¹ ®· giao cho La khu«ng sinh v× an toµn, ®¹i hiÖp h·y ®i gÆp La khu«ng sinh biÕt ®©u «ng Êy l¹i cã quµ cho ®¹i hiÖp!",
	"::§a t¹, t¹i h¹ sÏ ®Õn c¸i bang mét chuyÕn")
   elseif (Uworld128 == 10) then
   	Talk(1,"","R­îu cña ta ®©u!")
   elseif (Uworld128 == 30) then
   	Talk(2,"","C¸c h¹ ®©y råi","xin h·y h¹ gôc bän s¸t thñ cøu t¹i h¹!")
   elseif (Uworld128 == 20) and (HaveItem(390) == 0) then
   	AddEventItem(390)
   	Msg2Player("6")
   	Talk(1,"","6")
   else
   	Talk(1,"","R­îu ngon, r­îu ngon!")
   end
end

function Uworld128_get()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- °×ÃûÎ´Ñ§Ò°ÇòÈ­µÄ£¬²»ÔÊĞí½ÓÈÎÎñ
		Talk(1,"","T¹i kh«ng thÓ ®i mua r­îi cho ngµi lóc nµy ®­îc!")
	else
		Say("ThÕ ng­¬i quyÕt ®Şnh ®i mua r­îu cho ta chø?",2,"t¹i h¹ sÏ tiÕn hµnh. /Uworld128_wait","th«i, ®Ó h«m kh¸c nhĞ ®¹i huynh, giê ta bËn l¾m/Uworld128_no")
	end
end

function Uworld128_wait()
	SetTask(128,10)
	SetTask(5892,1)
--	Uworld135 = GetGameTime()
   Msg2Player("§Õn töu lÇu ë d­¬ng ch©u mua r­îu cho Giíi v« tµ")
   AddNote("§Õn töu lÇu ë d­¬ng ch©u mua r­îu cho Giíi v« tµ")
end

function Uworld128_no()
end

function Uworld128_envelop()
	DelItem(76)
	AddEventItem(390)
	Msg2Player("Mang th­ cña Gií v« tµ giao cho La khu«ng sinh ë tæng ®µ c¸i bang")
	AddNote("Mang th­ cña Gií v« tµ giao cho La khu«ng sinh ë tæng ®µ c¸i bang")
	SetTask(128,20)
end

function Uworld128_kill()
	SetTask(128,50)
	Msg2Player("B¹n ®Õn C¸i bang gÆp La khu«ng sinh ®Ó ®èi tho¹i")
	AddNote("B¹n ®Õn C¸i bang gÆp La khu«ng sinh ®Ó ®èi tho¹i")
end
