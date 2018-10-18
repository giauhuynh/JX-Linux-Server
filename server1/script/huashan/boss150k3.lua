function OnDeath () 
-- dofile("script/huashan/boss150k3.lua");
if (GetTask(169) == 158) then
SetTask(169,159)
Msg2Player("§¸nh b¹i cao thñ cña Ngñ §éc, chuÈn bŞ cho trËn kÕ tiÕp") 
Talk(2,"move","Ng­¬i ®· ®¸nh b¹i cao thñ cña <color=wood>Ngñ §äc Gi¸o<color>","<color=gold>H·y chuÈn bŞ cho trËn chiÕn tiÕp theo !<color>")
--NewWorld
 end
 end
 function move()
 NewWorld(470,195*8,201*16+1)
SetFightState(1)
 end