-- Con Lon Lao Huynh

function main() 


if (GetTask(169) == 62)  then
Talk(4,"q60b1","<color=gold>C�n L�n L�o Huynh<color> :V� huynh ��i n�y do B� kho�i gi�i thi�u �","<color=gold>C�n L�n L�o Huynh<color> :B�n c�a b� kho�i c�ng t�c l� b�n c�a l�o, huynh ��i mu�n bi�t chuy�n g� ?","...chuy�n v� <color=cyan>Ki�m Ph�<color> b� th�t l�c c�a Hoa Son...","<color=gold>C�n L�n L�o Huynh<color> : 4 t�p c�a <color=cyan>Ki�m Ph�<color> l�n l�� n�m trong tay <color=red>T� ��i ma ��o<color>, nh�m n�y kh�t ti�ng tr�n giang h�, ng��i ph�i c�n th�n !") 
else
Talk(1,"","<color=gold>C�n L�n L�o Huynh<color> :L�o c� 1 ng��i b�n l�m b� ��u � ��i L�, tuy l� ng��i � nha m�n nh�ng y l�i bi�t r�t nhi�u v� giang h�, n�u mu�n bi�t chuy�n tr�n giang h� th� h�y t�i ��i L� g�p y.")
end;
 end; 


function q60b1()
SetTask(169,63)
AddNote("L�n l��t ��ng b�i theo th� t� 4 t�n sau L�o T� � Th�c C��ng S�n 240 184, L�o Tam Tuy�t b�o ��ng t�ng 1 � 191 207, l�o nh� � Long Cung ��ng 193 194, g�p thuy�n phu � Thi�n v��ng �i thanh loa �� ��nh b�o l�o ��i 202 189 cho ��n khi nh�n dc 4 cu�n s�ch ")
Msg2Player("Bi�t ���c manh m�i c�a Ki�m Ph�, l�n l��t �i �o�t v�") 
end; 



function no() 
end; 
