-- script viet hoa By http://tranhba.com  M�c B�c th�o nguy�n ch�c n�ng th� r�n 
-- script viet hoa By http://tranhba.com  By: li_xin(2005-01-18) 
-- script viet hoa By http://tranhba.com update:zhaowenyi(2005-02-20) gia t�ng m�u t�m c�ng ho�ng kim trang b� ch� t�o 
-- Tu Tuyet Anh

function main() 

dialog_main()	
end


function dialog_main()
	local szTitle = "<npc>Phi�n b�n ph�i <color=gold>Hoa S�n<color>"
	local tbOpt =
	{
		{"H�i chuy�n", noi},
		{"Tho�t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end

Include("\\script\\dailogsys\\dailogsay.lua")

function noi()
if (GetLevel() >=20) and (GetTask(169) == 20) then
Say("<color=cyan>T� Tuy�t Anh<color> :Ta r�t th�ch <color=pink>Hoa H�ng<color>, ��c bi�t l� gi�ng   hoa <color=pink>Hoa H�ng<color> tr�n Hoa S�n C�nh Tr��ng K�, v� c�c h� n�y c� th� h�i t�ng cho ta 1 b�ng ���c kh�ng ?",2,"R�t vui l�ng t�ng M� nh�n/q20b1","Th�i xin c�o t�/no")
elseif (GetTask(169) < 20) then
Talk(1,"","<color=cyan>T� Tuy�t Anh<color> :Quanh h� n�y ta nu�i r�t nhi�u c�...")
elseif (GetTask(169) == 24) and (HaveItem(106) == 1) then
Talk(2,"q20b2","<color=cyan>T� Tuy�t Anh<color> :�i ��ng l� lo�i <color=pink>Hoa H�ng<color> ta th�ch nh�t r�i, �a t� v� huynh ��i n�y", "�ng c�a l� <color=Green>Hoa S�n L�o Gia<color> mu�n g�p huynh ��y !","<color=pink>Ph��ng T� Tuy�t<color> :Nh�ng i�u n� e l� huynh s� b� s� ph� tr�ch ph�t","<color=pink>Ph��ng T� Tuy�t<color> :Huynh mau �i timg ch� Ho�ng �i, c� th� s� gi�p ���c vi�c n�y")
else
Talk(1,"","H� sen n�y l� do 1 tay b�n c� n��ng ch�m s�c ��y !")

end
end; 

function q20b1() 
SetTask(169,21)
Talk(1,"","V�y th� nh� huynh ...")
AddNote("L�n Hoa S�n c�nh tr��ng k� g�p l�o b�n hoa � 290 236")
Msg2Player("Nh�n nhi�m v� gi�p Tuy�t Anh c� n��ng �i l�y v� 1 b�ng hoa h�ng")
end; 


function q20b2() 
DelItem(106)
SetTask(169,25)
Msg2Player("T�ng hoa h�ng cho T� Tuy�t")
Msg2Player("C� �y b�o b�n h�y mau ��n Thi�n �� V�n H�p t�m l�o l�o")
AddNote("��n 171 182 Hoa S�n ph�i t�m Nam Cung l�o gia")
end; 


function no() 
end; 
