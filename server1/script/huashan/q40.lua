--Dao tac TRen Vu Di Son
function OnDeath () 
-- dofile("script/huashan/q40.lua");
if (GetTask(169) == 46) then
if (random(1,100) < 20) then 
Msg2Player("C�c h� ��nh b�i ��o T�c, bu�c h�n ph�i nh�n t�i, mau quay v� nha m�n b�m b�o") 
Talk(1,"","C�c h� ��nh b�i ��o T�c, bu�c h�n ph�i nh�n t�i, mau quay v� nha m�n b�m b�o")
AddEventItem(1329)
SetTask(169,47)
else
Msg2Player("T�n ��o T�c v�n c�n c�ng ��u, ch�a ch�u nh�n t�i.") 
end
end 
end