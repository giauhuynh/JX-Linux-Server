function OnDeath () 
-- dofile("script/huashan/boss150k1.lua");
if (GetTask(169) == 156) then
SetTask(169,157)
Msg2Player("��nh b�i cao th� c�a Ng� ��c, chu�n b� cho tr�n k� ti�p") 

Talk(2,"move","Ng��i �� ��nh b�i cao th� c�a <color=wood>Ng� ��c Gi�o<color>","<color=gold>H�y chu�n b� cho tr�n chi�n ti�p theo !<color>")
--NewWorld
 end
 end
 
 function move()
 NewWorld(947,201*8,200*16)
SetFightState(1)
 end