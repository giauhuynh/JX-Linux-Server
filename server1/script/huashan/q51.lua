--Con Do
function OnDeath () 
-- dofile("script/huashan/q51.lua");
if (GetTask(169) == 54) then
if (random(1,100) < 25) then 
Msg2Player("§¸nh b¹i C«n §å, buéc h¾n ph¶i  giao ra sè b¹c bÞ c­íp") 
Talk(1,"","Ng­¬i ®¸nh b¹i C«n §å, buéc h¾n ph¶i gia ra vµng c­íp ®­îc , cã thÓ h¾n vÉn cßn ®ång bän quanh ®©y")
AddEventItem(1332)
SetTask(169,55)
else
Msg2Player("Tªn C«n §å vÉn cøng ®Çu ,ch­a   chÞu hÐ m«i, tiÕp tôc tra kh¶o !") 
end
end 
end