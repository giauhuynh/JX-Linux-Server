-- script viet hoa By http://tranhba.com  M�c B�c th�o nguy�n ch�c n�ng th� r�n 
-- script viet hoa By http://tranhba.com  By: li_xin(2005-01-18) 
-- script viet hoa By http://tranhba.com update:zhaowenyi(2005-02-20) gia t�ng m�u t�m c�ng ho�ng kim trang b� ch� t�o 
-- Phuong Tu Tuyet

function main() 

dialog_main()	
end


function dialog_main()
	local szTitle = "<npc>M�a n�y c� <color=cyan>Hoa Tuy�t<color> r�i r�t ��p ."
	local tbOpt =
	{
		{"H�i chuy�n", noi},
		{"Tho�t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end

Include("\\script\\dailogsys\\dailogsay.lua")

function noi()
if (GetLevel() >=30) and (GetTask(169) == 30) then
Say("<color=cyan>Ph��ng Tuy�t C� N��ng<color> :V� huynh ��i n�y ��n th�t ��ng l�c, ta �ang h�i hoa th�  g�p ngay m�t t�n �� t� luy�n ki�m tr�u gh�o, th�t l� x�u h� qu�...hu..hu..!",2,"�� t�i h� �i gi�p c� n��ng/q30b1","Th�i xin c�o t�/no")
elseif (GetTask(169) < 20) then
Talk(1,"","V� huynh ��i n�y c� mu�n �i <color=pink>b�t b��m h�i hoa<color> v�i ta kh�ng ?")
elseif (GetTask(169) == 33) then
Talk(3,"q30b2","<color=pink>Ph��ng T� Tuy�t<color> : �a t� v� huynh ��i n�y �� ��i l�i c�ng  b�ng cho ti�u n�?","<color=pink>Ph��ng T� Tuy�t<color> :Nh�ng ti�u n� e l� huynh s� b� s� ph�    tr�ch ph�t","<color=pink>Ph��ng T� Tuy�t<color> :Huynh mau �i t�m ch� Ho�ng �i, c� th� s� gi�p ���c vi�c n�y")
elseif (GetTask(169) == 44) then
Talk(5,"q40b1","<color=cyan>Ph��ng Tuy�t<color> : V� tr�ng s� n�y t�m ta c� mu�n h�i chuy�n  g� ?","Ta mu�n h�i c� n��ng v� v� �n <color=red>��u Ng��i<color> .","<color=cyan>Ph��ng Tuy�t <color> : � � ... Ta kh�ng bi�t g� v� vi�c n�y     ��ng h�i ta...."," <color=yellow>...thuy�t ph�c....bla....bla.....<color>","<color=pink>Ph��ng T� Tuy�t<color>: V� huynh �� gi�p ta l�n tr��c n�n ta tin huynh v�y. Ta ��ng l� �� th�y ���c t�n hung th� l�m vi�c  n�y, h�n l� t�n <color=red>Hung �c ��o T�c<color> tr�n <color=green>V� Di S�n<color>") 
else
Talk(1,"","M�i ng��i con g�i t�n <color=cyan>Tuy�t<color> ��u xinh ��p ph�i kh�ng?")
 end; 
end




function q30b1() 
SetTask(169,31)
Talk(1,"","V�y th� nh� huynh ...")
Msg2Player("Nh�n nhi�m v� ��i l�i c�ng b�ng   cho Ph��ng Tuy�t c� n��ng")
AddNote("��n Di�n V� Tr��ng g�p 183 186, xin v�o v� ���ng ��nh 1 tr�n")
end; 

function q40b1() 
SetTask(169,45)
AddNote("��n Nha m�n D�i L� t�m g�p B� kho�i 201 194")
Msg2Player("�� bi�t ���c hung th�, mau ��n nha m�n b�m b�o")
end; 


function q30b2() 
SetTask(169,34)
AddNote("��n t�m ch� ho�ng � 173 197")
Msg2Player("Mau t�m ch� Ho�ng ngh� c�ch kh�ng b� s� ph� tr�ch ph�t")
end; 


function no() 
end; 
