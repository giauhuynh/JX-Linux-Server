-- script viet hoa By http://tranhba.com  M�c B�c th�o nguy�n ch�c n�ng th� r�n 
-- script viet hoa By http://tranhba.com  By: li_xin(2005-01-18) 
-- script viet hoa By http://tranhba.com update:zhaowenyi(2005-02-20) gia t�ng m�u t�m c�ng ho�ng kim trang b� ch� t�o 
-- Nguoi
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\hotrothem.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")

function main() 
-- dofile("script/huashan/tumo.lua");
if (GetTask(169) >= 10)  then
local szTitle = "<npc>Ta r�t nhi�u thu�c tr� th��ng, ng��i c� c�n   m�t �t kh�ng ?"
	local tbOpt =
	{
		{"Giao d�ch", yes},
		{"Kh�ng"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)

--Say("Ta r�t nhi�u thu�c tr� th��ng, ng��i c� c�n m�t �t kh�ng?",2,"Giao d�ch/yes","Kh�ng/no")
else
Talk(1,"","Ng��i kh�ng ph�i ng��i luy�n ki�m Hoa S�n")
 end
end 

function yes()
	Sale(74)
end;


function no() 
end; 




