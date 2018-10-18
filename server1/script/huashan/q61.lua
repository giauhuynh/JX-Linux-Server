--Lao Tam
function OnDeath () 
-- dofile("script/huashan/q61.lua");
if (GetTask(169) == 64) then
if (random(1,100) < 25) then 
Msg2Player("C¸c h¹ ®¸nh b¹i L·o Tam , lÊy ®­îc cuèn KiÕm Phæ thø hai") 
Talk(1,"","C¸c h¹ ®¸nh b¹i L·o Tam , lÊy ®­îc cuèn KiÕm Phæ thø hai, mau ®i t×m l·o nhÞ")
AddEventItem(1335)
SetTask(169,65)
else
Msg2Player("Tªn nµy cÊt KiÕm Phæ ë ®©u mµ kü thÕ, tiÕp tôc tra hái th«i") 
end
end
end