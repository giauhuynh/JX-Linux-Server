-- script viet hoa By http://tranhba.com  M¹c B¾c th¶o nguyªn chøc n¨ng thî rÌn 
-- script viet hoa By http://tranhba.com  By: li_xin(2005-01-18) 
-- script viet hoa By http://tranhba.com update:zhaowenyi(2005-02-20) gia t¨ng mµu tÝm cïng hoµng kim trang bÞ chÕ t¹o 
-- Dai De Tu
Include("\\script\\dailogsys\\dailogsay.lua")
function main() 

dialog_main()	
end


function dialog_main()
	local szTitle = "<npc>LuyÖn KiÕm th­êng xuyªn sÏ mau ®¹t ®Õn c¶nh giíi !"
	local tbOpt =
	{
		{"Hái chuyÖn", noi},
		{"Tho¸t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end


function noi()
if (GetTask(169) == 31) or (GetTask(169) == 32) then
Say("<color=cyan>§¹i §Ö Tö<color> :Ng­¬i muèn vµo <color=yellow>DiÔn Vâ Tr­êng<color> ®Ó luyÖn vâ µ ?",2,"V©ng, xin cho ®Ö tö vµo/q20b2","ChØ t×nh cê ghÐ qua/no")
elseif (GetTask(169) < 20) then
Talk(1,"","N¬i ®©y lµ <color=yellow>DiÔn Vâ Tr­êng<color> , n¬i c¸c ®Ö tö luyÖn tËp h»ng  ngµy.")
else
Talk(1,"","C¸c h¹ ghÐ th¨m <color=blue>Hoa S¬n<color> ta µ, thËt lµ ®¸ng quý...")
 end; 

 end; 

function q20b2() 
SetPos(187*8+1,187*16)
SetTask(169,32)
Talk(1,"","Mau d¹y cho tªn ®Ö tö h¸o s¾c kia mét bµi häc !")
Msg2Player("Vµo ®Õn DiÔn vâ Tr­êng, mau d¹y cho tªn ®Ö tö kia mét bµi häc")
AddNote("§¸nh b¹i tªn ®Ö tö ë 187 186")
SetFightState(1); 
--SetPos(187*8+1,187*16)
end; 




function no() 
end; 
