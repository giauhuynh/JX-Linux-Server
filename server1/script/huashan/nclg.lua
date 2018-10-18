-- Nam Cung Lao Gia

function main() 
-- dofile("script/huashan/nclg.lua");
dialog_main()	
end


function dialog_main()
	local szTitle = "<npc>Nam nh�n c�a ph�i <color=cyan>H� S�n<color> ngo�i     luy�n ki�m c�n ph�i tinh th�ng kinh s� th� m�i l�m n�n chuy�n ! ?"
	local tbOpt =
	{
		{"H�i chuy�n", noi},
		{"Tho�t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end

Include("\\script\\dailogsys\\dailogsay.lua")

function noi()

if (GetTask(169) == 25) then
Talk(2,"q20b1","<color=red>Nam Cung L�o Gia<color> :Th� �a ��y l� v� huynh ��i m� <color=Pink>Tuy�t Anh<color> �� nh�c ��n...","Tr�ng th�t tu�n t�...haha..l�o s� d�y cho ng��i v� c�ng !")
elseif (GetTask(169) == 42) then
Talk(4,"q40b1","<color=gold>Nam Cung L�o Gia<color> :V� �ai hi�p n�y mu�n th�nh gi�o l�o � ?","<color=gold>Nam Cung L�o Gia<color> : V� �n <color=red>��u Ng��i<color> theo l�o th� ....","....<color=red>tr� chuy�n<color> .....bla ....bla......","C�c h� �� c� ���c h��ng �i�u tra r�i � , ....hahaha.....  qu� th�t l� m�t v� thi�u ni�n nhanh nh�n...")
elseif (GetTask(169) == 60) and(GetLevel() >= 60) then
Talk(2,"q60b1","<color=gold>Nam Cung L�o Gia<color> :L�n n�y ph�i <color=blue>Hoa S�n<color> ta t�i xu�t giang h�","Th� nh�t l� �� ch�n h�ng Ng� nh�c, th� hai l� c�ng �� t�m l�i 4 cu�n <color=gold>Ki�m Ph�<color> b� th�t l�c trong giang h� b�y l�u?")
elseif (GetTask(169) == 67) and (HaveItem(1337) == 1) then
Talk(2,"q60b3","<color=gold>Nam Cung L�o Gia<color> :��y ��ng l� 4 vu�n <color=gold>Ki�m Ph�<color> b� th�t l�c c�a b�n ph�i.","L�n n�y ng��i �� l�p ���c ��i c�ng !")
elseif (GetTask(169) == 98) and (HaveItem(1327) == 1) then
Talk(3,"q90b1","<color=gold>Nam Cung L�o Gia<color> :Ng��i ��n v� chuy�n c�a <color=cyan>Nh�c B�t Qu�n<color> �","<color=gold>Nam Cung L�o Gia<color> : Giao th� v� c�ng qu� qu�i n�y cho ta, ta s� ��t n� �i !","C�m t� !")
elseif (GetTask(169) == 153)  then
Talk(3,"q150b1","<color=gold>Nam Cung L�o Gia<color> :Ng��i �� giao thi�p m�i cho ��o Nh�t huynh r�i �?","<color=gold>Nam Cung L�o Gia<color> : T�t, l�o phu th�y <color=cyan>"..GetName().."<color> huynh �� sau 1 th�i gian tu luy�n th� c� r�t nhi�u ti�n b�...!","<color=gold>Nam Cung L�o Gia<color> :Thi�t ngh� ��i h�i v� l�m l�n n�y ta c� th� c�n nh�c cho c�c h� tham gia tranh t�i...")
elseif (GetTask(169) == 180)  then
Talk(3,"q150b2","<color=gold>Nam Cung L�o Gia<color> :L�o qu� th�t �� kh�ng nh�n nh�m    ng��i !","<color=gold>Nam Cung L�o Gia<color> : <color=cyan>"..GetName().."<color> huynh �� l�n n�y �� l�m cho ng��i trong v� l�m th�y ���c s� l�i h�i c�a <color=water>Hoa  S�n<color> ta ...!","<color=gold>Nam Cung L�o Gia<color> :Ta s� truy�n th� Ki�m Ph�p Chi Ph�i c�a <color=water>Hoa S�n<color> cho c�c h�...hahaha...")
else
Talk(1,"","<color=red>Nam Cung L�o Gia<color> :��ng � ��y c� th� th��ng th�c to�n b�   c�nh n�i non � <color=cyan>Hoa S�n<color> n�y.")
end
end; 

function q20b1()
-- SetRank(83)
SetTask(169,30)
AddNote("��t c�p 30 c� th� ��n g�p Ph��ng tuy�t c� n��ng � 170 191")
Msg2Player("Hoang th�nh nhi�m v�, ���c th�ng  h�m �� t�, h�c ���c D��ng Ng� Ki�m Ph�p v� H�i B�ch N�p Xuy�n")
AddMagic(1350)
AddMagic(1375)
end; 

function q40b1()
SetTask(169,43)
AddNote("��n g�p Nh�c Minh Phi � 179 193")
Msg2Player("�� t�m ra ���c manh m�i, mau t�i  t�m Nh�c Minh Phi �� h�i th�m") 
end; 


function q60b1() 
Say("<color=red>Nam Cung L�o Gia<color> : $ cu�n <color=gold>Ki�m ph�<color> n�y l� v�t b�o chi m�n, ta �� cho c�c �� t� �i kh�p noi trong giang h� h�i th�m tin t�c, nh�ng hi�n v�n ch�a c� manh m�i g�",2,"L�o gia h�y giao vi�c n�y cho �� t�/q60b2","T�i h� t�i h�n s�c mon.../no")
end; 

function q60b2()
SetTask(169,61)
AddNote("��n ��i l� nha m�n g�p b� kho�i")
Msg2Player("Nh�n nhi�m v� �i t�m Ki�m ph� tr�n ph�i , t�i ��i L� h�i th�m") 
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
Msg2Player("Ho�n th�nh nhi�m v� tr�ng ph�n s� m�n.") 
AddNote("C�p 60 c� th� ��n ch��ng m�n xu�t s�, sao khi xu�t s� ��n g�p Anh c� n��ng � 178 185 nh�n k� danh")
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

Msg2Player("Ho�n th�nh nhi�m v� ,danh v�ng t�ng 30 �i�m, h�c ���c v� c�ng �o�t M�nh Li�n Ho�n Tam Ki�m ,Ph� Th�ch Ph� Ng�c") 
end;

function q150b1() 
Say("<color=earth>Nam Cung L�o Gia<color>: Thi�u hi�p n�y c� mu�n ��i di�n <color=water>Hoa S�n<color> �� t� tham gia �ng chi�n v�i c�c ph�i kh�ng ?",2,
	"�a t� l�o gia, �� t� r�t mu�n/q150yes",
	"V� c�ng non k�m,l�y l�m h� th�n/no") 
end; 

function q150yes() 
AddEventItem(1341)
SetTask(169,154)
AddNote("Nh�n ���c th� ti�n c�, ��n g�p Nh�c Minh Phi")
Msg2Player("Nh�n ���c th� ti�n c�, ��n g�p    Nh�c Minh Phi �� tham gia thi ��u!")
end; 

function q150b2() 
AddMagic(1365,20)
AddMagic(1368,1)
AddRepute(100)
AddItem(6,1,4368,0,0,1)
SetTask(169,181)
Msg2Player("H�c ���c v� c�ng ��c C� C�u Ki�m v� T� H� Ki�m Kh�, ��ng th�i nh�n b� ki�p c�p 180, danh v�ng t�ng 100 di�m")
end; 

function no() 
end; 
