function OnDeath () 
-- dofile("script/huashan/boss150k4.lua");
if (GetTask(169) == 159) then
SetTask(169,160)
Msg2Player("��nh b�i cao th� c�a C�n L�n, chu�n b� cho tr�n cu�i c�ng") 
Talk(2,"move","Ng��i �� ��nh b�i cao th� c�a <color=earth>C�n L�n<color>","<color=gold>H�y chu�n b� cho tr�n chi�n ti�p theo !<color>")
 end
 end
 function move()
 NewWorld(934,193*8+4,198*16+4)
 SetFightState(1)
 end