function OnDeath () 
-- dofile("script/huashan/boss150k4.lua");
if (GetTask(169) == 159) then
SetTask(169,160)
Msg2Player("§¸nh b¹i cao thñ cña C«n L«n, chuÈn bŞ cho trËn cuèi cïng") 
Talk(2,"move","Ng­¬i ®· ®¸nh b¹i cao thñ cña <color=earth>C«n L«n<color>","<color=gold>H·y chuÈn bŞ cho trËn chiÕn tiÕp theo !<color>")
 end
 end
 function move()
 NewWorld(934,193*8+4,198*16+4)
 SetFightState(1)
 end