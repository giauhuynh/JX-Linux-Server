--Con Do
function OnDeath () 
-- dofile("script/huashan/q51.lua");
if (GetTask(169) == 54) then
if (random(1,100) < 25) then 
Msg2Player("��nh b�i C�n ��, bu�c h�n ph�i  giao ra s� b�c b� c��p") 
Talk(1,"","Ng��i ��nh b�i C�n ��, bu�c h�n ph�i gia ra v�ng c��p ���c , c� th� h�n v�n c�n ��ng b�n quanh ��y")
AddEventItem(1332)
SetTask(169,55)
else
Msg2Player("T�n C�n �� v�n c�ng ��u ,ch�a   ch�u h� m�i, ti�p t�c tra kh�o !") 
end
end 
end