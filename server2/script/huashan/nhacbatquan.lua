-- NHAC BAT QUAN

function main() 


if (GetTask(169) == 14) and (HaveItem(85) == 1)  then
Say("<color=red>Nh�c B�t Qu�n<color>: Nghe n�i ng��i c� vi�c t�m ta?",2,"�� t� c� vi�c c�n b�m b�o/nhan","Th�i kh�ng c� g� ��u �/no")
elseif (GetTask(169) == 35) then
Talk(3,"q30b1","<color=red>Nh�c B�t Qu�n<color> : C� ph�i ng��i l� k� �� ��nh �� t� luy�n   ki�m kh�ng?" ," <color=cyan>L�i c�a Ch� Ho�ng<color> : Nh�c s� ph� �, vi�c n�y th�c ra l� ....bla bla bla.....","<color=red>Nh�c B�t Qu�n<color> : Ra l� v�y ! Ng��i x�ng ��ng ���c khen     th��ng v� l�ng ngh�a hi�p .")
elseif (GetTask(169) == 92) then
Talk(3,"q90b1","<color=red>Nh�c B�t Qu�n<color> : Ng��i ��n t�m s� ph� c� vi�c g� kh�ng" ,"T�i h� ��n th�nh an s� ph�, ..........","...bi�u hi�n...bi�u hi�n...Nh�c s� ph� ��ng l� c� nh�ng bi�u hi�n kh�ng h� b�nh th��ng.....")
elseif GetTask(169) == 94 then
Talk(3,"q90b2","<color=red>Nh�c B�t Qu�n<color> Ng��i mu�n h�i ta �i�u g� ?","<color=red>Nh�c B�t Qu�n<color> : B�y gi� ta c� vi�c ph�i �i !","<color=red>Nh�c B�t Qu�n<color> : Khi n�o r�nh r�i ta s� n�i chuy�n n�y")
elseif GetTask(169) == 97 then
Talk(3,"q90b3","<color=red>Nh�c B�t Qu�n<color> Ta v� c�ng kh�ng b�ng ng��i, c�n mu�n n�i g� n�a","S� ph� h�y giao ra <color=Gold>T�ch T� Ki�m Ph�<color>","<color=red>Nh�c B�t Qu�n<color> : c�m l�y v� bi�n �i !")
else
Talk(1,"","Ta ch� c� m�t ��a con g�i duy nh�t l� Linh San th�i, nh�ng c�ng l�n n� c�ng kh� b�o, th�t l�... ")
 
end
end 


function nhan() 
Talk(3,"god","B�m b�o :..........bla..bla...........","<color=red>Nh�c B�t Qu�n<color> :���c r�i ,vi�c n�y ta s� ph�i c�c �� t� �i �i�u tra","Ng��i m�u tr� v� b�o v�i M�n Phi")
end; 

function q30b1() 
SetTask(169,40)
-- SetRank(84)
AddMagic(1351)
AddMagic(1376)
AddNote("C�p 40 c� th� ��n g�p Nh�c Linh San 182 185 nh�n nhi�m v�")
Msg2Player("���c Nh�c s� ph� ti�n c� l�n h�m  �� t�, h�c ���c v� c�ng Kim Nh�n Ho�nh Kh�ng   v� Long Huy�n Ki�m Kh�")
end; 

function god() 
DelItem(85)
SetTask(169,16)
Msg2Player("Mau tr� v� b�o cho M�n Phi bi�t")
end;
 
function q90b1() 
SetTask(169,93)
AddNote("T�m g�p nh�m doanh doanh � ���ng m�n ph�ng ch�nh 200 201")
Msg2Player("Nh�n th�y nh�ng bi�u hi�n b�t th��ng c�a Nh�c B�t Qu�n, ti�p t�c �i�u tra th�m")
end;

function q90b2() 
SetTask(169,95)
AddNote("��n t��ng �� ph�a sau NH�c B�t Qu�n 186 178, �i v�o m�t ��o, ��nh b�o h�n")
Msg2Player("Nh�c B�t Qu�n b�o xu�ng n�i c� vi�c, b�n nghi ng� n�n b�m theo �ng ta")
end;

function q90b3() 
AddEventItem(1327)
SetTask(169,98)
AddNote("Mang t�ch t� ki�m ph� giao cho Nam Cung l�o gia")
Msg2Player("Mang t�ch t� ki�m ph� giao cho Nam Cung l�o gia")
end;

function no() 
end; 
