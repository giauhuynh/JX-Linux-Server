Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function bilFuc_Main_TVB_HanGiangDocDieuTau()
	if GetTask(5905) == 29 then
		CreateNewSayEx("<npc>- Nh�t c�n nh�t l�p nhi�m b�nh sinh, nh�t giang y�n ba nh�t giang s�u. <enter>"
		.."- H�n L�o ti�n b�i! V�n b�i v�n an ng��i! <enter>- T�m ta c� vi�c g�? <enter>"
		.."- D��ng Bang ch� b�o ta ��n h�i �ng v�i chuy�n. <enter>- Chuy�n g�?<enter>"
		.."- N�m x�a B�o kh� Long �o�n m�t t�ch t�i Thi�n V��ng Bang, ng��i bi�t tung t�ch c�a n� kh�ng. <enter>- Chuy�n n�y �� l�u r�i, tr� nh� c�a ta ng�y c�ng k�m, nh�ng chuy�n x�a kia ta �� kh�ng c�n nh� n�a.<enter>"
		.."- L�o Ti�n B�i! Bang ch� �� s�m �i�u tra bi�t �ng �ang gi� n�! Ta kh�ng mu�n l�m �ng t�n th��ng. <enter>- Ha! Ha! Ti�ng ��n v� ng��i qu� kh�ng sai. Long �o�n �ang � trong tay ta, xem ng��i b�n l�nh ra sao!<enter>"
		.."- Xin �ng h�y giao ra. <enter>- Nh� n�m x�a Chung D��ng Nh� V��ng tung ho�nh giang ��ng ��nh h�, binh h�ng t��ng m�nh, ��nh thay ��i th� ��o t�n kh�c n�y. Nh�ng ��n cu�i c�ng c�ng th�t b�i? C� nh�ng chuy�n l� � tr�i, � tr�i kh�ng th� thay ��i! <enter>"
		.."- L�o Ti�n B�i! Chuy�n sau n�y �� sau n�y h�y n�i. B�y gi� �ng giao Long �o�n ra, ta c� th� b�o ��m t�nh m�ng c�a �ng.<enter>- Ha ha ha! Ta s�ng kh�ng bao l�u n�a, c�i m�ng gi� n�y th� c� ��ng g�? <enter>"
		.."- �ng... !<enter>- Mu�n Long �o�n th� h�y ��n ��y M� cung ��ng ��nh h�, ta s� ��i � ��!",
		{{"V�n b�i s� ��n �� ngay!", HanGiangDocDieuTau_Step}})
	else
		CreateNewSayEx("<npc>��c c�u h�n giang, t�m nh� ch�nh th�y, ung dung t� t�i!", {{"K�t th�c ��i tho�i!", no}})
	end
end

function HanGiangDocDieuTau_Step()
	bilNvTanThu:NextTask()
end

function HanGiangDocDieuTau_Death()
	bilNvTanThu:CompleteMissionWithTeam(30, "- H�n l�o ti�n b�i xin b�o tr�ng, ta v� s� thay �ng n�i... <enter>- Kh�ng c�n ��u! B�n tr� h�y nh� l�y: ng�y n�o Long Kh� c� �� b�, thi�n h� s� ��i lo�n.")
end

function no() return end