--- An An Co Nuong
function main() 

dialog_main()	
end


function dialog_main()
	local szTitle = "<npc>Nhµ ta cã 2 chŞ em g¸i lµ <color=yellow>B×nh B×nh<color> vµ <color=cyan>An An<color>"
	local tbOpt =
	{
		{"Hái chuyÖn", noi},
		{"Tho¸t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end

Include("\\script\\dailogsys\\dailogsay.lua")

function noi()
if (GetLevel() >= 10) and (GetTask(49) == 0) and (GetCamp() == 4) then
Say("<color=pink>An An C« N­¬ng<color> :<color=gold>Lªnh Hå ca ca<color> cã nhê ta chuyÓn mét bøc th­ cho <color=cyan>NhËm tiÓu th­ <color>, nh­ng hiÖn ta kh«ng thÓ xuèng nói, ng­¬i cã thÓ chuyÓn gióp ta bøc th­ nµy ®­îc kh«ng ?",2,"ViÖc nµy cø ®Ó t¹i h¹/qkd","Th«i c¸o tõ/no")
elseif GetTask(49) == 129 then
Talk(1,"qkd2"," <color=pink>An An C« N­¬ng<color> : §a t¹ huynh ®¹i ®· chuyÓn th­ giïm tiÓu n÷.")
else
Talk(1,""," <color=pink>An An C« N­¬ng<color> : S­ Phô kh«ng cho ta xuèng nói ch¬i n÷a .")
end; 
end
function qkd() 
SetTask(49,109)
AddNote("®Õn gÆp Nh¹c Linh San ë 182 185")
Msg2Player("Th­ ®· bŞ Nh¹c Linh San lÊy mÊt, mau ®i t×m c« Êy ®ßi l¹i")
Talk(1,"","Th­ cña ta bŞ <color=green>Nh¹c Linh San<color> lÊy ®i mÊt råi, mau t×m c« Êy ®ßi l¹i")
end;

function qkd2()
AddRepute(1) 
SetTask(49,139)
Msg2Player("Hoµn thµnh nhiÖm vô , trë thµnh Hoa S¬n kı danh ®Ö tö, danh väng t¨ng 1 ®iÓm")
end;

function no() 
end; 
