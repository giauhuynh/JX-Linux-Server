--Trom Cho
function OnDeath () 
-- dofile("script/huashan/q63.lua");
if (GetTask(169) == 66) then
if (random(1,100) < 10) then 
Msg2Player("C�c h� ��nh b�i L�o ��i , l�y ���c cu�n Ki�m Ph� th� t�") 
Talk(1,"","C�c h� ��nh b�i L�o ��i , l�y ���c cu�n Ki�m Ph� th� t�, mau quay v� Hoa S�n ph�c m�nh")
AddEventItem(1337)
SetTask(169,67)
else
Msg2Player("T�n n�y c�t Ki�m Ph� � ��u m� k� th�, ti�p t�c tra h�i th�i") 
end
end 
end