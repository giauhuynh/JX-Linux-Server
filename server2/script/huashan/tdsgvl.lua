-- Tiep Dan Dai Hoi
Include("\\script\\dailogsys\\dailogsay.lua")
function main() 
-- dofile("script/huashan/tdsgvl.lua");
dialog_main()	
end


function dialog_main()
	local szTitle = "<npc><color=green>       \nV� l�m suy t�n anh h�ng h�i   \n\Giang h� lo�n lo�t xu�t Thi�n Long.<color>"
	local tbOpt =
	{
		{"Ti�p chuy�n", noi},
		{"Tho�t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end


function noi() 
if (GetTask(169) == 155) or (GetTask(169) == 156)   then
Say("<color=pink>Ti�p d�n ��i H�i V� L�m<color>: Th� ra l� <color=cyan>"..GetName().."<color> huynh   ��i, ti�u n� nghe c�c huynh �� n�i v� ng��i �� l�u, h�m nay m�i ���c g�p m�t. Huynh mu�n tham gia Ng� Long Tranh Ch�u �? ",2,"Ch�nh l� vi�c ��/tchien","Ch� l� ti�n ���ng gh� qua, c�o t�/no")
elseif (GetTask(169) >= 157) and (GetTask(169) <= 160) then
Say("<color=pink>Ti�p d�n ��i H�i V� L�m<color>: Tr�n tr��c ��i hi�p �� thua, tr�n n�y c� mu�n ��nh l�i kh�ng  ",2,"Ta mu�n th� s�c l�n n�a/tchien","V�y hoy �i nha/no")
else 
Talk(1,"","Tr�n d��i <color=cyan>Hoa S�n<color> h�m nay r�t n�o nhi�t,��ng ��o v� l�m ��u t� t�p v� ��y tham gia ��i h�i!")	
end
end

function tchien()
SetFightState(1)
SetTask(169,156)
Msg2Player("H�y ��nh b�i to�n b� ��i th�")
AddNote("H�y ��nh b�i to�n b� ��i th�")
Talk(1,"gogo","<color=red>Ph�a tr��c r�t nguy hi�m , b�o tr�ng<color>!")
end; 

function gogo()
Msg2Player("TI�U DI�T TO�N B� ��I TH�")
AddNote("TI�U DI�T TO�N B� ��I TH�")
NewWorld(300,196*8-4,206*16+3)
end; 



function no() 
end; 
