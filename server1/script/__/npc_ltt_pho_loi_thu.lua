Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function Fuc_Main_LTT_PhoLoiThu()
	if GetTask(5905) == 44 then
		if Pay(10000) == 1 then
			bilNvTanThu:Npc_Msg({44}, "Kh�! Kh�!....L�i ��n t�m l�o c� vi�c g�?")
		else
			Msg2Player("Ph� L�i Th� y�u c�u 1 v�n l��ng m�i c� th� cung c�p tin t�c!")
			return CreateNewSayEx("<npc>-Kh�! Kh�!....L�i ��n t�m l�o c� vi�c g�?<enter>- Th�......�ng xem nhi�u ��y ti�n c� �� kh�ng?<enter>- Tin t�c c� b�n c�a ta ��ng gi� 1 v�n l��ng b�c, ng��i ngh�o ��n th� sao!", {{"���c r�i, ��i tin c�a ta!", bil.OnCancel}})
		end
	elseif GetTask(5905) == 46 then
		return bilNvTanThu:Npc_Msg({46}, "Kh�! Kh�!....L�i ��n t�m l�o c� vi�c g�?")
	elseif GetTask(5905) == 50 then
		return bilNvTanThu:Npc_Msg({50}, "Kh�! Kh�!....L�i ��n t�m l�o c� vi�c g�?")
	else
		return CreateNewSayEx("<npc>Kh�! Kh�!....L�i ��n t�m l�o c� vi�c g�?", {{"K�t th�c ��i tho�i!", bil.OnCancel}})
	end
end
