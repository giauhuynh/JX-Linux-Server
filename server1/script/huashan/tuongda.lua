-- Tuong Da

function main() 
-- dofile("script/huashan/tuongda.lua");

if (GetTask(169) == 95) or (GetTask(169) == 96)  then
Say("Nh�c s� ph� �i ��n ��y th� bi�n m�t... � th� ra sau t��ng �� n�y c�n c� 1 <color=red>c� quan<color> b� m�t...",2,"V�o c� quan/vao","Th�i nguy hi�m l�m/no")
else
Talk(1,"","B�c t��ng �� n�y qu� th�t r�t ��p")
end
end
 

function vao() 
Msg2Player("Mau ��nh b�i Nh�c B�t Qu�n")
SetTask(169,96)
SetFightState(1);
NewWorld(2,306*8-2,252*16-2);
end; 



function no() 
end; 
