-- Nam Cung Lao Gia

function main() 
-- dofile("script/huashan/nclg.lua");
dialog_main()	
end


function dialog_main()
	local szTitle = "<npc>Nam nh©n cña ph¸i <color=cyan>Hã S¬n<color> ngoµi     luyÖn kiÕm cßn ph¶i tinh th«ng kinh sö th× míi lµm nªn chuyÖn ! ?"
	local tbOpt =
	{
		{"Hái chuyÖn", noi},
		{"Tho¸t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end

Include("\\script\\dailogsys\\dailogsay.lua")

function noi()

if (GetTask(169) == 25) then
Talk(2,"q20b1","<color=red>Nam Cung L·o Gia<color> :Th× ®a ®©y lµ vŞ huynh ®µi mµ <color=Pink>TuyÕt Anh<color> ®· nh¾c ®Õn...","Tr«ng thËt tuÊn tó...haha..l·o sÏ d¹y cho ng­¬i vâ c«ng !")
elseif (GetTask(169) == 42) then
Talk(4,"q40b1","<color=gold>Nam Cung L·o Gia<color> :VŞ ®ai hiÖp nµy muèn thØnh gi¸o l·o µ ?","<color=gold>Nam Cung L·o Gia<color> : Vô ¸n <color=red>§Çu Ng­êi<color> theo l·o th× ....","....<color=red>trß chuyÖn<color> .....bla ....bla......","C¸c h¹ ®· cã ®­îc h­íng ®iÒu tra råi µ , ....hahaha.....  qu¶ thËt lµ mét vŞ thiÕu niªn nhanh nhÑn...")
elseif (GetTask(169) == 60) and(GetLevel() >= 60) then
Talk(2,"q60b1","<color=gold>Nam Cung L·o Gia<color> :LÇn nµy ph¸i <color=blue>Hoa S¬n<color> ta t¸i xuÊt giang hå","Thø nhÊt lµ ®Ó chÊn h­ng Ngò nh¹c, th÷ hai lµ còng ®Ó t×m l¹i 4 cuèn <color=gold>KiÕm Phæ<color> bŞ thÊt l¹c trong giang hå bÊy l©u?")
elseif (GetTask(169) == 67) and (HaveItem(1337) == 1) then
Talk(2,"q60b3","<color=gold>Nam Cung L·o Gia<color> :§©y ®óng lµ 4 vuèn <color=gold>KiÕm Phæ<color> bŞ thÊt l¹c cña bæn ph¸i.","LÇn nµy ng­¬i ®· lËp ®­îc ®¹i c«ng !")
elseif (GetTask(169) == 98) and (HaveItem(1327) == 1) then
Talk(3,"q90b1","<color=gold>Nam Cung L·o Gia<color> :Ng­¬i ®Õn v× chuyÖn cña <color=cyan>Nh¹c BÊt QuÇn<color> µ","<color=gold>Nam Cung L·o Gia<color> : Giao thø vâ c«ng quû qu¸i nµy cho ta, ta sÏ ®èt nã ®i !","C¶m t¹ !")
elseif (GetTask(169) == 153)  then
Talk(3,"q150b1","<color=gold>Nam Cung L·o Gia<color> :Ng­¬i ®· giao thiÖp mêi cho §¹o NhÊt huynh råi µ?","<color=gold>Nam Cung L·o Gia<color> : Tèt, l·o phu thÊy <color=cyan>"..GetName().."<color> huynh ®Ö sau 1 thêi gian tu luyªn th× cã rÊt nhiÒu tiÕn bé...!","<color=gold>Nam Cung L·o Gia<color> :ThiÕt nghÜ ®¹i héi vâ l©m lÇn nµy ta cã thÓ c©n nh¾c cho c¸c h¹ tham gia tranh tµi...")
elseif (GetTask(169) == 180)  then
Talk(3,"q150b2","<color=gold>Nam Cung L·o Gia<color> :L·o qu¶ thËt ®· kh«ng nh×n nhÇm    ng­êi !","<color=gold>Nam Cung L·o Gia<color> : <color=cyan>"..GetName().."<color> huynh ®Ö lÇn nµy ®· lµm cho ng­êi trong vâ l©m thÊy ®­îc sù lîi h¹i cña <color=water>Hoa  S¬n<color> ta ...!","<color=gold>Nam Cung L·o Gia<color> :Ta sÏ truyÒn thô KiÕm Ph¸p Chi Ph¸i cña <color=water>Hoa S¬n<color> cho c¸c h¹...hahaha...")
else
Talk(1,"","<color=red>Nam Cung L·o Gia<color> :§øng ë ®©y cã thÓ th­ëng thøc toµn bé   c¶nh nói non ë <color=cyan>Hoa S¬n<color> nµy.")
end
end; 

function q20b1()
-- SetRank(83)
SetTask(169,30)
AddNote("§¹t cÊp 30 cã thÓ ®Õn gÆp Ph­¬ng tuyÕt c« n­¬ng ë 170 191")
Msg2Player("Hoang thµnh nhiÖm vô, ®­îc th¨ng  hµm ®Ö tö, häc ®­îc D­ìng Ng« KiÕm Ph¸p vµ H¶i B¸ch N¹p Xuyªn")
AddMagic(1350)
AddMagic(1375)
end; 

function q40b1()
SetTask(169,43)
AddNote("§Õn gÆp Nh¹c Minh Phi ë 179 193")
Msg2Player("§· t×m ra ®­îc manh mèi, mau tíi  t×m Nh¹c Minh Phi ®Ó hái th¨m") 
end; 


function q60b1() 
Say("<color=red>Nam Cung L·o Gia<color> : $ cuèn <color=gold>KiÕm phá<color> nµy lµ vËt b¶o chi m«n, ta ®· cho c¸c ®Ö tö ®i kh¾p noi trong giang hå hái th¨m tin tøc, nh­ng hiÖn vÉn ch­a cã manh mèi g×",2,"L·o gia h·y giao viÖc nµy cho ®Ö tö/q60b2","T¹i h¹ tµi hÌn søc mon.../no")
end; 

function q60b2()
SetTask(169,61)
AddNote("§Õn §¹i lı nha m«n gÆp bæ kho¸i")
Msg2Player("NhËn nhiÖm vô ®i t×m KiÕm phæ trÊn ph¸i , tíi §¹i Lı hái th¨m") 
end; 

function q60b3()
DelItem(1334)
DelItem(1335)
DelItem(1336)
DelItem(1337)
SetCamp(4)
SetCurCamp(4)
SetTask(169,70)
SetTask(69,69)
Msg2Player("Hoµn thµnh nhiÖm vô trïng ph¶n s­ m«n.") 
AddNote("CÊp 60 cã thÓ ®Õn ch­ëng m«n xuÊt s­, sao khi xuÊt s­ ®Õn gÆp Anh c« n­¬ng ë 178 185 nhËn kı danh")
end;

function q90b1()
if GetTask(66) == 66 then
AddMagic(1363,1)
AddMagic(1382,1)
AddItem(6,1,4368,0,0,1)
-- SetRank(88)
--SetTask(22,70)
end
DelItem(1327)
AddRepute(30)
--SetRank(88)
SetTask(169,150)
--AddItem(11,11)

Msg2Player("Hoµn thµnh nhiÖm vô ,danh väng t¨ng 30 ®iÓm, häc ®­îc vâ c«ng §o¹t MÖnh Liªn Hoµn Tam KiÕm ,Ph¸ Th¹ch Ph¸ Ngäc") 
end;

function q150b1() 
Say("<color=earth>Nam Cung L·o Gia<color>: ThiÕu hiÖp nµy cã muèn ®¹i diÖn <color=water>Hoa S¬n<color> ®Ö tö tham gia øng chiÕn víi c¸c ph¸i kh«ng ?",2,
	"§a t¹ l·o gia, ®Ö tö rÊt muèn/q150yes",
	"Vâ c«ng non kĞm,lÊy lµm hæ thÑn/no") 
end; 

function q150yes() 
AddEventItem(1341)
SetTask(169,154)
AddNote("NhËn ®­îc th­ tiÕn cö, ®Õn gÆp Nh¹c Minh Phi")
Msg2Player("NhËn ®­îc th­ tiÕn cö, ®Õn gÆp    Nh¹c Minh Phi ®Ó tham gia thi ®Êu!")
end; 

function q150b2() 
AddMagic(1365,20)
AddMagic(1368,1)
AddRepute(100)
AddItem(6,1,4368,0,0,1)
SetTask(169,181)
Msg2Player("Häc ®­îc vâ c«ng §éc C« Cöu KiÕm vµ Tö Hµ KiÕm Khİ, ®ßng thêi nhËn bİ kiÕp cÊp 180, danh väng t¨ng 100 diÓm")
end; 

function no() 
end; 
