function OnDeath () 
-- dofile("script/huashan/boss150k2.lua");
if (GetTask(169) == 157) then
SetTask(169,158)
Msg2Player("��nh b�i cao th� c�a ���ng M�n, chu�n b� cho tr�n k� ti�p") 
Talk(2,"move","Ng��i �� ��nh b�i cao th� c�a <color=wood>���ng M�n<color>","<color=gold>H�y chu�n b� cho tr�n chi�n ti�p theo !<color>")
--NewWorld
 end
 end
 function move()
 NewWorld(965,209*8+1,201*16+10)
SetFightState(1)
 end