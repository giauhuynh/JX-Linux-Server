function OnDeath () 
-- dofile("script/huashan/boss150k2.lua");
if (GetTask(169) == 157) then
SetTask(169,158)
Msg2Player("§¸nh b¹i cao thñ cña §­êng M«n, chuÈn bŞ cho trËn kÕ tiÕp") 
Talk(2,"move","Ng­¬i ®· ®¸nh b¹i cao thñ cña <color=wood>§­êng M«n<color>","<color=gold>H·y chuÈn bŞ cho trËn chiÕn tiÕp theo !<color>")
--NewWorld
 end
 end
 function move()
 NewWorld(965,209*8+1,201*16+10)
SetFightState(1)
 end