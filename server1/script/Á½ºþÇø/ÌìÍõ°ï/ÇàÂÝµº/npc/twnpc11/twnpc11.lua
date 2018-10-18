--description: ÇàÂÝµºÂëÍ·´¬·ò
--author: yuanlan	
--date: 2003/4/28


function main()

if (GetFaction() == "tianwang") then					--Èç¹ûÍæ¼ÒÊÇÌìÍõ°ïµÜ×Ó£¬×ø´¬²»ÊÕÇ®
	Say("ThiÕu hiÖp muèn ®i nhê kh«ng!", 2, "phiÒn ngµi!/yes", "th«i /no")
else	
	Say("kh«ng ph¶i ng­êi cña thiªn v­¬ng, mçi lÇn 500 l­îng!", 2, "®­a ta ®i/yes1", "th«i/no")
--	Talk(1,"","ÌìÍõ°ïÖÚ£ºÄã²»ÊÇ±¾°ïµÜ×Ó£¬ÔõÃ´»ìµ½±¾°ï½ûµØÀ´µÄ£¿£¡")
end;

end;


function yes()
NewWorld(59, 1425, 3472)						--»ØÌìÍõµº
SetFightState(0)							--×ª»»Îª·ÇÕ½¶·×´Ì¬
end;


function yes1()
if (GetCash() >= 500) then						--²Î¿¼Öµ
	Pay(500)
	NewWorld(59, 1425, 3472)					--»ØÌìÍõµº
	SetFightState(0)						--×ª»»Îª·ÇÕ½¶·×´Ì¬
else
	Say("Ã»Ç®¾Í¸Ï¿ì×ß!", 0)		
end;
end;


function no()
end;
