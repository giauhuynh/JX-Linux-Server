--description: ÖÐÔ­ÄÏÇø ÏåÑô¸® ¢·ÈË8µË¼ÒÉ©×Ó¶Ô»° Îäµ±ÅÉ50¼¶ÈÎÎñ
--author: yuanlan	
--date: 2003/5/16
-- Update: Dan_Deng(2003-08-17)

function main(sel)
	UTask_wd = GetTask(5);
	if (UTask_wd == 50*256+50) then 
		Talk(3, "select", "§Æng gia tÈu tû: Gia c¶nh nghÌo khã, TiÓu Nha ngµy ngµy kªu ®ãi, ta ®©y th©n lµm mÑ thÊy thËt ®au lßng. ", "Ng­êi ch¬i: §¹i tÈu, n¬i nµy cã mét v¹n l­îng b¹c, h·y mau cÇm lÊy. ChØ cÇn cã Vâ §ang ®Ö tö chóng ta ë ®©y, c¸c ng­êi sau nµy còng sÏ kh«ng bÞ ®ãi n÷a !", "§Æng gia tÈu tû: Hic, ta thËt lµ gÆp ph¶i Bå T¸t sèng råi, ta kh«ng ph¶i lµ ®ang n»m m¬ chø? B©y giê vÉn cßn cã nh÷ng ng­êi tèt nh­ vËy!")
	elseif (UTask_wd > 50*256+50) then
		Talk(1,"","§Æng gia tÈu tû: Vâ §ang trªn nói ®Ých thËt lµ nh÷ng ®¹i hiÖp chuyªn gióp ®ì ng­êi kh¸c, nÕu kh«ng ph¶i lµ bän hä th­êng tiÕp tÕ, mÑ con chóng ta ®· sím chÕt ®ãi råi!")
	else
		Talk(1,"","§Æng gia tÈu tû: Gia c¶nh nghÌo khã, TiÓu Nha ngµy ngµy kªu ®ãi, ta ®©y th©n lµm mÑ thÊy thËt ®au lßng. ")
	end
end;

function select()
	if (GetCash() >= 10000) then
		Pay(10000)
	Msg2Player("§em mét v¹n l­îng b¹c c­íp ®­îc cña bän c­êng ®¹o ®­a cho §Æng gia tÈu tû.")
		SetTask(5, 50*256+80)
		AddNote("§em mét v¹n l­îng b¹c c­íp ®­îc cña bän c­êng ®¹o ®­a cho §Æng gia tÈu tû. ")
	else
		Talk(1,"","Ng­êi ch¬i:Háng bÐt, mét v¹n l­îng b¹c kia ta ®· dïng 1 Ýt råi, ph¶i lµm thÕ thÕ nµo cho ph¶i? ")
		AddNote("Ng©n l­îng kh«ng ®ñ, ®i kiÕm tiÒn tr­íc.")
	end
end;
