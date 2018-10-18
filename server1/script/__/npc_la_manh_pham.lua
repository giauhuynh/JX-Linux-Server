Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function bilFunc_Main_LA_ManhPham()
	if GetTask(5905) == 14 then
		bilNvTanThu:NextTask()
		CreateNewSayEx("<npc>Ng��i l� M�nh Ph�m ��i th�c ph�i kh�ng?<enter> - V� ��y l�...? <enter>"
				.." - Ng��i c�a T�m Long H�i. <enter> T�m Long H�i l� c�i g�?<enter>"
				.." - C� th� M�nh Ph�m kh�ng bi�t T�m Long H�i?!"
				.." - �, ta ��a ch�t th�i. �ng ch�c bi�t M�c S�u?......<enter> Khoan ��! T�m Long H�i l� c�i g�, M�c S�u l� ai? C�c h� c� ph�i �� nh�n l�m ng��i r�i. <enter>"
				.." - M�nh ��i th�c, �ng kh�ng tin ta �? <enter>M�nh Ph�m: Ta th�t s� kh�ng bi�t ng��i �ang n�i c�i g�. <enter>"
				.." -M�c S�u m�t ��m H�c Y nh�n b�t �i, Thi�n Ho�ng Long Kh� m�t t�ch! N�u �ng kh�ng tin, c� th� d�ng b� c�u truy�n tin t�m X�o Nhi c� n��ng ��i ch�ng!<enter> M�c S�u b� b�t c�c? X�y ra l�c n�o v�y.<enter>"
				.." - M�i ��y th�i! <enter> Chuy�n n�y x�y ra qu� ��t ng�t, ng��i h�y ��n H��ng Th�y ��ng ��nh b�i O�n ��c, n�u �em ���c th� c�p h�n v� ta m�i tin. <enter>",
				{{"T�i h� bi�t r�i", bil.OnCancel}})
	elseif GetTask(5905) == 16 then
		bilNvTanThu:NextTask()
		CreateNewSayEx("<npc>M�nh ��i th�c, th� c�p � ��y, �ng tin ch�a, m�i vi�c kh�ng n�n ch�m tr�.<enter>"
				.." - B�n tr�! Ta �� hi�u l�m. Ta �� ph�i thu�c h� �i �i�u tra. Ta tin chuy�n n�y c� li�n quan ��n ch� nh�n T�m Long H�i. <enter>"
				.." - Ch� nh�n? Ch� nh�n l� ai? <enter> Vi�c n�y, th� l�i ta kh�ng th� n�i......Ta ch� c� th� cho ng��i bi�t, h�n l� ng��i m� tr�n giang h� t��ng r�ng �� ch�t. <enter>"
				.." - �� s�m ch�t r�i?<enter>M�nh Ph�m: M�i vi�c ng��i �i�u tra r� r�i b�o cho ta bi�t,chuy�n n�y kh�ng n�n ch�m tr�. <enter>"
				.." - C� chuy�n g� l�p t�c b�o ta bi�t.<enter> Nh�t ��nh. X�o Nhi � ��, ng��i kh�ng c�n quay v�, ta �� s�p x�p �n th�a. <enter>",
					{{"T�i h� bi�t r�i", bil.OnCancel}})
	else
		CreateNewSayEx("<npc>Ai c�ng n�i ta r�t gi�i, th�t ra c�ng ch�ng c� g�. Duy c� �i�u l�m ta h�i l�ng l� ��c m� l�c tr� �� th�nh hi�n th�c.", {{"K�t th�c ��i tho�i", bil.OnCancel}})
	end
end