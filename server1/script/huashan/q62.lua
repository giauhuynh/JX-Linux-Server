--Lao Nhi
function OnDeath () 
-- dofile("script/huashan/q62.lua");
if (GetTask(169) == 65) then
if (random(1,100) < 25) then 
Msg2Player("C�c h� ��nh b�i L�o Nh� , l�y ���c cu�n Ki�m Ph� th� ba") 
Talk(1,"","C�c h� ��nh b�i L�o Nh� , l�y ���c cu�n Ki�m Ph� th� ba, mau �i t�m l�o ��i")
AddEventItem(1336)
SetTask(169,66)
else
Msg2Player("T�n n�y c�t Ki�m Ph� � ��u m� k� th�, ti�p t�c tra h�i th�i") 
end
end 
end