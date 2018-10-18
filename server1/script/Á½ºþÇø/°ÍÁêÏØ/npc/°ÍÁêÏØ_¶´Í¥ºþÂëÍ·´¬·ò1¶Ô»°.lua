--Á½ºþÇø °ÍÁêÏØ ¶´Í¥ºþ¢ëÍ·´¬·ò1¶Ô»°
-- Update: Dan_Deng(2003-08-21) ½µµÍ³ö´åµÈ¼¶ÒªÇóÎª5¼¶

function main(sel)
	Say("C¶ ®êi ta ®Òu sèng víi s«ng n­íc! §éng ®×nh hå kh«ng chç nµo ta kh«ng biÕt! Kh¸ch quan muèn ®i ®©u?", 2, "§i Thiªn V­¬ng §µo/yes", "Ta kh«ng ®i ®©u/no")
end;

function yes()
	if (GetLevel() >= 5) then						--µÈ¼¶´ïµ½Ê®¼¶
		if (GetFaction() == "tianwang") then				--Èç¹ûÍæ¼ÒÊÇÌìÍõ°ïµÜ×Ó£¬×ø´¬²»ÊÕÇ®
			Say("H«m nay m¸t trêi nªn ta sÏ ®­a ng­¬i lªn Thiªn V­¬ng §¶o miÔn phÝ", 1, "ThÕ th× cßn g× b»ng/ok1")
		else	
			Say("Thiªn V­¬ng §¶o v« cïng khã ®i nªn ng­¬i cho ta xin Ýt lé phÝ lµ 100 l­îng", 1, "§ång ý mau ®­a ta ®i/ok2")
		end
	else		
		Talk(1,"","§· ®Õn Thiªn V­¬ng §¶o b¶o träng nhÐ anh b¹n")
	end
end;

function no()
end;

function ok1()
NewWorld(59, 1425, 3472)
SetFightState(0)					--×ª»»Îª·ÇÕ½¶·×´Ì¬
end;

function ok2()
if (GetCash() >= 100) then							--²Î¿¼Öµ
	Pay(100)
	NewWorld(59, 1425, 3472)
	SetFightState(0)							--×ª»»Îª·ÇÕ½¶·×´Ì¬	
else
	Say("Kh«ng cã tiÒn lé phÝ ta kh«ng ®­a ng­¬i ®i ®­îc", 0)		
end
end;
