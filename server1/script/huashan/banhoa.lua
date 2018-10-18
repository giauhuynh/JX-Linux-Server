-- script viet hoa By http://tranhba.com  M¹c B¾c th¶o nguyªn chøc n¨ng thî rÌn 
-- script viet hoa By http://tranhba.com  By: li_xin(2005-01-18) 
-- script viet hoa By http://tranhba.com update:zhaowenyi(2005-02-20) gia t¨ng mµu tÝm cïng hoµng kim trang bÞ chÕ t¹o 
-- Lao Ban Hoa

function main() 


if (GetTask(169) == 21) then
Talk(3,"q20b1","<color=cyan>L·o B¸n Hoa<color> :Ng­¬i muèn mua hoa hång cña l·o µ?","Ng­¬i tinh m¾t ®Êy, hoa hång cña l·o lµ ®Ñp nhÊt ë Hoa S¬n nµy, c¸c vÞ c« n­¬ng rÊt thÝch","Nh­ng l·o b¸n hÕt råi, chØ cßn 1 b«ng th«i, nh­ng ph¶i    gióp l·o viÖc nµy th× míi b¸n cho ng­¬i !")
elseif (GetTask(169) == 23) and (HaveItem(76) == 1) then
Talk(2,"q20b2","<color=cyan>L·o B¸n Hoa<color> :Tèt l¾m ! §óng thø l·o ®ang cÇn","<color=pink>Hoa Hång<color> cña ng­¬i ®©y")
else
Talk(1,"","Trªn Hoa S¬n nµy th× Hoa Hång cña l·o lµ ®Ñp nhÊt!")
end
end; 

function q20b1()
Say("<color=cyan>L·o B¸n Hoa<color> :Ch¶ lµ l·o ®ãi, ng­¬i mau ®i tíi <color=violet>Ph­îng     T­êng<color> mua cho ta 1 b×nh r­îu vµ 1 con gµ n­íng, quay vÒ   ®©y l·o sÏ b¸n cho ng­¬i",2,"ChuyÖn nµy kh«ng thµnh VÊn ®Ò/q20yes","Th«i ®­êng ®i xa qu¸/no") 
end;

function q20yes() 
SetTask(169,22)
AddNote("§Õn ph­îng t­êng chñ t¹p hãa mua ®å nh¾m")
Msg2Player("Mau ®Õn Ph­îng T­îng mua ®o nh¾m  cho l·o b¸n hoa")
end; 

function q20b2()
DelItem(76)
DelItem(123)
SetTask(169,24)
AddEventItem(106)
AddNote("Quay vÒ giao hoa cho Tõ c« n­¬ng")
end; 

function no() 
end; 
