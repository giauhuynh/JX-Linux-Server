--Luu Manh Thon
function OnDeath () 
-- dofile("script/huashan/q50.lua");
if (GetTask(169) == 53) then
if (random(1,100) < 65) then 
Msg2Player("��nh b�i L�u Manh, bu�c h�n ph�i  giao ra s� b�c b� c��p") 
Talk(1,"","Ng��i ��nh b�i Luu Manh, bu�c h�n ph�i gia ra b�c c��p ���c , c� th� h�n v�n c�n ��ng b�n quanh ��y")
AddEventItem(1331)
SetTask(169,54)
else
Msg2Player("T�n Luu Manh v�n c�ng ��u ,ch�a   ch�u h� m�i, ti�p t�c tra kh�o !") 
end
end 
end