--Lao Tam
function OnDeath () 
-- dofile("script/huashan/q61.lua");
if (GetTask(169) == 64) then
if (random(1,100) < 25) then 
Msg2Player("C�c h� ��nh b�i L�o Tam , l�y ���c cu�n Ki�m Ph� th� hai") 
Talk(1,"","C�c h� ��nh b�i L�o Tam , l�y ���c cu�n Ki�m Ph� th� hai, mau �i t�m l�o nh�")
AddEventItem(1335)
SetTask(169,65)
else
Msg2Player("T�n n�y c�t Ki�m Ph� � ��u m� k� th�, ti�p t�c tra h�i th�i") 
end
end
end