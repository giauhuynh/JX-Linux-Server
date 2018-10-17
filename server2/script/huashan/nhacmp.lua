-- Nhac Mon Phi
Include("\\script\\dailogsys\\dailogsay.lua")
function main() 
-- dofile("script/huashan/nhacmp.lua");
dialog_main()	
end


function dialog_main()
	local szTitle = "<npc>Ta ��ng ��u <color=gold>Di�n V� Tr��ng<color> ,ch�u tr�ch nhi�m hu�n luy�n �� t� nh�p m�n"
	local tbOpt =
	{
		{"H�i chuy�n", noi},
		{"Tho�t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end





function noi() 
if (GetTask(169) == 10)  then
Say("<color=cyan>Nh�c Minh Phi<color>: Ng��i l� �� t� m�i �, ta c� vi�c n�y giao cho ng��i ��y, n�u l�m t�t s� c� th��ng ?",2,"�� t� r�t s�n s�ng/nhan","Vi�c n�y e l� qu� s�c/no")
elseif (GetTask(169) == 43) then
Talk(3,"q40b1","<color=cyan>Nh�c Minh Phi<color> : ng��i ��n t�m ta c� chuy�n g�? " , " ��ng r�i, ta nghe n�i <color=pink>Ph��ng T� Tuy�t<color> c� n��ng �� g�p m�t chuy�n r�t l�, �ang vui t��i b�ng tr� n�n s� h�i.","Ng��i h�y ��n t�m c� n��ng �y th� xem !")
elseif (GetTask(169) == 12) and (HaveItem(85) == 1) then
Talk(2,"god","Ng��i v�a n�i t�m ���c th� n�y t� c�y th�ng �, ��ng l� kh�ng �n r�i","Mau �i b�m b�o cho s� huynh Nh�c B�t Qu�n")
elseif (GetTask(169) == 16) then
Talk(2,"hth","Ng��i �� b�m b�o vi�c n�y cho s� huynh B�t Qu�n r�i �, t�t!","V�y ng��i �i luy�n ki�m ti�p �i")
elseif (GetTask(169) == 154) and (HaveItem(1341) == 1) then
Talk(2,"q150b1","<color=yellow>Nh�c Minh Phi<color> :...(xem th�)...Qu� th�t ta c�ng c� �  c� ng��i �i tham gia ��i h�i v� l�m... ","Ng��i mang <color=fire>Anh H�ng L�nh<color> n�y cho <color=earth>Ti�p D�n ��i H�i<color> �i, s� ���c v�o thi ��u.")
else 
Talk(1,"","N�u r�nh r�i hay l�n th� luy�n ���ng luy�n ki�m c�ng c�c  s� huynh �i !")	
end
end

function nhan()
SetTask(169,11)
Talk(1,"","Th� n�y, ta �ang c�n v�i <color=yellow>qu� th�ng<color>, ng��i ra sau n�i h�i  cho ta 1 qu�")
Msg2Player("Nh�n nhi�m v� gi�p Nh�c ��i ca �i ra sau n�i h�i th�ng")
AddNote("H�i th�ng � 172 188")
end; 

function god()
--DelItem(85) 
--AddMagic(1349)
--AddMagic(1374)
Msg2Player("Mau �em vi�c n�y b�m b�o cho Nh�c B�t Qu�n")
AddNote("Mau �em vi�c n�y b�m b�o cho Nh�c B�t Qu�n 186 180")
SetTask(169,14)
end; 
function q40b1() 
SetTask(169,44)
AddNote("G�p Ph��ng T� Tuy�t c� n��ng � 170 191")
Msg2Player("C� th� t�m Ph��ng T� Tuy�t c� n��ng  �� �i�u tra th�m")
end;

function hth() 
-- SetRank(83)
AddMagic(1349)
AddMagic(1374)
Msg2Player("Ho�n th�nh nhi�m v�, tr� th�nh Hoa S�n �� t�, luy�n t�p v� c�ng m�i")
AddNote("��t ��n c�p 20 c� th� ��n g�p T� Tuy�t Anh 164 193 nh�n nhi�m v�")
SetTask(169,20)
end; 

function q150b1()
DelItem(1341)
AddEventItem(1340)
SetTask(169,155)
AddNote("��n g�p Ti�p d�n s� gi� �� v�o thi ��u")
Msg2Player("C� ���c l�nh b�i, ��n g�p s� gi� �� tham gia tranh t�i.")
end

function no() 
end; 
