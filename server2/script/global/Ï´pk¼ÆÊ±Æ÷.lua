-- script viet hoa By http://tranhba.com  t¾m PK tİnh giê khİ .lua 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-11-27) 
-- script viet hoa By http://tranhba.com  Timer: 9 

Include("\\Script\\Global\\TimerHead.lua")

function OnTimer() 
local Uworld96 = GetTask(96) 
local PK_value = GetPK(); 
local nMapId = GetWorldPos(); 
StopTimer(); 

if (nMapId == 208) then -- script viet hoa By http://tranhba.com  chØ cã ë phßng giam trung míi cho phĞp gi¶m PK trŞ gi¸ 
if (PK_value > 1) then -- script viet hoa By http://tranhba.com  ch­a giÆt xong PK trŞ gi¸ 
Msg2Player("Th«ng qua tÜnh t©m hèi c·i , téi cña ng­¬i nghiÖt gi¶m bít . ") 
SetPK(PK_value - 1) 
			SetTask(96,100 + (PK_value - 1));
SetTimer(12 * CTime * FramePerSec, 9) -- script viet hoa By http://tranhba.com  lÇn n÷a b¾t ®Çu tİnh giê #12 c¸ canh giê ==120 phót # 
else -- script viet hoa By http://tranhba.com  giÆt xong PK liÔu 
Msg2Player(" ë kh¾c s©u tØnh l¹i tù th©n téi sau , ng­¬i rèt côc röa s¹ch téi lçi cña m×nh . ") 
SetPK(0) 
SetTask(96,100) 
end 
end 
end; 
