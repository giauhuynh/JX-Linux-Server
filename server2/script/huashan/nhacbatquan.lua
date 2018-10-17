-- NHAC BAT QUAN

function main() 


if (GetTask(169) == 14) and (HaveItem(85) == 1)  then
Say("<color=red>Nh¹c BÊt QuÇn<color>: Nghe nãi ng­¬i cã viÖc t×m ta?",2,"§Ö tö cã viÖc cÇn bÈm b¸o/nhan","Th«i kh«ng cã g× ®©u ¹/no")
elseif (GetTask(169) == 35) then
Talk(3,"q30b1","<color=red>Nh¹c BÊt QuÇn<color> : Cã ph¶i ng­¬i lµ kÎ ®· ®¸nh ®Ö tö luyÖn   kiÕm kh«ng?" ," <color=cyan>Lêi cña Chó Hoµng<color> : Nh¹c s­ phô µ, viÖc nµy thùc ra lµ ....bla bla bla.....","<color=red>Nh¹c BÊt QuÇn<color> : Ra lµ v©y ! Ng­¬i xøng ®¸ng ®­îc khen     th­ëng v× lßng nghÜa hiÖp .")
elseif (GetTask(169) == 92) then
Talk(3,"q90b1","<color=red>Nh¹c BÊt QuÇn<color> : Ng­¬i ®Ğn t×m s­ phô cã viÖc g× kh«ng" ,"T¹i h¹ ®Õn thØnh an s­ phô, ..........","...biÓu hiÖn...biÓu hiÖn...Nh¹c s­ phô ®óng lµ cã nh÷ng biÓu hiÖn kh«ng hÒ b×nh th­êng.....")
elseif GetTask(169) == 94 then
Talk(3,"q90b2","<color=red>Nh¹c BÊt QuÇn<color> Ng­¬i muèn hái ta ®iÒu g× ?","<color=red>Nh¹c BÊt QuÇn<color> : B©y giê ta cã viÖc ph¶i ®i !","<color=red>Nh¹c BÊt QuÇn<color> : Khi nµo r·nh rçi ta sÏ nãi chuyÖn nµy")
elseif GetTask(169) == 97 then
Talk(3,"q90b3","<color=red>Nh¹c BÊt QuÇn<color> Ta vâ c«ng kh«ng b»ng ng­¬i, cßn muèn nãi g× n÷a","S­ phô h·y giao ra <color=Gold>TŞch Tµ KiÕm Phæ<color>","<color=red>Nh¹c BÊt QuÇn<color> : cÇm lÊy vµ biÕn ®i !")
else
Talk(1,"","Ta chØ cã mét ®øa con g¸i duy nhÊt lµ Linh San th«i, nh­ng cµng lín nã cµng khã b¶o, thËt lµ... ")
 
end
end 


function nhan() 
Talk(3,"god","BÈm b¸o :..........bla..bla...........","<color=red>Nh¹c BÊt QuÇn<color> :§­îc råi ,viÖc nµy ta sÏ ph¸i c¸c ®Ö tö ®i ®iÒu tra","Ng­¬i m©u trë vÒ b¸o víi M«n Phi")
end; 

function q30b1() 
SetTask(169,40)
-- SetRank(84)
AddMagic(1351)
AddMagic(1376)
AddNote("CÊp 40 cã thÓ ®Õn gÆp Nh¹c Linh San 182 185 nhËn nhiÖm vô")
Msg2Player("§­îc Nh¹c s­ phô tiÕn cö lªn hµm  ®Ö tö, häc ®­îc vâ c«ng Kim Nh¹n Hoµnh Kh«ng   vµ Long HuyÒn KiÕm Khİ")
end; 

function god() 
DelItem(85)
SetTask(169,16)
Msg2Player("Mau trë vÒ b¸o cho M«n Phi biÕt")
end;
 
function q90b1() 
SetTask(169,93)
AddNote("T×m gÆp nhËm doanh doanh ë ®­êng m«n phßng chİnh 200 201")
Msg2Player("NhËn thÊy nh÷ng biÓu hiÖn bÊt th­êng cña Nh¹c BÊt QuÇn, tiÕp tôc ®iÒu tra thªm")
end;

function q90b2() 
SetTask(169,95)
AddNote("§Õn t­îng ®¸ phİa sau NH¹c BÊt Quµn 186 178, ®i vµo mËt ®¹o, ®¸nh b¹o h¾n")
Msg2Player("Nh¹c BÊt QuÇn b¶o xuèng nói cã viÖc, b¹n nghi ngê nªn b¸m theo «ng ta")
end;

function q90b3() 
AddEventItem(1327)
SetTask(169,98)
AddNote("Mang tŞch tµ kiÕm phæ giao cho Nam Cung l·o gia")
Msg2Player("Mang tŞch tµ kiÕm phæ giao cho Nam Cung l·o gia")
end;

function no() 
end; 
