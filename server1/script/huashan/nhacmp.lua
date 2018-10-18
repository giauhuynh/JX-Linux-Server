-- Nhac Mon Phi
Include("\\script\\dailogsys\\dailogsay.lua")
function main() 
-- dofile("script/huashan/nhacmp.lua");
dialog_main()	
end


function dialog_main()
	local szTitle = "<npc>Ta ®øng ®Çu <color=gold>DiÔn Vâ Tr­êng<color> ,chŞu tr¸ch nhiÖm huÊn luyÖn ®Ö tö nhËp m«n"
	local tbOpt =
	{
		{"Hái chuyÖn", noi},
		{"Tho¸t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end





function noi() 
if (GetTask(169) == 10)  then
Say("<color=cyan>Nh¹c Minh Phi<color>: Ng­¬i lµ ®Ö tö míi µ, ta cã viÖc nµy giao cho ng­¬i ®©y, nÕu lµm tèt sÏ cã th­ëng ?",2,"§Ö tö rÊt s½n sµng/nhan","ViÖc nµy e lµ qu¸ søc/no")
elseif (GetTask(169) == 43) then
Talk(3,"q40b1","<color=cyan>Nh¹c Minh Phi<color> : ng­¬i ®Õn t×m ta cã chuyÖn g×? " , " §óng råi, ta nghe nãi <color=pink>Ph­¬ng Tõ TuyÕt<color> c« n­¬ng ®· gÆp mét chuyÖn rÊt l¹, ®ang vui t­¬i bæng trë nªn sî h·i.","Ng­¬i h·y ®Õn t×m c« n­¬ng Êy thö xem !")
elseif (GetTask(169) == 12) and (HaveItem(85) == 1) then
Talk(2,"god","Ng­¬i võa nãi t×m ®­îc thø nµy tõ c©y th«ng µ, ®óng lµ kh«ng æn råi","Mau ®i bÈm b¸o cho s­ huynh Nh¹c BÊt QuÇn")
elseif (GetTask(169) == 16) then
Talk(2,"hth","Ng­¬i ®· bÈm b¸o viÖc nµy cho s­ huynh BÊt QuÇn råi µ, tèt!","VËy ng­¬i ®i luyÖn kiÕm tiÕp ®i")
elseif (GetTask(169) == 154) and (HaveItem(1341) == 1) then
Talk(2,"q150b1","<color=yellow>Nh¹c Minh Phi<color> :...(xem th­)...Qu¶ thËt ta còng cã ı  cö ng­¬i ®i tham gia §¹i héi vâ l©m... ","Ng­¬i mang <color=fire>Anh Hïng LÖnh<color> nµy cho <color=earth>TiÕp DÉn §¹i Héi<color> ®i, sÏ ®­îc vµo thi ®Êu.")
else 
Talk(1,"","NÕu r·nh rçi hay lªn thİ luyÖn ®­êng luyÖn kiÕm cïng c¸c  s­ huynh ®i !")	
end
end

function nhan()
SetTask(169,11)
Talk(1,"","ThÕ nµy, ta ®ang cÇn vµi <color=yellow>qu¶ th«ng<color>, ng­¬i ra sau nói h¸i  cho ta 1 qu¶")
Msg2Player("NhËn nhiÖm vô gióp Nh¹c ®¹i ca ®i ra sau nói h¸i th«ng")
AddNote("H¸i th«ng ë 172 188")
end; 

function god()
--DelItem(85) 
--AddMagic(1349)
--AddMagic(1374)
Msg2Player("Mau ®em viÖc nµy bÈm b¸o cho Nh¹c BÊt QuÇn")
AddNote("Mau ®em viÖc nµy bÈm b¸o cho Nh¹c BÊt QuÇn 186 180")
SetTask(169,14)
end; 
function q40b1() 
SetTask(169,44)
AddNote("GÆp Ph­¬ng Tõ TuyÕt c« n­¬ng ë 170 191")
Msg2Player("Cã thÓ t×m Ph­¬ng Tõ TuyÕt c« n­¬ng  ®Ó ®iÒu tra thªm")
end;

function hth() 
-- SetRank(83)
AddMagic(1349)
AddMagic(1374)
Msg2Player("Hoµn thµnh nhiÖm vô, trë thµnh Hoa S¬n ®Ö tö, luyÖn tËp vâ c«ng míi")
AddNote("§¹t ®Õn cÊp 20 cã thÓ ®Õn gÆp Tõ TuyÕt Anh 164 193 nhËn nhiÖm vô")
SetTask(169,20)
end; 

function q150b1()
DelItem(1341)
AddEventItem(1340)
SetTask(169,155)
AddNote("§Õn gÆp TiÕp dÉn sø gi¶ ®Ó vµo thi ®Êu")
Msg2Player("Cã ®­îc lÖnh bµi, ®Õn gÆp sø gi¶ ®Ó tham gia tranh tµi.")
end

function no() 
end; 
