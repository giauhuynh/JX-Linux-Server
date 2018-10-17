--Lao Nhi
function OnDeath () 
-- dofile("script/huashan/q62.lua");
if (GetTask(169) == 65) then
if (random(1,100) < 25) then 
Msg2Player("C¸c h¹ ®¸nh b¹i L·o NhÞ , lÊy ®­îc cuèn KiÕm Phæ thø ba") 
Talk(1,"","C¸c h¹ ®¸nh b¹i L·o NhÞ , lÊy ®­îc cuèn KiÕm Phæ thø ba, mau ®i t×m l·o ®¹i")
AddEventItem(1336)
SetTask(169,66)
else
Msg2Player("Tªn nµy cÊt KiÕm Phæ ë ®©u mµ kü thÕ, tiÕp tôc tra hái th«i") 
end
end 
end