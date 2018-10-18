function OnDeath () 
-- dofile("script/huashan/boss150k5.lua");
if (GetTask(169) == 161) then
SetTask(169,180)
Msg2Player("§¸nh b¹i ®­îc cao t¨ng ThiÕu L©m, mang vinh dù vÒ cho Hoa S¬n") 
Talk(3,"move","<color=metal>Thµnh Kh«n<color> :VŞ thiÕu hiÖp <color=green>"..GetName().."<color> tuy tuoir cßn trÎ nh­ng vâ c«ng h¬n ng­êi","<color=gold>L·o phu qu¶ thËt kh©m phôc<color>","<color=cyan>§¹i S­ qu¸ khen, còng lµ do ngµi ®· nh­êng tiÓu bèi<color>")
 end
 end
 function move()
 AddNote("Quay vÒ gÆp Nam Cung L·o Gia")
 Msg2Player("Quay vÒ gÆp Nam Cung L·o Gia") 
 NewWorld(333,167*8+3,197*16-3)
 SetFightState(0)
 end