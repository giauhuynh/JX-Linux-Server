-- Phuong Thuc Thuc o Thach Co Tran

function main() 

dialog_main()	
end


function dialog_main()
	local szTitle = "<npc>Thi�u hi�p n�y c�n l�o gi� gi�p    vi�c g� ?"
	local tbOpt =
	{
		{"H�i chuy�n", noi},
		{"Tho�t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end

Include("\\script\\dailogsys\\dailogsay.lua")

function noi()
if GetTask(169) == 51 then
Say("<color=red>Ph��ng Th�c Th�c<color> : V�a r�i tri�u ��nh v�n chuy�n ng�n kh� c� �i qua th�n c�a ta, kh�ng may b� b�n c��p ch�n ��nh, to�n b� s� v�ng �� b� ��nh c�p. N�u vi�c n�y gi�i quy�t  kh�ng xong, c� th�n s� b� b�t t�i !",2,"Vi�c n�y c� giao cho t�i h�/q50b1","Vi�c n�y e l�.../no")
elseif (GetTask(169) == 56) and (HaveItem(1333) == 1)  then
Talk(2,"q50b2","<color=red>Ph��ng Th�c Th�c<color> : C�c h� �� t�m ra tung t�ch b�n c��p r�i �...","T�t qu� ! Ta s� b�o vi�c n�y l�i cho tri�u �inh, c�c h� c� th� tr� v� Hoa S�n b�m l�i v�i Ch��ng M�n Cung Ng�c")
else
Talk(1,"","<color=red>Ph��ng Th�c Th�c<color> :N�u r�nh r�i th� hay theo l�o �i l�n Hoa S�n 1 chuy�n .")
end 
end; 


function q50b1() 
SetTask(169,52)
AddNote("��n Nha m�n d�i l� g�p b� kho�i � 201 194")
Msg2Player("Nh�n nhi�m v� �i �i�u tra b�n c��p � Th�ch C� Tr�n")
end;

function q50b2() 
DelItem(1331)
DelItem(1332)
DelItem(1333)
SetTask(169,57)
AddNote("Quay v� ph�c m�nh ch��ng m�n Nam Cung Ng�c")
Msg2Player("Quay v� ph�c m�nh ch��ng m�n Nam Cung Ng�c")
end;

function no() 
end; 
