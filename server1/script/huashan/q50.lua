--Luu Manh Thon
function OnDeath () 
-- dofile("script/huashan/q50.lua");
if (GetTask(169) == 53) then
if (random(1,100) < 65) then 
Msg2Player("§¸nh b¹i L­u Manh, buéc h¾n ph¶i  giao ra sè b¹c bÞ c­íp") 
Talk(1,"","Ng­¬i ®¸nh b¹i Luu Manh, buéc h¾n ph¶i gia ra b¹c c­íp ®­îc , cã thÓ h¾n vÉn cßn ®ång bän quanh ®©y")
AddEventItem(1331)
SetTask(169,54)
else
Msg2Player("Tªn Luu Manh vÉn cøng ®Çu ,ch­a   chÞu hÐ m«i, tiÕp tôc tra kh¶o !") 
end
end 
end