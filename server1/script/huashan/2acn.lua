--- An An Co Nuong
function main() 

dialog_main()	
end


function dialog_main()
	local szTitle = "<npc>Nh� ta c� 2 ch� em g�i l� <color=yellow>B�nh B�nh<color> v� <color=cyan>An An<color>"
	local tbOpt =
	{
		{"H�i chuy�n", noi},
		{"Tho�t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end

Include("\\script\\dailogsys\\dailogsay.lua")

function noi()
if (GetLevel() >= 10) and (GetTask(49) == 0) and (GetCamp() == 4) then
Say("<color=pink>An An C� N��ng<color> :<color=gold>L�nh H� ca ca<color> c� nh� ta chuy�n m�t b�c th� cho <color=cyan>Nh�m ti�u th� <color>, nh�ng hi�n ta kh�ng th� xu�ng n�i, ng��i c� th� chuy�n gi�p ta b�c th� n�y ���c kh�ng ?",2,"Vi�c n�y c� �� t�i h�/qkd","Th�i c�o t�/no")
elseif GetTask(49) == 129 then
Talk(1,"qkd2"," <color=pink>An An C� N��ng<color> : �a t� huynh ��i �� chuy�n th� gi�m ti�u n�.")
else
Talk(1,""," <color=pink>An An C� N��ng<color> : S� Ph� kh�ng cho ta xu�ng n�i ch�i n�a .")
end; 
end
function qkd() 
SetTask(49,109)
AddNote("��n g�p Nh�c Linh San � 182 185")
Msg2Player("Th� �� b� Nh�c Linh San l�y m�t, mau �i t�m c� �y ��i l�i")
Talk(1,"","Th� c�a ta b� <color=green>Nh�c Linh San<color> l�y �i m�t r�i, mau t�m c� �y ��i l�i")
end;

function qkd2()
AddRepute(1) 
SetTask(49,139)
Msg2Player("Ho�n th�nh nhi�m v� , tr� th�nh Hoa S�n k� danh �� t�, danh v�ng t�ng 1 �i�m")
end;

function no() 
end; 
