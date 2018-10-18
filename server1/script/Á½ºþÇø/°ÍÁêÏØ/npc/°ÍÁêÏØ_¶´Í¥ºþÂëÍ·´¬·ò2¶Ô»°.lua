--Á½ºþÇø °ÍÁêÏØ ¶´Í¥ºþ¢ëÍ·´¬·ò2¶Ô»°
-- Update: Dan_Deng(2003-08-21) ½µµÍ³ö´åµÈ¼¶ÒªÇóÎª5¼¶

function main(sel)
Say("C¶ ®êi ta ®Òu sèng víi s«ng n­íc! §éng §×nh hå kh«ng chç nµo ta kh«ng biÕt! Kh¸ch quan muèn ®i ®©u? ", 2, "§i Thiªn V­¬ng ®¶o/yes", "Ta sî l¾m kh«ng ®i ®©u/no");
end;

function yes()
if (GetLevel() >= 5) then						--µÈ¼¶´ïµ½Ê®¼¶
	if (GetFaction() == "tianwang") then				--Èç¹ûÍæ¼ÒÊÇÌìÍõ°ïµÜ×Ó£¬×ø´¬²»ÊÕÇ®
		Say("N¬i ®ã nguy hiÓm l¾m! Ng­¬i cã thËt sù muèn ®i kh«ng? ", 1, "ok/ok1")
	else	
		Say("N¬i ®ã nguy hiÓm l¾m! NÕu kh¸ch quan muèn ®i th× cho t«i xin thªm Ýt tiÒn. ", 1, "NhÊt trÝ/ok2")
	end
else		
	Say("gia33", 0)
end
end;

function no()
end;


function ok1()
NewWorld(59, 1425, 3472)
SetFightState(0)								--×ª»»Îª·ÇÕ½¶·×´Ì¬
end;


function ok2()
if (GetCash() >= 100) then							--²Î¿¼Öµ
	Pay(100)
	NewWorld(59, 1425, 3472)
	SetFightState(0)							--×ª»»Îª·ÇÕ½¶·×´Ì¬	
else
	Say("Kh«ng cã tiÒn th× ta kh«ng ®­a ng­¬i ®Õn ®ã ®­îc", 0)		
end
end;
