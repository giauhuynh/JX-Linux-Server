-- script viet hoa By http://tranhba.com  M�c B�c th�o nguy�n ch�c n�ng th� r�n 
-- script viet hoa By http://tranhba.com  By: li_xin(2005-01-18) 
-- script viet hoa By http://tranhba.com update:zhaowenyi(2005-02-20) gia t�ng m�u t�m c�ng ho�ng kim trang b� ch� t�o 
-- Chu Hoang
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\hotrothem.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")

function main() 
-- dofile("script/huashan/chuh.lua");
if GetTask(169) == 34 then
Talk(2,"q30b1","<color=red>Ch� Ho�ng<color> :Th� ra ��y l� v� ��i hi�p �� gi�p �� ch�u g�i   c�a l�o...","H�y mau b�m b�o vi�c n�y l�n <color=cyan>Nh�c B�t qu�n<color>, l�o s� n�i �� cho ng��i v�i l�i !")
elseif (GetTask(169) >= 10) and (GetTask(169) ~= 34) then
local szTitle = "<npc>Ta c� r�t nhi�u binh kh�, ng��i �ng � m�n n�o ko ?"
	local tbOpt =
	{
		{"Giao d�ch", yes},
		{"Kh�ng"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)

--Say("Ta c� r�t nhi�u binh kh�, ng��i �ng � m�n n�o ko ?",2,"Giao d�ch/yes","Kh�ng/no")
else
Talk(1,"","Ng��i kh�ng ph�i ng��i luy�n ki�m")
 end
end 

function yes()
	Sale(63)
end;

function q30b1() 
SetTask(169,35)
AddNote("��n timg Nh�c B�t Qu�n � 186 180")
Msg2Player("Ch� Ho�ng b�o b�n h�y �i t�m Nh�c B�t Qu�n s� ph�")
end;

function no() 
end; 