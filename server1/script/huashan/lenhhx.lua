-- Lenh Ho Xung

function main() 
-- dofile("script/huashan/lenhhx.lua");
dialog_main()	
end

function dialog_main()
	local szTitle = "<npc>V� huynh �� n�y t�m L�nh m� c� h� l�   vi�c g� quan tr�ng ?"
	local tbOpt =
	{
		{"H�i chuy�n", noi},
		{"Tho�t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end

Include("\\script\\dailogsys\\dailogsay.lua")

function noi()
if (GetTask(169) == 91) then
Talk(2,"q90b1","<color=green>L�nh H� Xung<color> : V� huynh �� n�y c�ng th�y ���c s� b�t th��ng c�a <color=red>Nh�c s� ph�<color> sao ?","<color=green>L�nh H� Xung<color> : Vi�c n�y ��ng l� kh�ng c�n ��n gi�n n�a, ta ngh� ch�ng ta n�n t�i th�m h�i <color=red>Nh�c s� ph�<color> 1 chuy�n .")
--elseif  --(GetTask(169) == 151) then
elseif (GetTask(169) == 151) then
Talk(2,"q150b1","<color=green>L�nh H� Xung<color> : Ch��ng m�n <color=cyan>Nam Cung Ng�c<color> c� nh� ta giao <color=gold>Anh H�ng Thi�p<color> cho ph�i V� �ang .","<color=green>L�nh H� Xung<color> : Ng��i gi�p ta chuy�n n�y ���c kh�ng ?")
else
Talk(1,"","<color=green>L�nh H� Xung<color> : C�c h� c� th�y <color=cyan>Nh�m c� n��ng<color> kh�ng ?")
end
end

function q90b1() 
SetTask(169,92)
AddNote("��n g�p nh�c b�t qu�n h�i th�m 186 180")
Msg2Player("Quy�t ��nh ��n Nh�c B�t Qu�n xem th�c h� th� n�o")
end; 

function q150b1()
Say("<color=green>L�nh H� Xung<color> :L�n n�i V� �ang gi�p ta 1 chuy�n , �   huynh �� ra sao ?",2,
	"T�i h� l�p t�c �i ngay/q150b2",
	"T�i h� b�n �i k� vi�n r�i pa/no")
--SetTask(169,92)
--AddNote("��n g�p nh�c b�t qu�n h�i th�m 186 180")
--Msg2Player("Quy�t ��nh ��n Nh�c B�t Qu�n xem th�c h� th� n�o")
end; 

function q150b2() 
AddEventItem(1339)
SetTask(169,152)
AddNote("L�n V� �ang t�m ��o Nh�t Ch�n Nh�n")
Msg2Player("Nh�n ���c Anh H�ng Thi�p, mau l�n V� �ang ��a th�")
end; 

function no() 
end; 
