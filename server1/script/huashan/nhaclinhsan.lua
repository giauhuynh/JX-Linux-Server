-- Nhac Linh san
Include("\\script\\global\\repute_head.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
function main() 

dialog_main()	
end


function dialog_main()
	local szTitle = "<npc>Ng��i c� th�y n�i <color=green>Hoa S�n<color> n�y ��p     kh�ng ?"
	local tbOpt =
	{
		{"H�i chuy�n", noi},
		{"Tho�t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end

--Include("\\script\\dailogsys\\dailogsay.lua")

function noi()
if (GetTask(169) == 40) and (GetLevel() >= 40)  then
Say("<color=cyan>Nh�c Linh San<color>: Cha ta v�n �ang �au ��u v� v� �n <color=red>��u Ng��i<color> tr�n c�y th�ng, c�c �� t� �� �i �i�u tra kh�p Hoa S�n m� kh�ng t�m ���c manh m�i...Th�t l� kh� ngh� !",2,"T�i h� mu�n th� s�c vi�c n�y/q40b1","C�o t�/no")
elseif (GetTask(49) == 109) then
Talk(1,"qkd","<color=cyan>Nh�c Linh San<color>: Ng��i ��n l�y l�i b�c th� �, n�u tr� l�i ��ng c�u h�i c�a ta ,ta m�i ��a ")
elseif (GetTask(49) == 139) and (GetLevel() >= 90)  and  (GetCamp() == 4) and (GetReputeLevel(GetRepute()) >= 5) and (GetTask(169) <= 90)  then
Say("<color=cyan>Nh�c Linh San<color>: D�o g�n ��y ta th�y cha ta c� nh�ng bi�u hi�n r�t l�, ng��i tr�n giang h� l�n trong m�n ph�i ��u x� x�o b�n t�n , th�t s� ta r�t lo !",2,"�� t�i h� gi�p l�m r� vi�c n�y/q90b1","C�o t�/no")
else
Talk(1,"","<color=cyan>Nh�c Linh San<color> : Ta th�t s� r�t qu� m�n L�nh H� huynh .")
end
 end; 


function q40b1() 
Talk(2,"","<color=cyan>Nh�c Linh San<color> : N�u nh� huynh ��i c� th� gi�p 1 tay th� t�t qu� !","Hy v�ng huynh s� t�m ���c manh m�i")
SetTask(169,41)
AddNote("��n G�p Ch��ng m�n Nam Cung Ng�c � 178 191")
Msg2Player("Nh�n nhi�m v� �i �i�u tra v� v� �n ��u Ng��i")
end
function qkd()
Say("<color=cyan>Nh�c Linh San<color>: �� ng��i bi�t ch��ng m�n ph�i Hoa S�n hi�n t�i l� ai?",3,"Nh�c B�t Qu�n/no2","Nam Cung Nguy�t/no2","Nam Cung Ng�c/cau2") 
end;

function cau2() 
Say("<color=cyan>Nh�c Linh San<color>: L�nh H� Xung n�i ti�ng v�i tuy�t k� n�o ?",3,"��c C� C�u Ki�m/cau3","H�p Tinh ��i Ph�p/no2","T�ch T� Ki�m Ph�/no2") 
end; 

function cau3() 
Say("<color=cyan>Nh�c Linh San<color>: ��ng Ph��ng B�t B�i luy�n v� c�ng g� m� th�nh ra b�n nam , b�n n�",3,"Di H�n C�ng/no2","Qu� Hoa B�o �i�n/dung","T�ch T� Ki�m Ph�/no2") 
end;
function dung()
Msg2Player("Nh�n ���c th�, mau mang cho Nh�m Doanh Doanh")
AddNote("L�n ���ng m�n ch�nh ph�ng g�p Nh�m Doanh Doanh")
SetTask(49,119)
AddEventItem(1338)
Talk(1,"","Huynh ��i qu� th�t th�ng minh t�i tr�, ti�u n� xin giao l�i b�c th� cho ng��i") 
end; 
function no2() 
Talk(1,"","Tr� l�i <color=red>sai<color> r�i !")
end; 

function q90b1() 
SetTask(169,91)
AddNote("��n t�m L�nh H� Xung � 176 189")
Msg2Player("Nh�n nhi�m v� �i �i�u tra v� s� b�t th��ng c�a Nh�c B�t Qu�n")
end; 

function no() 
end; 
