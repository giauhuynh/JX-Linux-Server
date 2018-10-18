Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function bilFunc_DC_HaVoThu()
	local name = GetName()  
	if ( GetTask(5905) == 11 ) then
		bilNvTanThu:NextTask()
		CreateNewSayEx("<npc>"..name.."<#>: Ng��i l� H� V� Th�?<enter>"
				.." - Ch�nh ta.<enter>"
				.." - Ta l� ng��i c�a T�m Long H�i. <enter> T�i sao ta ch�a th�y qua ng��i. <enter>"
				.." - Kh�ng c�n th�y ta, ch� c�n bi�t n� l� ���c. <enter>l�nh b�i �� m�t<enter> Ng��i l� ng��i c�a M�c S�u? <enter>"
				.." - T�i sao ta ��n H� ti�n sinh ch�c �� r�. <enter>Ta bi�t. D��ng Ch�u m�i th� b�nh th��ng! M�i ng�i! Ta �� chu�n b� th�c �n. <enter>"
				.." - H� ti�n sinh ��ng quanh co n�a, �ng bi�t Thi�n Ho�ng Long Kh� ch�?<enter> ���ng nhi�n kh�ng bi�t.<enter>"
				.." - Xu�t hi�n � D��ng Ch�u �ng t�i sao l�i kh�ng bi�t ch�? <enter>  V�y �, ta ch�a nghe qua tin n�y. <enter>"
				.." - H� ti�n sinh kh�ng c�n che gi�u, ta �� s�m bi�t 'C�u Hi�n Chi Ch�' tr�n tay �ng! Giao ra ��y �i. <enter> S�u c� n��ng �� bi�t vi�c n�y r�i. <enter>"
				.." - H� ti�n sinh, ta cho �ng m�t con ���ng s�ng. N�u b�y gi� giao ra th� c�n k�p ��y. <enter> N�u ta kh�ng n�i th� sao? <enter>H� V� Th� b� b�n ��nh g�c.<enter>"
				.." - N�i �i.<enter> Th�i r�i! L� H� m� b�t ngh�a tr��c, ng��i l�n t�ng 3 �i�m Th��ng S�n �i, ta �� ��a cho huynh �� ta T� �ao Hi�p gi� r�i. <enter>"
				.." - H� ti�n sinh, h�m nay ng��i ch�c cao quy�n tr�ng, ta kh�ng bi�t t�i sao ng��i th�y l�i qu�n ngh�a. <enter> Ha ha ha ha! Ng��i qu� xem th��ng H� m� r�i. <enter>",
				{{"K�t th�c ��i tho�i", bil.OnCancel}})
	else
		CreateNewSayEx("<npc>Chuy�n m� c� ��i ng��i mu�n l�m ch� c� v�i chuy�n l�m ���c, l�m kh�ng th�nh c� m�t s� ng��i t� nguy�n b� �i, ta th� kh�ng!", {{"K�t th�c ��i tho�i", bil.OnCancel}})
	end
end