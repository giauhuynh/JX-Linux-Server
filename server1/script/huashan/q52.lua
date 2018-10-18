--Trom Cho
function OnDeath () 
-- dofile("script/huashan/q52.lua");
if (GetTask(169) == 55) then
if (random(1,100) < 25) then 
Msg2Player("§¸nh b¹i Trém Chã, buéc h¾n ph¶i  giao ra ®¸ quý c­íp ®c") 
Talk(1,"","Ng­¬i ®¸nh b¹i Trén chã, buéc h¾n ph¶i gia ra ®¸ quý c­íp ®­îc , mau quay veef bÈm b¸o cho Ph­¬ng Thóc Thóc")
AddEventItem(1333)
SetTask(169,56)
else
Msg2Player("Tªn Trém Chã vÉn cøng ®Çu ,ch­a   chÞu hÐ m«i, tiÕp tôc tra kh¶o !") 
end
end 
end