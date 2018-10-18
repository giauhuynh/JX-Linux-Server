Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function bil_Npc_CongTuTieu_Main()
	local name = GetName()  
	if (GetTask(5905) == 8) then
		bilNvTanThu:NextTask()
		CreateNewSayEx("<npc>"..name..": Ti�u C�ng T�.<enter>"
				.."- Xin l�i! T�i h� ph�i � b�n linh c�u c�a vong th�, b�t lu�n th� n�o ch� qua tang k� h�y n�i. <enter>"
				.."- ��ng qu� �au bu�n, nh�ng chuy�n n�y r�t h� tr�ng, n�i xong ta s� �i ngay.<enter> L�i ta n�i s� kh�ng thay ��i, ng��i v� �i! <enter>"
				.."- C�ng T�! T�i h� ��n ��y v� Ho�ng Kim L�n! <enter>Ha ha ha ha.......<enter>"
				.."- C�ng T�......<enter> Ho�ng Kim L�n, l�i l� Ho�ng Kim L�n. Ch�nh v� n� m� ta t�n gia b�i s�n, th�n b�i danh li�t h� th� n�y! <enter>"
				.."- C�ng T�......<enter> Ho�ng Kim L�n ta �� ��a cho th� h� Gi�i L�u Phong gi�. Y �ang � t�ng 1 D��c V��ng ��ng, n�u c� th� ��nh th�ng h�n, Ho�ng Kim L�n t�y ng��i l�y. <enter>"
				.."- �a t� C�ng t�! Xin ��ng qu� �au bu�n! <enter> B�n tr�! V� th� n�y m� ta ph�i m�t �i m�t mg��i th�n! Sau n�y ng��i s� hi�u! <enter>",
				{{"T�i h� bi�t r�i, �a �� ti�u c�ng t�", bil.OnCancel}})
	else 
		CreateNewSayEx("<npc>Giang h� tranh danh �o�t l�i. �� c� ch�t danh ti�ng ai c�ng ph�i tr� m�t c�i gi�. Ti�c thay c�i gi� m� ta ph�i tr� ch�nh l� v� c�a ta! �i! �i th� �i...!",{{"K�t th�c ��i tho�i", bil.OnCancel}})
	end
end	