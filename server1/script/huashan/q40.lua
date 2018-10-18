--Dao tac TRen Vu Di Son
function OnDeath () 
-- dofile("script/huashan/q40.lua");
if (GetTask(169) == 46) then
if (random(1,100) < 20) then 
Msg2Player("C¸c h¹ ®¸nh b¹i §¹o TÆc, buéc h¾n ph¶i nhËn téi, mau quay vÒ nha m«n bÈm b¸o") 
Talk(1,"","C¸c h¹ ®¸nh b¹i §¹o TÆc, buéc h¾n ph¶i nhËn téi, mau quay vÒ nha m«n bÈm b¸o")
AddEventItem(1329)
SetTask(169,47)
else
Msg2Player("Tªn §¹o TÆc vÉn cßn cøng ®Çu, ch­a chÞu nhËn téi.") 
end
end 
end