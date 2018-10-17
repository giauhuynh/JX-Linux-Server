-- Lenh Ho Xung

function main() 
-- dofile("script/huashan/lenhhx.lua");
dialog_main()	
end

function dialog_main()
	local szTitle = "<npc>VŞ huynh ®Ö nµy t×m LÖnh mç cã h¸ lµ   viÖc g× quan träng ?"
	local tbOpt =
	{
		{"Hái chuyÖn", noi},
		{"Tho¸t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end

Include("\\script\\dailogsys\\dailogsay.lua")

function noi()
if (GetTask(169) == 91) then
Talk(2,"q90b1","<color=green>LÖnh Hå Xung<color> : VŞ huynh ®Ö nµy còng thÊy ®­îc sù bÊt th­êng cña <color=red>Nh¹c s­ phô<color> sao ?","<color=green>LÖnh Hå Xung<color> : ViÖc nµy ®óng lµ kh«ng cßn ®¬n gi¶n n÷a, ta nghÜ chóng ta nªn tíi th¨m hái <color=red>Nh¹c s­ phô<color> 1 chuyÕn .")
--elseif  --(GetTask(169) == 151) then
elseif (GetTask(169) == 151) then
Talk(2,"q150b1","<color=green>LÖnh Hå Xung<color> : Ch­ëng m«n <color=cyan>Nam Cung Ngäc<color> cã nhê ta giao <color=gold>Anh Hïng ThiÕp<color> cho ph¸i Vâ §ang .","<color=green>LÖnh Hå Xung<color> : Ng­êi gióp ta chuyÖn nµy ®­îc kh«ng ?")
else
Talk(1,"","<color=green>LÖnh Hå Xung<color> : C¸c h¹ cã thÊy <color=cyan>NhËm c« n­¬ng<color> kh«ng ?")
end
end

function q90b1() 
SetTask(169,92)
AddNote("§Õn gÆp nh¹c bÊt quÇn hái th¨m 186 180")
Msg2Player("QuyÕt ®Şnh ®Õn Nh¹c BÊt QuÇn xem thùc h­ thÕ nµo")
end; 

function q150b1()
Say("<color=green>LÖnh Hå Xung<color> :Lªn nói Vâ §ang gióp ta 1 chuyÕn , ı   huynh ®Ñ ra sao ?",2,
	"T¹i h¹ lËp tøc ®i ngay/q150b2",
	"T¹i h¹ bËn ®i kü viÖn råi pa/no")
--SetTask(169,92)
--AddNote("§Õn gÆp nh¹c bÊt quÇn hái th¨m 186 180")
--Msg2Player("QuyÕt ®Şnh ®Õn Nh¹c BÊt QuÇn xem thùc h­ thÕ nµo")
end; 

function q150b2() 
AddEventItem(1339)
SetTask(169,152)
AddNote("Lªn Vâ §ang t×m §¹o NhÊt Ch©n Nh©n")
Msg2Player("NhËn ®­îc Anh Hïng ThiÕp, mau lªn Vâ §ang ®­a th­")
end; 

function no() 
end; 
