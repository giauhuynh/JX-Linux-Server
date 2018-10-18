Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function bilFuc_Main_TL_DaiSuKhongTich()
	if GetTask(5905) == 32 then
		CreateNewSayEx("<npc>- A Di �� Ph�t!  Th� ch� s�t kh� qu� n�ng. <enter>"
		.."- Su�t ng�y ch� bi�t ch�m gi�t, ���ng nhi�n s�t kh� n�ng r�i! <enter>- T�o nhi�u nghi�p �c, Th� ch� ng�y sau s� b� ��y xu�ng ��a ng�c A T�,  kh� �i v� bi�n, quay ��u l� b�. <enter>"
		.."- Ta kh�ng th� quay l�i ���c n�a. <enter> Ch� c�n b� ���c l� c� th� quay ��u. <enter>"
		.."- Ta g�t ���c m�nh, kh�ng g�t ���c v�n d�n. <enter> B� T�t s� ph� h� cho k� thi�n t�m! A Di �� Ph�t! <enter>"
		.."- Th�n T�ng! ��o b�t ��ng b�t t��ng vi m�u, xin giao hai b� Th�n kh� m� qu� t� �ang gi�. <enter> H�y ra c�nh r�ng � h�u s�n Thi�u L�m, B�n T�ng th� gi�o v�i chi�u s� n�i! <enter>"
		,{{"V�n b�i s� ��n �� ngay!", DaiSuKhongTich_Step}})
	else
		CreateNewSayEx("<npc>Nh�n qu� tr�n ��i �� ��nh s�n. A Di �� Ph�t!!", {{"K�t th�c ��i tho�i!", no}})
	end
end

function DaiSuKhongTich_Step()
	bilNvTanThu:NextTask()
end

function DaiSuKhongTich_Death()
	bilNvTanThu:CompleteMissionWithTeam(33, "A Di �� Ph�t, Th�n Kh� � ��y, Th� ch� l�y �i.")
end

function no() return end