function OnDeath () 
-- dofile("script/huashan/boss150k5.lua");
if (GetTask(169) == 160) then
SetTask(169,161)
Msg2Player("��nh b�i ���c cao th� Nga My, mang vinh d� v� cho Hoa S�n") 
Talk(4,"move","Ng��i �� ��nh b�i cao th� c�a <color=water>Nga My<color>","<color=gold>Ch� c�n 1 tr�n chi�n cu�i c�ng tr��c m�t !<color>","<color=cyan>H�y h�i sinh l�c v� n�i l�c, ��i th� l� 1 v� th�n t�ng c�a Thi�u L�m<color>","<color=red>CHI�N TH�I !<color>")
 end
 end
 function move()
 NewWorld(457,201*8-8,200*16-3)
 SetFightState(1)
 end