-- Tiep Dan Dai Hoi
Include("\\script\\dailogsys\\dailogsay.lua")
function main() 
-- dofile("script/huashan/tdsgvl.lua");
dialog_main()	
end


function dialog_main()
	local szTitle = "<npc><color=green>       \nVâ l©m suy tµn anh hïng héi   \n\Giang hå lo¹n lo¹t xuÊt Thiªn Long.<color>"
	local tbOpt =
	{
		{"TiÕp chuyÖn", noi},
		{"Tho¸t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end


function noi() 
if (GetTask(169) == 155) or (GetTask(169) == 156)   then
Say("<color=pink>TiÕp dÉn §¹i Héi Vâ L©m<color>: Th× ra lµ <color=cyan>"..GetName().."<color> huynh   ®µi, tiÓu n÷ nghe c¸c huynh ®Ñ nãi vÒ ng­êi ®· l©u, h«m nay míi ®­îc gÆp mÆt. Huynh muèn tham gia Ngò Long Tranh Ch©u µ? ",2,"ChÝnh lµ viÖc ®ã/tchien","ChØ lµ tiÖn ®­êng ghÐ qua, c¸o tõ/no")
elseif (GetTask(169) >= 157) and (GetTask(169) <= 160) then
Say("<color=pink>TiÕp dÉn §¹i Héi Vâ L©m<color>: TrËn tr­íc ®¹i hiÖp ®· thua, trËn nµy cã muèn ®¸nh l¹i kh«ng  ",2,"Ta muèn thö søc lÇn nöa/tchien","VËy hoy ®i nha/no")
else 
Talk(1,"","Trªn d­íi <color=cyan>Hoa S¬n<color> h«m nay rÊt n¸o nhiÖt,®ßng ®¹o vâ lÇm ®Òu tô tËp vÒ ®©y tham gia ®¹i héi!")	
end
end

function tchien()
SetFightState(1)
SetTask(169,156)
Msg2Player("H·y ®¸nh b¹i toµn bé ®ãi thñ")
AddNote("H·y ®¸nh b¹i toµn bé ®ãi thñ")
Talk(1,"gogo","<color=red>PhÝa tr­íc rÊt nguy hiÓm , b¶o träng<color>!")
end; 

function gogo()
Msg2Player("TI£U DIÖT TOµN Bé §ãI THñ")
AddNote("TI£U DIÖT TOµN Bé §ãI THñ")
NewWorld(300,196*8-4,206*16+3)
end; 



function no() 
end; 
