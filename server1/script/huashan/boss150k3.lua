function OnDeath () 
-- dofile("script/huashan/boss150k3.lua");
if (GetTask(169) == 158) then
SetTask(169,159)
Msg2Player("��nh b�i cao th� c�a Ng� ��c, chu�n b� cho tr�n k� ti�p") 
Talk(2,"move","Ng��i �� ��nh b�i cao th� c�a <color=wood>Ng� ��c Gi�o<color>","<color=gold>H�y chu�n b� cho tr�n chi�n ti�p theo !<color>")
--NewWorld
 end
 end
 function move()
 NewWorld(470,195*8,201*16+1)
SetFightState(1)
 end