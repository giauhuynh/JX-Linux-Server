function OnDeath () 
-- dofile("script/huashan/boss150k5.lua");
if (GetTask(169) == 161) then
SetTask(169,180)
Msg2Player("��nh b�i ���c cao t�ng Thi�u L�m, mang vinh d� v� cho Hoa S�n") 
Talk(3,"move","<color=metal>Th�nh Kh�n<color> :V� thi�u hi�p <color=green>"..GetName().."<color> tuy tuoir c�n tr� nh�ng v� c�ng h�n ng��i","<color=gold>L�o phu qu� th�t kh�m ph�c<color>","<color=cyan>��i S� qu� khen, c�ng l� do ng�i �� nh��ng ti�u b�i<color>")
 end
 end
 function move()
 AddNote("Quay v� g�p Nam Cung L�o Gia")
 Msg2Player("Quay v� g�p Nam Cung L�o Gia") 
 NewWorld(333,167*8+3,197*16-3)
 SetFightState(0)
 end