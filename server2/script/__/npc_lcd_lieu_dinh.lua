Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function bilFuc_Main_LCD_LieuDinh_Death()
	if GetTask(5905) == 58 then
		Msg2Player("<color=orange>Thi�n Ho�ng Long Kh� m� ng��i mu�n t�m...m�t khi t�p h�p �� c� th� gi�p ��i T�ng �o�t l�i giang s�n, c�ng c� th� gi�p ��i Kim x�m chi�m ��i giang nam b�c, b� t�nh sinh linh �� th�n!")
	end
	bilNvTanThu:CompleteMissionWithTeam(58, "- Ch�ng ng� ta......cu�i c�ng ch�t d��i tay ng��i T�ng! - Li�u t��ng qu�n, ta v�i ng��i v�n kh�ng th� kh�ng o�n, nh�ng v� th� c�p ng��i c� th� gi�p ta c� ���c m�n �� �ang c�n. - B�n tr�......L�i c�a b�n Kim kh�ng ��ng tin......")
end