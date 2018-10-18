-- Phuong Thuc Thuc o Thach Co Tran

function main() 

dialog_main()	
end


function dialog_main()
	local szTitle = "<npc>ThiÕu hiÖp nµy cÇn l·o giµ gióp    viÖc g× ?"
	local tbOpt =
	{
		{"Hái chuyÖn", noi},
		{"Tho¸t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end

Include("\\script\\dailogsys\\dailogsay.lua")

function noi()
if GetTask(169) == 51 then
Say("<color=red>Ph­¬ng Thóc Thóc<color> : Võa råi triÒu ®×nh vËn chuyÓn ng©n khè cã ®i qua th«n cña ta, kh«ng may bŞ bän c­íp chÆn ®¸nh, toµn bé sè vµng ®· bŞ ®¸nh c¾p. NÕu viÖc nµy gi¶i quyÕt  kh«ng xong, c¶ th«n sÏ bŞ b¾t téi !",2,"ViÖc nµy cø giao cho t¹i h¹/q50b1","ViÖc nµy e lµ.../no")
elseif (GetTask(169) == 56) and (HaveItem(1333) == 1)  then
Talk(2,"q50b2","<color=red>Ph­¬ng Thóc Thóc<color> : C¸c h¹ ®· t×m ra tung tİch bän c­íp råi µ...","Tèt qu¸ ! Ta sÏ b¸o viÖc nµy l¹i cho triÒu ®inh, c¸c h¹ cã thÓ trë vÒ Hoa S¬n bÈm l¹i víi Ch­ëng M«n Cung Ngäc")
else
Talk(1,"","<color=red>Ph­¬ng Thóc Thóc<color> :NÕu r·nh rçi th× hay theo l·o ®i lªn Hoa S¬n 1 chuyÕn .")
end 
end; 


function q50b1() 
SetTask(169,52)
AddNote("§Õn Nha m«n d¹i lı gÆp bæ kho¸i ë 201 194")
Msg2Player("NhËn nhiÖm vô ®i ®iÒu tra bän c­íp ë Th¹ch Cæ TrÊn")
end;

function q50b2() 
DelItem(1331)
DelItem(1332)
DelItem(1333)
SetTask(169,57)
AddNote("Quay vÒ phôc mÖnh ch­¬ng m«n Nam Cung Ngäc")
Msg2Player("Quay vÒ phôc mÖnh ch­¬ng m«n Nam Cung Ngäc")
end;

function no() 
end; 
