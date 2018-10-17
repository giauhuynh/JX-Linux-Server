-- Bo Kho¸i

function main() 

if (GetTask(169) == 45) then
Talk(3,"q40b1","<color=Red> Bæ Kho¸i<color> : Huynh ®Õn tr×nh b¸o téi ph¹m µ?","......tr×nh b¸o ......bla....bla....","VËy ng­¬i mau lªn <color=green>Vò Di S¬n<color> truy b¾t tªn <color=red>§¹o TÆc<color>")
 elseif (GetTask(169) == 47) and (HaveItem(1329) == 1) then
Talk(2,"q40b2", "<color=Red> Bæ Kho¸i<color> :Tèt l¾m, ng­¬i ®· lËp ®­îc ®¹i c«ng khi gióp   nha m«n ta xö lı tªn téi ph¹m nµy","ViÖc ë ®©y ®· xong, phiÒn ng­¬i quay vÒ göi lêi cña ta ®Õn ch­ëng m«n <color=cyan>Nam Cung Ngäc <color>")
elseif (GetTask(169) == 52)  then
Talk(4,"q50b1","<color=Red> Bæ Kho¸i<color> :Huynh muèn hái vÒ vô c­íp ë Th¹ch Cæ TrÊn ?" ,"TriÒu ®×nh ®· giao viÖc nµy cho Bé H×nh, nh­ng gÇn ®©y    binh ®ao lo¹n l¹c, triÒu ®Şnh ®ang lo tËp trung ®èi phã   víi ng­êi Kim ë phİa B¾c","Ta cã vµi ng­­êi b¹n trªn giang hå, theo hä th× viÖc nµy   cã liªn quan ®Õn bän bÊt h¶o ë <color=blue>B¹ch Thñy §éng<color>","Ng­¬i thö ®i ®iÒu tra ë <color=blue>B¹ch Thñy §éng<color> xem !") 
elseif (GetTask(169) == 61)  then
Talk(4,"q60b1","<color=Red> Bæ Kho¸i<color> :Huynh ®µi l¹i ®Õn v× chuyÖn g× n÷a ®©y ?","<color=Red> Bæ Kho¸i<color> : µ, viÖc KiÕm phæ ta còng tõng nghe qua,nh­ng kh«ng nhiÒu ng­êi biÕt vÒ tung tİch cña nã","BiÕt tung tİch vÒ <color=gold>KiÕm Phæ<color> râ nhÊt chØ cã thÓ lµ <color=red>C«n L«n l·o Huynh<color>","Ng­¬i nªn ®i <color=yellow>C«n L«n<color> mét chuyÕn !") 

else
Talk(1,"","B©y giê binh ®ao lo¹n l¹c, c¸c h¹ h·y cÈn träng !")
end; 
end

function q40b1() 
SetTask(169,46)
AddNote(" §Õn Vò Di S¬n ®¸nh b¹i Hung TÆc 130 181 cho ®Õn khi lÊy ®­îc chøng cø ")
Msg2Player("§· cã sù hËu thuÉn cña Nha M«n,   mau lªn Vò Di S¬n truy b¾t ®¹o tÆc.")
end; 

function q40b2() 
DelItem(1329)
SetTask(169,48)
AddNote("Quay vÒ bÈm b¸o cho ch­ëng m«n Nam Cung ngäc")
Msg2Player("Quay vÒ bÈm b¸o cho ch­ëng m«n Nam Cung ngäc")
end;


function q50b1() 
SetTask(169,53)
AddNote("§i B¹ch Thñy §éng , lÇn l­ît ®¸nh theo thø tù 3 tªn cho ®Õn khi nhËn ®ñ 3 vËt phÈm :L­u manh ë 193 197, C«n ®å 205 209, Trém chã 208 200, sau ®ã quay vÒ gÆp Ph­¬ng Thóc Thóc")
Msg2Player("NhËn ®­îc tin tøc ®i B¹ch Thñy    §éng ®iÒu tra")
end;

function q60b1() 
SetTask(169,62)
AddNote("§Õn C«n L«n gÆp C«n L«n l·o huynh 197 201 hái th¨m")
Msg2Player("Bæ kho¸i kªu b¹n nªn ®i C«n L«n 1 chuyÕn")
end;

function no() 
end; 
