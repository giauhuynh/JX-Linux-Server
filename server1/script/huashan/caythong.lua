-- script viet hoa By http://tranhba.com  M¹c B¾c th¶o nguyªn chøc n¨ng thî rÌn 
-- script viet hoa By http://tranhba.com  By: li_xin(2005-01-18) 
-- script viet hoa By http://tranhba.com update:zhaowenyi(2005-02-20) gia t¨ng mµu tÝm cïng hoµng kim trang bÞ chÕ t¹o 
-- Cay Thong
Include("\\script\\dailogsys\\dailogsay.lua")
function main() 

if (GetTask(169) == 11) then
 if(random(0,99) < 30) then 
Msg2Player("B¹n ph¸t hiÖn 1 vËt v« cïng ghª rîn t¬i ra tõ c©y th«ng...") 
AddNote("Quay vÒ gÆp nh¹c minh phi")
AddEventItem(85)
SetTask(169,12)
Talk(1,"","B¹n ph¸t hiÖn 1 c¸i <color=red>§Çu Ng­¬i<color> r¬i ra tõ qu¶ th«ng, ph¶i bÈm b¸o viÖc nµy cho Nh¹c Minh Phi")
  else
 Msg2Player("Ch­a h¸i ®­îc qu¶ th«ng nµo")
  end
else 
local szTitle = "<npc>ChØ lµ 1 c©y th«ng b×nh th­êng"
	local tbOpt =
	{
		{"Mau ®i th«i"}
	}
	
	CreateNewSayEx(szTitle, tbOpt)
	
end


Include("\\script\\dailogsys\\dailogsay.lua")

function noi()
--Talk(1,"","ChØ lµ 1 c©y th«ng b×nh th­êng")
end
 end 




function no() 
end; 
