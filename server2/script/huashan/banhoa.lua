-- script viet hoa By http://tranhba.com  M�c B�c th�o nguy�n ch�c n�ng th� r�n 
-- script viet hoa By http://tranhba.com  By: li_xin(2005-01-18) 
-- script viet hoa By http://tranhba.com update:zhaowenyi(2005-02-20) gia t�ng m�u t�m c�ng ho�ng kim trang b� ch� t�o 
-- Lao Ban Hoa

function main() 


if (GetTask(169) == 21) then
Talk(3,"q20b1","<color=cyan>L�o B�n Hoa<color> :Ng��i mu�n mua hoa h�ng c�a l�o �?","Ng��i tinh m�t ��y, hoa h�ng c�a l�o l� ��p nh�t � Hoa S�n n�y, c�c v� c� n��ng r�t th�ch","Nh�ng l�o b�n h�t r�i, ch� c�n 1 b�ng th�i, nh�ng ph�i    gi�p l�o vi�c n�y th� m�i b�n cho ng��i !")
elseif (GetTask(169) == 23) and (HaveItem(76) == 1) then
Talk(2,"q20b2","<color=cyan>L�o B�n Hoa<color> :T�t l�m ! ��ng th� l�o �ang c�n","<color=pink>Hoa H�ng<color> c�a ng��i ��y")
else
Talk(1,"","Tr�n Hoa S�n n�y th� Hoa H�ng c�a l�o l� ��p nh�t!")
end
end; 

function q20b1()
Say("<color=cyan>L�o B�n Hoa<color> :Ch� l� l�o ��i, ng��i mau �i t�i <color=violet>Ph��ng     T��ng<color> mua cho ta 1 b�nh r��u v� 1 con g� n��ng, quay v�   ��y l�o s� b�n cho ng��i",2,"Chuy�n n�y kh�ng th�nh V�n ��/q20yes","Th�i ���ng �i xa qu�/no") 
end;

function q20yes() 
SetTask(169,22)
AddNote("��n ph��ng t��ng ch� t�p h�a mua �� nh�m")
Msg2Player("Mau ��n Ph��ng T��ng mua �o nh�m  cho l�o b�n hoa")
end; 

function q20b2()
DelItem(76)
DelItem(123)
SetTask(169,24)
AddEventItem(106)
AddNote("Quay v� giao hoa cho T� c� n��ng")
end; 

function no() 
end; 
