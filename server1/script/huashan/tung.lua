-- script viet hoa By http://tranhba.com  M¹c B¾c th¶o nguyªn chøc n¨ng thî rÌn 
-- script viet hoa By http://tranhba.com  By: li_xin(2005-01-18) 
-- script viet hoa By http://tranhba.com update:zhaowenyi(2005-02-20) gia t¨ng mµu tİm cïng hoµng kim trang bŞ chÕ t¹o 
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
local szTitle = "<npc>Ta rÊt nhiÒu thuèc trŞ th­¬ng, ng­¬i cã cÇn   mét İt kh«ng ?"
	local tbOpt =
	{
		{"Giao dŞch", yes},
		{"Kh«ng"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)

--Say("Ta rÊt nhiÒu thuèc trŞ th­¬ng, ng­¬i cã cÇn mét İt kh«ng?",2,"Giao dŞch/yes","Kh«ng/no")
else
Talk(1,"","Ng­¬i kh«ng ph¸i ng­¬i luyÖn kiÕm Hoa S¬n")
 end
end 

function yes()
	Sale(74)
end;


function no() 
end; 




