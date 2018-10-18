--Î÷ÄÏ±±Çø ½­½ò´å ÂëÍ·´¬·ò¶Ô»°
--suyu
--200306015
-- Update: Dan_Deng(2003-08-21) ½µµÍ³ö´åµÈ¼¶ÒªÇóÎª5¼¶

CurWharf = 2;
Include("\\script\\global\\station.lua")
---------------------------------------------------------------
function main(sel)

if (GetLevel() >= 5) then		--µÈ¼¶´ïµ½Ê®¼¶
	Say("Kh¸ch quan muèn ngåi thuyÒn ®i ®©u vËy?", 2, "Lªn thuyÒn/WharfFun", "Ta kh«ng muèn lªn/OnCancel");
else		
	Talk(1,"","M· lçi 'GTT001' vui lßng chôp h×nh vµ göi cho admin ®Ó fix lçi!")
end

end;

---------------------------------------------------------------
function  OnCancel()
   Say("Kh¸ch quan ®ïa ta h¶?",0)
end;

---------------------------------------------------------------
