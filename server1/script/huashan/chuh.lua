-- script viet hoa By http://tranhba.com  M¹c B¾c th¶o nguyªn chøc n¨ng thî rÌn 
-- script viet hoa By http://tranhba.com  By: li_xin(2005-01-18) 
-- script viet hoa By http://tranhba.com update:zhaowenyi(2005-02-20) gia t¨ng mµu tÝm cïng hoµng kim trang bÞ chÕ t¹o 
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
Talk(2,"q30b1","<color=red>Chó Hoµng<color> :Th× ra ®©y lµ vÞ ®¹i hiÖp ®· gióp ®ì ch¸u g¸i   cña l·o...","H·y mau bÈm b¸o viÖc nµy lªn <color=cyan>Nh¹c BÊt quÇn<color>, l·o sÏ nãi ®ì cho ng­¬i vµi lêi !")
elseif (GetTask(169) >= 10) and (GetTask(169) ~= 34) then
local szTitle = "<npc>Ta cã rÊt nhiÒu binh khÝ, ng­¬i ­ng ý mãn nµo ko ?"
	local tbOpt =
	{
		{"Giao dÞch", yes},
		{"Kh«ng"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)

--Say("Ta cã rÊt nhiÒu binh khÝ, ng­¬i ­ng ý mãn nµo ko ?",2,"Giao dÞch/yes","Kh«ng/no")
else
Talk(1,"","Ng­¬i kh«ng ph¸i ng­¬i luyÖn kiÕm")
 end
end 

function yes()
	Sale(63)
end;

function q30b1() 
SetTask(169,35)
AddNote("§Õn timg Nh¹c BÊt QuÇn ë 186 180")
Msg2Player("Chó Hoµng b¶o b¹n h·y ®i t×m Nh¹c BÊt QuÇn s­ phô")
end;

function no() 
end; 