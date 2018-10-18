-- Nhac Linh san
Include("\\script\\global\\repute_head.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
function main() 

dialog_main()	
end


function dialog_main()
	local szTitle = "<npc>Ng­¬i cã thÊy nói <color=green>Hoa S¬n<color> nµy ®Ñp     kh«ng ?"
	local tbOpt =
	{
		{"Hái chuyÖn", noi},
		{"Tho¸t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end

--Include("\\script\\dailogsys\\dailogsay.lua")

function noi()
if (GetTask(169) == 40) and (GetLevel() >= 40)  then
Say("<color=cyan>Nh¹c Linh San<color>: Cha ta vÉn ®ang ®au ®Çu vÒ vô ¸n <color=red>§Çu Ng­êi<color> trªn c©y th«ng, c¸c ®Ö tö ®· ®i ®iÒu tra kh¾p Hoa S¬n mµ kh«ng t×m ®­îc manh mèi...ThËt lµ khã nghÜ !",2,"T¹i h¹ muèn thö søc viÖc nµy/q40b1","C¸o tõ/no")
elseif (GetTask(49) == 109) then
Talk(1,"qkd","<color=cyan>Nh¹c Linh San<color>: Ng­¬i ®Õn lÊy l¹i bøc th­ µ, nÕu tr¶ lêi ®óng c©u hái cña ta ,ta míi ®­a ")
elseif (GetTask(49) == 139) and (GetLevel() >= 90)  and  (GetCamp() == 4) and (GetReputeLevel(GetRepute()) >= 5) and (GetTask(169) <= 90)  then
Say("<color=cyan>Nh¹c Linh San<color>: D¹o gÇn ®©y ta thÊy cha ta cã nh÷ng biÓu hiÖn rÊt l¹, ng­êi trªn giang hå lÉn trong m«n ph¸i ®Òu x× xµo bµn t¸n , thËt sù ta rÊt lo !",2,"§Ó t¹i h¹ gióp lµm râ viÖc nµy/q90b1","C¸o tõ/no")
else
Talk(1,"","<color=cyan>Nh¹c Linh San<color> : Ta thËt sù rÊt quı mÕn LÖnh Hå huynh .")
end
 end; 


function q40b1() 
Talk(2,"","<color=cyan>Nh¹c Linh San<color> : NÕu nh­ huynh ®µi cã thÓ gióp 1 tay th× tèt qu¸ !","Hy väng huynh sÏ t×m ®­îc manh mèi")
SetTask(169,41)
AddNote("§Õn GÆp Ch­ëng m«n Nam Cung Ngäc ë 178 191")
Msg2Player("NhËn nhiÖm vô ®i ®iÒu tra vÒ vô ¸n §Çu Ng­êi")
end
function qkd()
Say("<color=cyan>Nh¹c Linh San<color>: §è ng­¬i biÕt ch­ëng m«n ph¸i Hoa S¬n hiÖn t¹i lµ ai?",3,"Nh¹c BÊt Quµn/no2","Nam Cung NguyÖt/no2","Nam Cung Ngäc/cau2") 
end;

function cau2() 
Say("<color=cyan>Nh¹c Linh San<color>: Lªnh Hå Xung næi tiÕng víi tuyÖt kü nµo ?",3,"§éc C« Cöu KiÕm/cau3","HÊp Tinh §¹i Ph¸p/no2","TŞch Tµ KiÕm Phæ/no2") 
end; 

function cau3() 
Say("<color=cyan>Nh¹c Linh San<color>: §«ng Ph­¬ng BÊt B¹i luyÖn vâ c«ng g× mµ thµnh ra b¸n nam , b¸n n÷",3,"Di Hån C«ng/no2","Quú Hoa B¶o §iÓn/dung","TŞch Tµ KiÕm Phæ/no2") 
end;
function dung()
Msg2Player("NhËn ®­îc th­, mau mang cho NhËm Doanh Doanh")
AddNote("Lªn §­êng m«n chİnh phßng gÆp NhËm Doanh Doanh")
SetTask(49,119)
AddEventItem(1338)
Talk(1,"","Huynh ®µi qu¶ thËt th«ng minh tµi trİ, tiÓu n÷ xin giao l¹i bøc th­ cho ng­êi") 
end; 
function no2() 
Talk(1,"","Tr¶ lêi <color=red>sai<color> råi !")
end; 

function q90b1() 
SetTask(169,91)
AddNote("§Õn t×m LÑnh Hå Xung ë 176 189")
Msg2Player("NhËn nhiÖm vô ®i ®iÒu tra vÒ sù bÊt th­êng cña Nh¹c BÊt QuÇn")
end; 

function no() 
end; 
