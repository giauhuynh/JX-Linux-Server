-- script viet hoa By http://tranhba.com  M�c B�c th�o nguy�n ch�c n�ng th� r�n 
-- script viet hoa By http://tranhba.com  By: li_xin(2005-01-18) 
-- script viet hoa By http://tranhba.com update:zhaowenyi(2005-02-20) gia t�ng m�u t�m c�ng ho�ng kim trang b� ch� t�o 
-- Dai De Tu
Include("\\script\\dailogsys\\dailogsay.lua")
function main() 

dialog_main()	
end


function dialog_main()
	local szTitle = "<npc>Luy�n Ki�m th��ng xuy�n s� mau ��t ��n c�nh gi�i !"
	local tbOpt =
	{
		{"H�i chuy�n", noi},
		{"Tho�t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end


function noi()
if (GetTask(169) == 31) or (GetTask(169) == 32) then
Say("<color=cyan>��i �� T�<color> :Ng��i mu�n v�o <color=yellow>Di�n V� Tr��ng<color> �� luy�n v� � ?",2,"V�ng, xin cho �� t� v�o/q20b2","Ch� t�nh c� gh� qua/no")
elseif (GetTask(169) < 20) then
Talk(1,"","N�i ��y l� <color=yellow>Di�n V� Tr��ng<color> , n�i c�c �� t� luy�n t�p h�ng  ng�y.")
else
Talk(1,"","C�c h� gh� th�m <color=blue>Hoa S�n<color> ta �, th�t l� ��ng qu�...")
 end; 

 end; 

function q20b2() 
SetPos(187*8+1,187*16)
SetTask(169,32)
Talk(1,"","Mau d�y cho t�n �� t� h�o s�c kia m�t b�i h�c !")
Msg2Player("V�o ��n Di�n v� Tr��ng, mau d�y cho t�n �� t� kia m�t b�i h�c")
AddNote("��nh b�i t�n �� t� � 187 186")
SetFightState(1); 
--SetPos(187*8+1,187*16)
end; 




function no() 
end; 
