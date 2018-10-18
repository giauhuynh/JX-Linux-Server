--Î÷ÄÏ±±Çø ½­½ò´å Ò©µêÀÏ°å¶Ô»°£¨½­½ò´åÐÂÊÖÈÎÎñ£ºÎâÀÏµùµÄÒ©£©
--suyu
-- Update: Dan_Deng(2003-08-11)
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")


function main(sel)
	UTask_world21 = GetTask(49);
	Uworld1000 = nt_getTask(1000)	
	if ((UTask_world21 == 1) and (HaveItem(179) == 0)) then
		Say("Ng« L·o Th¸i nhê ng­¬i ®Õn mua thuèc µ? Ta ®· chuÈn bÞ s½n cho ng­¬i 10 viªn Xuyªn Bèi Hoµn, tæng céng 200 l­îng. Nh¾n víi L·o Th¸i h·y gi÷ g×n søc kháe!",3,"Mua Xuyªn Bèi Hoµn/buy","Mua mét Ýt thuèc kh¸c/yes","Kh«ng mua ®©u/no")
	else
		Say("Ng­¬i ®· ¨n 5 cèc t¹p l­¬ng, kh«ng ph¸t háa nhøc ®Çu míi l¹! Chç ta tuy nhá nh­ng tuyÖt ®èi kh«ng thiÕu thø g×! Ng­¬i cã muèn mua Ýt thuèc kh«ng?", 3, "Giao dÞch/yes", "Ta ®Õn lµm nhiÖm vô s¬ nhËp/yboss","Kh«ng giao dÞch/no");
	end
end;

function buy()
	if(GetCash() >= 200)then
		Pay(200)
		AddEventItem(179) --µÃµ½Ò©
		Msg2Player("NhËn ®­îc Xuyªn Bèi Hoµn")
		AddNote("Mua ®­îc Xuyªn Bèi Hoµn.")
	else
		Talk(1,"","Khi nµo ®ñ tiÒn th× h·y quay l¹i")
	end
end;

function yes()
	Sale(24)						--µ¯³ö½»Ò×¿ò
end;

function no()
end;
