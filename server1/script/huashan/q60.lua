--Lao T�
function OnDeath () 
-- dofile("script/huashan/q60.lua");
if (GetTask(169) == 63) then
if (random(1,100) < 25) then 
Msg2Player("C�c h� ��nh b�i L�o T� , l�y ���c cu�n Ki�m Ph� th� nh�t") 
Talk(1,"","C�c h� ��nh b�i L�o T� , l�y ���c cu�n Ki�m Ph� th� nh�t, mau �i t�m l�o tam")
AddEventItem(1334)
SetTask(169,64)
else
Msg2Player("T�n n�y c�t Ki�m Ph� � ��u m� k� th�, ti�p t�c tra h�i th�i") 
end
end 
end