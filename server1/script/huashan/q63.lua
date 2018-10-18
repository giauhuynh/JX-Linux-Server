--Trom Cho
function OnDeath () 
-- dofile("script/huashan/q63.lua");
if (GetTask(169) == 66) then
if (random(1,100) < 10) then 
Msg2Player("C¸c h¹ ®¸nh b¹i L·o §¹i , lÊy ®­îc cuèn KiÕm Phæ thø t­") 
Talk(1,"","C¸c h¹ ®¸nh b¹i L·o §¹i , lÊy ®­îc cuèn KiÕm Phæ thø t­, mau quay vÒ Hoa S¬n phôc mÖnh")
AddEventItem(1337)
SetTask(169,67)
else
Msg2Player("Tªn nµy cÊt KiÕm Phæ ë ®©u mµ kü thÕ, tiÕp tôc tra hái th«i") 
end
end 
end