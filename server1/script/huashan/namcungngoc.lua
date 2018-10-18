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
local szTitle = "<npc>Ph�i <color=cyan>Hoa S�n<color> ta ��ng ��u   ng� nh�c ki�m  ph�i, x�ng danh l� danh m�n ch�nh ph�i , c�c m�n ph�i kh�c ��u c� ph�n n� tr�ng. "
	local tbOpt =
	{
		{"T�i h� c� vi�c c�n th�nh gi�o ng�i",thoai},
		{"C�o bi�t ch��ng m�n"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end

function thoai() 
if GetTask(169) == 41 then
Talk(2,"q40b1","<color=blue>Nam Cung Ng�c<color> :Ng��i mu�n �i�u tra v� v� �n <color=red>��u Ng��i<color> �?","���c th�i, h�y ��n t�m cha ta � <color=gold>Thi�n D� V�n H�p<color>, ng��i s� c� ���c l�i khuy�n b� �ch")
elseif GetTask(169) == 48 then
Talk(2,"q40b2","<color=blue>Nam Cung Ng�c<color> : Ng��i qu� l� c� kh� ch�t , l�n n�y �� gi�p ta ph� ���c �n","Ch�m ch� luy�n t�p v� c�ng, ng��i s� ti�n xa")
elseif GetTask(169) == 50 and (GetLevel() >= 50) then
Say("<color=blue>Nam Cung Ng�c<color> : Nghe n�i <color=yellow>Ph��ng Th�c Th�c<color> � Th�ch C� Tr�n c�n s� gi�p �� c�a Hoa s�n ta, ng��i mau ��n �� m�t     chuy�n xem sao. ",2,"T�i h� l�p t�c �i ngay/q50b1","Vi�c n�y e l�.../no")
elseif GetTask(169) == 57 then
Talk(2,"q50b2","<color=blue>Nam Cung Ng�c<color> : Ng��i �� ho�n th�nh nhi�m ���c giao � Th�ch c� tr�n r�i �","T� ,ta s� d�y v� c�ng m�i cho ng��i")
elseif (GetLevel() >= 60) and (GetTask(69) == 69) then
Say("<color=blue>Nam Cung Ng�c<color> : Ta �ang c�n ti�n tu s�a <color=gold>Tri�u D��ng C�c<color>, ng��i c� th� gi�p ta vi�c n�y ���c kh�ng ?",2,"T�i h� l�p t�c l�m ngay/xsyes","Tr�ng tr�ch qu� l�n, kh�ng th� g�nh v�c/no")
elseif GetTask(69) == 70 then
Say("<color=blue>Nam Cung Ng�c<color> : Ng��i �� gom �� 5 v�n l��ng ch�a ?",2,"T�t c� � ��y/okyes","V�n ch�a ki�m ��/no2")
elseif GetTask(69) == 60 then
Say("<color=blue>Nam Cung Ng�c<color> : Ng��i l�i mu�n xu�ng n�i rong ch�i � ?",2,"V�ng ch��ng m�n/vl1","Ch� l� gh� ngang th�i/no")
else
local szTitle = "<npc>��ng ��u Ng� Nh�c Ki�m Ph�i ch�nh l� <color=cyan>Hoa S�n<color> ta, bao n�m nay danh ti�ng b�n ph�i tr�n giang h� v�n kh�ng thay ��i. "
	local tbOpt =
	{
		--{"T�i h� c� vi�c c�n th�nh gi�o ng�i",thoai},
		{"Tho�t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
--Talk(1,"","<color=blue>Nam Cung Ng�c<color> :��ng ��u Ng� Nh�c Ki�m Ph�i ch�nh l� <color=cyan>Hoa S�n<color> ta, bao n�m nay danh ti�ng b�n ph�i tr�n giang h� v�n kh�ng thay ��i.")
end 
end

function chayp()
--scriptfile = "\\script\\hoashan\\test.lua" 
--AddNpc(769,1,333,169,194,1,3,"\\script\\huashan\\test.lua",6) 
--SetNpcScript(AddNpc(769,1,333,169,194,1,3),scriptfile) 
--AddNPC(769,1,333,169,194,1,3,"\\script\\huashan\\test.lua",6)
--Talk(1,"","Ch�y NPC Th�nh c�ng")
end; 

function q40b1() 
SetTask(169,42)
Msg2Player("Nam Cung Ng�c b�o b�n ��n t�m Nam Cung L�o Gia")
AddNote("��n g�p Nam Cung l�o gia � 171 182")
end;

function q40b2() 
SetTask(169,50)
-- SetRank(85)
AddMagic(1354)
AddMagic(1378)
AddNote("C�p 50 c� th� ��n g�p Ch��ng m�n Nam Cung Ng�c nh�n nhi�m v�")
Msg2Player("Ho�n Th�nh nhi�m v�, h�c ���c v�  c�ng Hi Di Ki�m Ph�p v� Kh� Ch�n S�n H�")
end;

function q50b1() 
SetTask(169,51)
AddNote("��n Th�ch C� Tr�n t�m Ph��ng th�c th�c 202 203 ")
Msg2Player("��n Th�ch C� Tr�n t�m Ph��ng th�c th�c xem th� n�o.")
end;


function q50b2() 
SetTask(169,60)
-- SetRank(86)
AddMagic(1355)
AddMagic(1379)
AddNote("C�p 60 c� th� ��n g�p Nam cung l�o gia � 171 182 nh�n nhi�m v�")
Msg2Player("Ph�c m�nh ch��ng m�n, h�c ���c v�  c�ng Thi�n Th�n ��o Huy�n v� Kh� Qu�n Tr��ng H�ng")
end;

function xsyes() 
SetTask(69,70)
Msg2Player("Nh�n nhi�m v� �i gom 5 v�n l��ng v� gi�p ch��ng m�n")
end; 

function okyes() 
if GetCash() >= 50000 then
Pay(50000)
if GetTask(66) ~= 66  then
AddMagic(1358)
AddMagic(1380)
AddMagic(1360)
-- SetRank(87)
Msg2Player("Nhi�m v� xu�t s� th�nh c�ng, h�c ���c tuy�t k� b�n ph�o Huy�n Nh�n V�n Y�n,Ma V�n Ki�m Kh�, Th��ng T�ng Ngh�nh Kh�ch")
end
SetTask(66,66)
SetTask(69,60)
--SetRank(87)
SetCamp(3)
SetCurCamp(3)
Msg2Player("Tr� l�i ph�i Hoa S�n, ti�p t�c tu luy�n v� c�ng")
else
Talk(1,"","Ng��i gom �� 5 v�n l��ng r�i h�y quay l�i ��y")
end; 
end
function vl1() 
SetTask(69,69)
SetCamp(4)
SetCurCamp(4)
Msg2Player("Xu�t s� th�nh c�ng, c� th� xu�ng n�i th� luy�n")
end;
function no2() 
Talk(1,"","Ng��i th�t l� k�m c�i, ch�t vi�c n�y m� c�ng l�m kh�ng xong")
end

function no() 
end; 
