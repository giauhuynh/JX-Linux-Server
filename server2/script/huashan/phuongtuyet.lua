-- script viet hoa By http://tranhba.com  M¹c B¾c th¶o nguyªn chøc n¨ng thî rÌn 
-- script viet hoa By http://tranhba.com  By: li_xin(2005-01-18) 
-- script viet hoa By http://tranhba.com update:zhaowenyi(2005-02-20) gia t¨ng mµu tİm cïng hoµng kim trang bŞ chÕ t¹o 
-- Phuong Tu Tuyet

function main() 

dialog_main()	
end


function dialog_main()
	local szTitle = "<npc>Mïa nµy cã <color=cyan>Hoa TuyÕt<color> r¬i rÊt ®Ñp ."
	local tbOpt =
	{
		{"Hái chuyÖn", noi},
		{"Tho¸t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end

Include("\\script\\dailogsys\\dailogsay.lua")

function noi()
if (GetLevel() >=30) and (GetTask(169) == 30) then
Say("<color=cyan>Ph­¬ng TuyÕt C« N­¬ng<color> :VŞ huynh ®µi nµy ®Õn thËt ®óng lóc, ta ®ang h¸i hoa th×  gÆp ngay mét tªn ®Ö tö luyÖn kiÕm trªu ghÑo, thËt lµ xÊu hæ qu¸...hu..hu..!",2,"§Ó t¹i h¹ ®i gióp c« n­¬ng/q30b1","Th«i xin c¸o tõ/no")
elseif (GetTask(169) < 20) then
Talk(1,"","VŞ huynh ®µi nµy cã muèn ®i <color=pink>b¾t b­ím h¸i hoa<color> víi ta kh«ng ?")
elseif (GetTask(169) == 33) then
Talk(3,"q30b2","<color=pink>Ph­¬ng Tõ TuyÕt<color> : §a t¹ vŞ huynh ®µi nµy ®· ®ßi l¹i c«ng  b»ng cho tiÓu n÷?","<color=pink>Ph­¬ng Tõ TuyÕt<color> :Nh­ng tiÓu n÷ e lµ huynh sÏ bŞ s­ phô    tr¸ch ph¹t","<color=pink>Ph­¬ng Tõ TuyÕt<color> :Huynh mau ®i t×m chó Hoµng ®i, cã thÓ sÏ gióp ®­îc viÖc nµy")
elseif (GetTask(169) == 44) then
Talk(5,"q40b1","<color=cyan>Ph­¬ng TuyÕt<color> : VŞ tr¸ng sÜ nµy t×m ta cã muèn hái chuyÖn  g× ?","Ta muèn hái c« n­¬ng vÒ vô ¸n <color=red>§Çu Ng­êi<color> .","<color=cyan>Ph­¬ng TuyÕt <color> : ¸ ¸ ... Ta kh«ng biÕt g× vÒ viÖc nµy     ®õng hái ta...."," <color=yellow>...thuyÕt phôc....bla....bla.....<color>","<color=pink>Ph­¬ng Tõ TuyÕt<color>: V× huynh ®· gióp ta lÇn tr­íc nªn ta tin huynh vËy. Ta ®óng lµ ®· thÊy ®­îc tªn hung thñ lµm viÖc  nµy, h¾n lµ tªn <color=red>Hung ¸c §¹o TÆc<color> trªn <color=green>Vò Di S¬n<color>") 
else
Talk(1,"","Mäi ng­êi con g¸i tªn <color=cyan>TuyÕt<color> ®Òu xinh ®Ñp ph¶i kh«ng?")
 end; 
end




function q30b1() 
SetTask(169,31)
Talk(1,"","VËy th× nhê huynh ...")
Msg2Player("NhËn nhiÖm vô ®ßi l¹i c«ng b»ng   cho Ph­¬ng TuyÕt c« n­¬ng")
AddNote("§Õn DiÔn Vâ Tr­êng gÆp 183 186, xin vµo vâ ®­êng ®¸nh 1 trËn")
end; 

function q40b1() 
SetTask(169,45)
AddNote("§Õn Nha m«n D¹i Lı t×m gÆp Bæ kho¸i 201 194")
Msg2Player("§· biÕt ®­îc hung thñ, mau ®Õn nha m«n bÈm b¸o")
end; 


function q30b2() 
SetTask(169,34)
AddNote("§Õn t×m chó hoµng ë 173 197")
Msg2Player("Mau t×m chó Hoµng nghÜ c¸ch kh«ng bŞ s­ phô tr¸ch ph¹t")
end; 


function no() 
end; 
