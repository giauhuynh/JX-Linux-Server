--Á½ºþÇø °ÍÁêÏØ ³¤½­¢ëÍ·´¬·ò¶Ô»°
--suyu
--200306015
-- Update: Dan_Deng(2003-08-21) ½µµÍ³ö´åµÈ¼¶ÒªÇóÎª5¼¶

CurWharf = 5;
Include("\\Script\\Global\\station.lua");
---------------------------------------------------------------
function main(sel)

if (GetLevel() >= 5) then		--µÈ¼¶´ïµ½5¼¶
	Say("Ta cã biÖt hiÖu lµ 'L·ng Lý B¹ch §iÒu' ba ®êi ®Òu sè dùa vµo s«ng n­íc! Kh¾p Ba L¨ng HuyÖn nµy kh«ng cã ai lµ ®èi thñ! Kh¸ch quan muèn ®i ®©u? ", 2, "Ngåi thuyÒn/WharfFun", "Kh«ng ngåi/OnCancel");
else		
	Say("Ngåi yªn chóng ta ®i nµo", 0)
end

end;

---------------------------------------------------------------
function  OnCancel()
   Say("Kh«ng cã tiÒn mµ còng ®ßi ngåi thuyÒn h¶?",0)
end;

------------------------------------------------
