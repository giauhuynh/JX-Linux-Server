-- script viet hoa By http://tranhba.com  M�c B�c th�o nguy�n ch�c n�ng th� r�n 
-- script viet hoa By http://tranhba.com  By: li_xin(2005-01-18) 
-- script viet hoa By http://tranhba.com update:zhaowenyi(2005-02-20) gia t�ng m�u t�m c�ng ho�ng kim trang b� ch� t�o 
-- Cay Thong
Include("\\script\\dailogsys\\dailogsay.lua")
function main() 

if (GetTask(169) == 11) then
 if(random(0,99) < 30) then 
Msg2Player("B�n ph�t hi�n 1 v�t v� c�ng gh� r�n t�i ra t� c�y th�ng...") 
AddNote("Quay v� g�p nh�c minh phi")
AddEventItem(85)
SetTask(169,12)
Talk(1,"","B�n ph�t hi�n 1 c�i <color=red>��u Ng��i<color> r�i ra t� qu� th�ng, ph�i b�m b�o vi�c n�y cho Nh�c Minh Phi")
  else
 Msg2Player("Ch�a h�i ���c qu� th�ng n�o")
  end
else 
local szTitle = "<npc>Ch� l� 1 c�y th�ng b�nh th��ng"
	local tbOpt =
	{
		{"Mau �i th�i"}
	}
	
	CreateNewSayEx(szTitle, tbOpt)
	
end


Include("\\script\\dailogsys\\dailogsay.lua")

function noi()
--Talk(1,"","Ch� l� 1 c�y th�ng b�nh th��ng")
end
 end 




function no() 
end; 
