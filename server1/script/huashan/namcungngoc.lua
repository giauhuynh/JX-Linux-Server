-- Chuong Mon Nam cung Ngoc
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\hotrothem.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")

function main() 
-- dofile("script/huashan/namcungngoc.lua");
dialog_main()	
end

function dialog_main()	
local szTitle = "<npc>Ph¸i <color=cyan>Hoa S¬n<color> ta ®øng ®Çu   ngò nh¹c kiÕm  ph¸i, xøng danh lµ danh m«n ch¸nh ph¸i , c¸c m«n ph¸i kh¸c ®Òu cã phÇn nÓ träng. "
	local tbOpt =
	{
		{"T¹i h¹ cã viÖc cÇn thØnh gi¸o ngµi",thoai},
		{"C¸o biÖt ch­ëng m«n"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end

function thoai() 
if GetTask(169) == 41 then
Talk(2,"q40b1","<color=blue>Nam Cung Ngäc<color> :Ng­¬i muèn ®iÒu tra vÒ vô ¸n <color=red>§Çu Ng­êi<color> µ?","§­îc th«i, h·y ®Õn t×m cha ta ë <color=gold>Thiªn D« V©n Hîp<color>, ng­¬i sÏ cã ®­îc lêi khuyªn bæ Ých")
elseif GetTask(169) == 48 then
Talk(2,"q40b2","<color=blue>Nam Cung Ngäc<color> : Ng­¬i qu¶ lµ cã khÝ chÊt , lÇn nµy ®· gióp ta ph¸ ®­îc ¸n","Ch¨m chØ luyÖn tËp vâ c«ng, ng­¬i sÏ tiÕn xa")
elseif GetTask(169) == 50 and (GetLevel() >= 50) then
Say("<color=blue>Nam Cung Ngäc<color> : Nghe nãi <color=yellow>Ph­¬ng Thóc Thóc<color> ë Th¹ch Cæ Tr¸n cÇn sù gióp ®ì cña Hoa s¬n ta, ng­¬i mau ®Õn ®ã mét     chuyÕn xem sao. ",2,"T¹i h¹ lËp tøc ®i ngay/q50b1","ViÖc nµy e lµ.../no")
elseif GetTask(169) == 57 then
Talk(2,"q50b2","<color=blue>Nam Cung Ngäc<color> : Ng­¬i ®· hoµn thµnh nhiÖm ®­îc giao ë Th¹ch cæ trÊn råi µ","Tè ,ta sÏ d¹y vâ c«ng míi cho ng­¬i")
elseif (GetLevel() >= 60) and (GetTask(69) == 69) then
Say("<color=blue>Nam Cung Ngäc<color> : Ta ®ang cÇn tiÒn tu söa <color=gold>TriÒu D­¬ng C¸c<color>, ng­¬i cã thÓ gióp ta viÖc nµy ®­îc kh«ng ?",2,"T¹i h¹ lËp tøc lµm ngay/xsyes","Träng tr¸ch qu¸ lín, kh«ng thÓ g¸nh v¸c/no")
elseif GetTask(69) == 70 then
Say("<color=blue>Nam Cung Ngäc<color> : Ng­¬i ®· gom ®ñ 5 v¹n l­îng ch­a ?",2,"TÊt c¶ ë ®©y/okyes","VÉn ch­a kiÕm ®ñ/no2")
elseif GetTask(69) == 60 then
Say("<color=blue>Nam Cung Ngäc<color> : Ng­¬i l¹i muèn xuèng nói rong ch¬i µ ?",2,"V©ng ch­ëng m«n/vl1","ChØ lµ ghÐ ngang th«i/no")
else
local szTitle = "<npc>§øng ®Çu Ngò Nh¹c KiÕm Ph¸i chÝnh lµ <color=cyan>Hoa S¬n<color> ta, bao n¨m nay danh tiÕng bæn ph¸i trªn giang hå vÉn kh«ng thay ®æi. "
	local tbOpt =
	{
		--{"T¹i h¹ cã viÖc cÇn thØnh gi¸o ngµi",thoai},
		{"Tho¸t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
--Talk(1,"","<color=blue>Nam Cung Ngäc<color> :§øng ®Çu Ngò Nh¹c KiÕm Ph¸i chÝnh lµ <color=cyan>Hoa S¬n<color> ta, bao n¨m nay danh tiÕng bæn ph¸i trªn giang hå vÉn kh«ng thay ®æi.")
end 
end

function chayp()
--scriptfile = "\\script\\hoashan\\test.lua" 
--AddNpc(769,1,333,169,194,1,3,"\\script\\huashan\\test.lua",6) 
--SetNpcScript(AddNpc(769,1,333,169,194,1,3),scriptfile) 
--AddNPC(769,1,333,169,194,1,3,"\\script\\huashan\\test.lua",6)
--Talk(1,"","Ch¹y NPC Thµnh c«ng")
end; 

function q40b1() 
SetTask(169,42)
Msg2Player("Nam Cung Ngäc b¶o b¹n ®Õn t×m Nam Cung L·o Gia")
AddNote("§Õn gÆp Nam Cung l·o gia ë 171 182")
end;

function q40b2() 
SetTask(169,50)
-- SetRank(85)
AddMagic(1354)
AddMagic(1378)
AddNote("CÊp 50 cã thÓ ®Õn gÆp Ch­ëng m«n Nam Cung Ngäc nhËn nhiÖm vô")
Msg2Player("Hoµn Thµnh nhiÖm vô, häc ®­îc vâ  c«ng Hi Di KiÕm Ph¸p vµ KhÝ ChÊn S¬n Hµ")
end;

function q50b1() 
SetTask(169,51)
AddNote("§Õn Th¹ch Cæ TrÊn t×m Ph­¬ng thóc thóc 202 203 ")
Msg2Player("§Õn Th¹ch Cæ TrÊn t×m Ph­¬ng thóc thóc xem thÕ nµo.")
end;


function q50b2() 
SetTask(169,60)
-- SetRank(86)
AddMagic(1355)
AddMagic(1379)
AddNote("CÊp 60 cã thÓ ®Ðn gÆp Nam cung l·o gia ë 171 182 nhËn nhiÖm vô")
Msg2Player("Phôc mÖnh ch­ëng m«n, häc ®­îc vâ  c«ng Thiªn Th©n §¶o HuyÒn vµ KhÝ Qu¸n Tr­êng Hång")
end;

function xsyes() 
SetTask(69,70)
Msg2Player("NhËn nhiÖm vô ®i gom 5 v¹n l­îng vÒ gióp ch­ëng m«n")
end; 

function okyes() 
if GetCash() >= 50000 then
Pay(50000)
if GetTask(66) ~= 66  then
AddMagic(1358)
AddMagic(1380)
AddMagic(1360)
-- SetRank(87)
Msg2Player("NhiÖm vô xuÊt s­ thµnh c«ng, häc ®­îc tuyÕt kü bæn ph¸o HuyÒn Nh·n V©n Yªn,Ma VÊn KiÕm KhÝ, Th­¬ng Tïng Nghªnh Kh¸ch")
end
SetTask(66,66)
SetTask(69,60)
--SetRank(87)
SetCamp(3)
SetCurCamp(3)
Msg2Player("Trë l¹i ph¸i Hoa S¬n, tiÕp tôc tu luyÖn vâ c«ng")
else
Talk(1,"","Ng­¬i gom ®ñ 5 v¹n l­îng råi h·y quay l¹i ®©y")
end; 
end
function vl1() 
SetTask(69,69)
SetCamp(4)
SetCurCamp(4)
Msg2Player("XuÊt s­ thµnh c«ng, cã thÓ xuèng nói thÝ luyÖn")
end;
function no2() 
Talk(1,"","Ng­¬i thËt lµ kÐm cái, chót viÖc nµy mµ còng lµm kh«ng xong")
end

function no() 
end; 
