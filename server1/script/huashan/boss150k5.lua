function OnDeath () 
-- dofile("script/huashan/boss150k5.lua");
if (GetTask(169) == 160) then
SetTask(169,161)
Msg2Player("§¸nh b¹i ®­îc cao thñ Nga My, mang vinh dù vÒ cho Hoa S¬n") 
Talk(4,"move","Ng­¬i ®· ®¸nh b¹i cao thñ cña <color=water>Nga My<color>","<color=gold>ChØ cßn 1 trËn chiÕn cuèi cïng tr­íc m¾t !<color>","<color=cyan>H·y håi sinh lùc vµ néi lùc, ®èi thñ lµ 1 vÞ thÇn t¨ng cña ThiÕu L©m<color>","<color=red>CHIÕN TH¤I !<color>")
 end
 end
 function move()
 NewWorld(457,201*8-8,200*16-3)
 SetFightState(1)
 end