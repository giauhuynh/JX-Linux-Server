-- Tuong Da

function main() 
-- dofile("script/huashan/tuongda.lua");

if (GetTask(169) == 95) or (GetTask(169) == 96)  then
Say("Nh¹c s­ phô ®i ®Õn ®©y th× biÕn mÊt... å th× ra sau t­îng ®¸ nµy cßn cã 1 <color=red>c¬ quan<color> bİ mËt...",2,"Vµo c¬ quan/vao","Th«i nguy hiÓm l¾m/no")
else
Talk(1,"","Bøc t­îng ®· nµy qu¶ thËt rÊt ®Ñp")
end
end
 

function vao() 
Msg2Player("Mau ®¸nh b¹i Nh¹c BÊt QuÇn")
SetTask(169,96)
SetFightState(1);
NewWorld(2,306*8-2,252*16-2);
end; 



function no() 
end; 
