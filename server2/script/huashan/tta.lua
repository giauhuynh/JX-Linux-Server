-- script viet hoa By http://tranhba.com  M¹c B¾c th¶o nguyªn chøc n¨ng thî rÌn 
-- script viet hoa By http://tranhba.com  By: li_xin(2005-01-18) 
-- script viet hoa By http://tranhba.com update:zhaowenyi(2005-02-20) gia t¨ng mµu tİm cïng hoµng kim trang bŞ chÕ t¹o 
-- Tu Tuyet Anh

function main() 

dialog_main()	
end


function dialog_main()
	local szTitle = "<npc>Phiªn b¶n ph¸i <color=gold>Hoa S¬n<color>"
	local tbOpt =
	{
		{"Hái chuyÖn", noi},
		{"Tho¸t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end

Include("\\script\\dailogsys\\dailogsay.lua")

function noi()
if (GetLevel() >=20) and (GetTask(169) == 20) then
Say("<color=cyan>Tõ TuyÕt Anh<color> :Ta rÊt thİch <color=pink>Hoa Hång<color>, ®Æc biÖt lµ gièng   hoa <color=pink>Hoa Hång<color> trªn Hoa S¬n C¶nh Tr­êng Kü, vŞ c¸c h¹ nµy cã thÓ h¸i tÆng cho ta 1 b«ng ®­îc kh«ng ?",2,"RÊt vui lßng tÆng Mü nh©n/q20b1","Th«i xin c¸o tõ/no")
elseif (GetTask(169) < 20) then
Talk(1,"","<color=cyan>Tõ TuyÕt Anh<color> :Quanh hå nµy ta nu«i rÊt nhiÒu c¸...")
elseif (GetTask(169) == 24) and (HaveItem(106) == 1) then
Talk(2,"q20b2","<color=cyan>Tõ TuyÕt Anh<color> :¤i ®óng lµ lo¹i <color=pink>Hoa Hång<color> ta thİch nhÊt råi, ®a t¹ vŞ huynh ®µi nµy", "¤ng cña lµ <color=Green>Hoa S¬n L·o Gia<color> muèn gÆp huynh ®Êy !","<color=pink>Ph­¬ng Tõ TuyÕt<color> :Nh­ng iÓu n÷ e lµ huynh sÏ bŞ s­ phô tr¸ch ph¹t","<color=pink>Ph­¬ng Tõ TuyÕt<color> :Huynh mau ®i timg chó Hoµng ®i, cã thÓ sÏ gióp ®­îc viÖc nµy")
else
Talk(1,"","Hå sen nµy lµ do 1 tay b¶n c« n­¬ng ch¨m sãc ®Êy !")

end
end; 

function q20b1() 
SetTask(169,21)
Talk(1,"","VËy th× nhê huynh ...")
AddNote("Lªn Hoa S¬n c¶nh tr­êng kü gÆp l·o b¸n hoa ë 290 236")
Msg2Player("NhËn nhiÖm vô gióp TuyÕt Anh c« n­¬ng ®i lÊy vÒ 1 b«ng hoa hång")
end; 


function q20b2() 
DelItem(106)
SetTask(169,25)
Msg2Player("TÆng hoa hång cho Tõ TuyÕt")
Msg2Player("C« Êy b¶o b¹n h·y mau ®Õn Thiªn §« V©n Hîp t×m l·o l·o")
AddNote("§Õn 171 182 Hoa S¬n ph¸i t×m Nam Cung l·o gia")
end; 


function no() 
end; 
