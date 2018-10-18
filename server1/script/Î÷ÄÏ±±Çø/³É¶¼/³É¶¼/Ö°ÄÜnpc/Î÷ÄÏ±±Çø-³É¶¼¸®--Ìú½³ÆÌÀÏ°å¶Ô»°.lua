--description: Î÷ÄÏ±±Çø ³É¶¼¸® Ìú½³ÆÌµÏ°å ¶ëáÒÅÉ10¼¶ÈÎÎñ
--author: yuanlan	
--date: 2003/5/24
-- Update: Dan_Deng(2003-08-12)

Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc>Sau nµy ng­¬i cã muèn t×m thÇy häc thî rÌn th× cø ®Õn ®©y t×m ta, ao ¨n bao uèng c¶."

function main(sel)
	UTask_em = GetTask(1)
	if ((UTask_em == 10*256+20) and (HaveItem(18) == 1) and (HaveItem(19) == 1)) then
		Talk(5, "", "th?rÌn ®¹i ca , ng­¬i c?th?gióp ta ghÐp hai m¶nh g­¬ng ®ång thµnh mét kh«ng ?", "nÕu ®æi l¹i ng­êi kh¸c , muèn phôc håi ®­îc mÆt g­¬ng ®ång thËt kh?nh?lªn trêi , nh­ng ta l¹i c?tay ngh?t?truyÒn , chuyªn m«n dïng ®Ó tu b?g­¬ng ®ång , ng­¬i coi nh?®· t×m ®óng ng­êi , ch?l?..", "ng­¬i ph¶i nhiÒu tiÒn ta míi b»ng lßng phôc håi g­¬ng ®ång?", "ch?cÇn ng­¬i c?th?gióp ta t×m ®­îc mét lo¹i gäi l?l­îng m?b¹c kho¸ng th¹ch , ta s?gióp ng­¬i tu b?l¹i c¸i g­¬ng ®ång nµy , nghe nãi thµnh t©y trong rõng c©y th?c?l­îng m?b¹c , c?rÊt nhiÒu th?d?¨n thÞt ng­êi , cho nªn b×nh th­êng kh«ng ai d¸m ®i ®µo ?.","®­îc råi , ta göi l¹i hai khèi g­¬ng ch?nµy , lËp tøc ®i t×m l­îng m?b¹c .")
		DelItem(18)
		DelItem(19)
		SetTask(1, 10*256+40)
		AddNote("®Õn thµnh ®« t×m ®­îc th?rÌn , biÕt cÇn l­îng m?b¹c ®Ó phôc håi g­¬ng ®ång nh?c? ")
		Msg2Player("®Õn thµnh ®« t×m ®­îc th?rÌn , biÕt cÇn l­îng m?b¹c ®Ó phôc håi g­¬ng ®ång nh?c? ")
	elseif (UTask_em == 10*256+40) then
		if (HaveItem(118) == 1) then
			Talk(1, "", "rÊt tèt ,®· ®ñ l­îng m?b¹c , ta ®· gióp ng­¬i phôc håi g­¬ng nh?c?")
			DelItem(118)
			AddEventItem(20)
			SetTask(1, 10*256+60)
			AddNote("§­a l­îng m?b¹c cho th?rÌn , ®Ó phôc håi g­¬ng ®ång nh?c?")
			Msg2Player("Kªu th?rÌn phôc håi g­¬ng ®ång nh?c?")
		else
			tiejiang_city("<dec><npc>nghe nãi thµnh t©y trong rõng c©y c?l­îng m?b¹c , kh«ng c?l­îng m?b¹c kh«ng th?phôc håi g­¬ng nh?c?");
		end
	elseif ((UTask_em == 10*256+60) and (HaveItem(20) == 0)) then		-- ÈÎÎñÖÐ£¬Ý­¾µ¶ª¸Ë
		AddEventItem(20)
		Msg2Player("®¹t ®­îc phôc håi g­¬ng ®ång nh?c?")
		Talk(1,"","Ng­¬i kh«ng cÇm g­¬ng ®Õn ®©y ?")
	else
		tiejiang_city(TIEJIANG_DIALOG);
	end
end;

function yes()
Sale(13)  			--µ¯³ö½»Ò×¿ò
end;

