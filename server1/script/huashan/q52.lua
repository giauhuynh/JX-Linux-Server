--Trom Cho
function OnDeath () 
-- dofile("script/huashan/q52.lua");
if (GetTask(169) == 55) then
if (random(1,100) < 25) then 
Msg2Player("��nh b�i Tr�m Ch�, bu�c h�n ph�i  giao ra �� qu� c��p �c") 
Talk(1,"","Ng��i ��nh b�i Tr�n ch�, bu�c h�n ph�i gia ra �� qu� c��p ���c , mau quay veef b�m b�o cho Ph��ng Th�c Th�c")
AddEventItem(1333)
SetTask(169,56)
else
Msg2Player("T�n Tr�m Ch� v�n c�ng ��u ,ch�a   ch�u h� m�i, ti�p t�c tra kh�o !") 
end
end 
end