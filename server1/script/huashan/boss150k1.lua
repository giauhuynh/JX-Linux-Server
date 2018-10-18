function OnDeath () 
-- dofile("script/huashan/boss150k1.lua");
if (GetTask(169) == 156) then
SetTask(169,157)
Msg2Player("§¸nh b¹i cao thñ cña Ngñ §éc, chuÈn bŞ cho trËn kÕ tiÕp") 

Talk(2,"move","Ng­¬i ®· ®¸nh b¹i cao thñ cña <color=wood>Ngñ §éc Gi¸o<color>","<color=gold>H·y chuÈn bŞ cho trËn chiÕn tiÕp theo !<color>")
--NewWorld
 end
 end
 
 function move()
 NewWorld(947,201*8,200*16)
SetFightState(1)
 end