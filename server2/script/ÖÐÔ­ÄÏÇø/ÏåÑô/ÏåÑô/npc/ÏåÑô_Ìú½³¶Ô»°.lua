--description: ÖĞÔ­ÄÏÇø ÏåÑô¸® Ìú½³¶Ô»° Îäµ±ÅÉ³öÊ¦ÈÎÎñ
--author: yuanlan	
--date: 2003/5/17
-- Update: Dan_Deng(2003-08-08)
-- Update: Dan_Deng(2003-08-17)

Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc>Ta ®Æc biÖt chuyªn vÒ chÕ t¹o binh khİ, rÊt bËn rén, ngµi muèn mua vò khİ sao? Cø tù nhiªn mµ chän."

function main(sel)
	UTask_wd = GetTask(5);
	UTask_wd60sub = GetByte(GetTask(17),2)
	if (UTask_wd == 60*256+20) then
		if (UTask_wd60sub == 2) then 
			Talk(2, "", "B©y giê chiÕn trËn khÈn cÊp, quan binh qu©n giíi ch­a ®ñ, ng­¬i h·y t×m cho ta mét İt nguyªn liÖu ®Ó chÕ t¹o vò khİ. ", "Ta lµm ngµy lµm ®ªm, nguyªn liÖu vÉn kh«ng ®ñ dïng. <color=Red>Má thiÕt, má b¹c cïng má ®ång<color> dïng hÕt c¶ råi. Ng­¬i cã thÓ ®Õn <color=Red>phİa T©y Nam thµnh<color> t×m gióp ta kh«ng?")
			SetTask(17, SetByte(GetTask(17),2,5))
			AddNote("Thî rÌn (193,201) nãi, muèn chÕ t¹o binh khİ cÇn 3 lo¹i kho¸ng th¹ch: Má thiÕt, má b¹c vµ má ®ång. Cã thÓ t×m thÊy ë T©y Nam thµnh T­¬ng D­¬ng.")
		elseif (UTask_wd60sub == 5) then 
			if ( HaveItem(138) == 1 and HaveItem(118) == 1 and HaveItem(121) == 1) then
				Talk(2, "", "Ta ®· t×m ®ñ kho¸ng th¹ch, hy väng cã thÓ chÕ t¹o ra binh khİ tèt nhÊt, trî gióp binh sÜ kh¸ng Kim", "Qu©n sÜ chİ cao nh­ nói, nhÊt ®Şnh cã thÓ ®uæi ®¸nh ®uæi qu©n Kim!")
				DelItem(138)
				DelItem(118)
				DelItem(121)
				SetTask(17, SetByte(GetTask(17),2,8))
				AddNote("T×m ®­îc 3 lo¹i kho¸ng th¹ch, cã thÓ ®em vÒ cho thî rÌn!")
				Msg2Player("T×m ®­îc 3 lo¹i kho¸ng th¹ch, cã thÓ ®em vÒ cho thî rÌn!")
			else
				tiejiang_city("Kh«ng cã kho¸ng th¹ch, kh«ng c¸ch nµo lµm ®­îc binh khİ. Ng­êi cã thÓ ®i <color=Red>bªn ngoµi thµnh phİa nam<color> t×m mét İt <color=Red> má thiÕt, má b¹c cïng má ®ång<color>?")
			end
		else
			tiejiang_city()
		end		
	else
		tiejiang_city()
	end
end;

function yes()
	Sale(10);  			--µ¯³ö½»Ò×¿ò
end;

