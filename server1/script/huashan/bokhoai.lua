-- Bo Kho�i

function main() 

if (GetTask(169) == 45) then
Talk(3,"q40b1","<color=Red> B� Kho�i<color> : Huynh ��n tr�nh b�o t�i ph�m �?","......tr�nh b�o ......bla....bla....","V�y ng��i mau l�n <color=green>V� Di S�n<color> truy b�t t�n <color=red>��o T�c<color>")
 elseif (GetTask(169) == 47) and (HaveItem(1329) == 1) then
Talk(2,"q40b2", "<color=Red> B� Kho�i<color> :T�t l�m, ng��i �� l�p ���c ��i c�ng khi gi�p   nha m�n ta x� l� t�n t�i ph�m n�y","Vi�c � ��y �� xong, phi�n ng��i quay v� g�i l�i c�a ta ��n ch��ng m�n <color=cyan>Nam Cung Ng�c <color>")
elseif (GetTask(169) == 52)  then
Talk(4,"q50b1","<color=Red> B� Kho�i<color> :Huynh mu�n h�i v� v� c��p � Th�ch C� Tr�n ?" ,"Tri�u ��nh �� giao vi�c n�y cho B� H�nh, nh�ng g�n ��y    binh �ao lo�n l�c, tri�u ��nh �ang lo t�p trung ��i ph�   v�i ng��i Kim � ph�a B�c","Ta c� v�i ng���i b�n tr�n giang h�, theo h� th� vi�c n�y   c� li�n quan ��n b�n b�t h�o � <color=blue>B�ch Th�y ��ng<color>","Ng��i th� �i �i�u tra � <color=blue>B�ch Th�y ��ng<color> xem !") 
elseif (GetTask(169) == 61)  then
Talk(4,"q60b1","<color=Red> B� Kho�i<color> :Huynh ��i l�i ��n v� chuy�n g� n�a ��y ?","<color=Red> B� Kho�i<color> : �, vi�c Ki�m ph� ta c�ng t�ng nghe qua,nh�ng kh�ng nhi�u ng��i bi�t v� tung t�ch c�a n�","Bi�t tung t�ch v� <color=gold>Ki�m Ph�<color> r� nh�t ch� c� th� l� <color=red>C�n L�n l�o Huynh<color>","Ng��i n�n �i <color=yellow>C�n L�n<color> m�t chuy�n !") 

else
Talk(1,"","B�y gi� binh �ao lo�n l�c, c�c h� h�y c�n tr�ng !")
end; 
end

function q40b1() 
SetTask(169,46)
AddNote(" ��n V� Di S�n ��nh b�i Hung T�c 130 181 cho ��n khi l�y ���c ch�ng c� ")
Msg2Player("�� c� s� h�u thu�n c�a Nha M�n,   mau l�n V� Di S�n truy b�t ��o t�c.")
end; 

function q40b2() 
DelItem(1329)
SetTask(169,48)
AddNote("Quay v� b�m b�o cho ch��ng m�n Nam Cung ng�c")
Msg2Player("Quay v� b�m b�o cho ch��ng m�n Nam Cung ng�c")
end;


function q50b1() 
SetTask(169,53)
AddNote("�i B�ch Th�y ��ng , l�n l��t ��nh theo th� t� 3 t�n cho ��n khi nh�n �� 3 v�t ph�m :L�u manh � 193 197, C�n �� 205 209, Tr�m ch� 208 200, sau �� quay v� g�p Ph��ng Th�c Th�c")
Msg2Player("Nh�n ���c tin t�c �i B�ch Th�y    ��ng �i�u tra")
end;

function q60b1() 
SetTask(169,62)
AddNote("��n C�n L�n g�p C�n L�n l�o huynh 197 201 h�i th�m")
Msg2Player("B� kho�i k�u b�n n�n �i C�n L�n 1 chuy�n")
end;

function no() 
end; 
