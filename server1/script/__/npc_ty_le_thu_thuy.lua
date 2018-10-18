Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function Fuc_Main_TY_LeThuThuy()
	if GetTask(5905) == 25 then
		CreateNewSayEx("<npc>- Ng��i l� ai? ��n Th�y Y�n m�n v�i m�c ��ch g�? <enter>"
		.."- Ta l� ng��i trong h�i, Nam B�ng b�o ta ��n t�m c�. <enter>- H�! Ta �� n�i v�i h�, kh�ng n�n t�m nh�ng k� v� d�ng. <enter>"
		.."- Ta v�n c�ng ch�ng th�ch ��ng h�nh v�i c�! <enter>- A! Kh�ng ng� ng��i c�ng c� t�nh c�ch. <enter>"
		.."- Ta s� cho c� th�y b�n l�nh c�a ta! <enter>- N�i hay l�m! Kh�u kh� c�ng kh�ng t�. Ki�m m�n c� T� T� L�c �ang gi� 1 b�o v�t. ��n �� l�y n� v� cho ta. <enter>"
		.."- L� c�i g�? <enter>- 1 b� �o gi�p--B�ch Long T�c. <enter>"
		.."- �ng ta � ��u. <enter>- Kinh Ho�ng ��ng, l� 1 t�n t��ng ph�n qu�c.<enter>"
		.."- L�i th�m 1 t�n t��ng ph�n qu�c.",
			{{"���c r�i, ��i tin c�a ta!", TY_LeThuThuy_Step_1}}
		)
	elseif GetTask(5905) == 27 then
		CreateNewSayEx("<npc>- B�ch Long T�c l� b�o kh� trong truy�n thuy�t. Hay qu�! <enter>"
		.."- B�o Kh�? Ch�ng l� ��y l� Thi�n Ho�ng Long Kh�. <enter>- Ng��i bi�t Thi�n Ho�ng Long Kh�? <enter>"
		.."- Ta nghe th� r�n nh�c ��n. <enter>- Th� r�n? Kh�ng ng� tr�n ��i n�y ng��i bi�t chuy�n n�y c�ng kh�ng �t. B�ng h�u, ta �� xem th��ng ng��i. <enter>"
		.."- ��u v� L�m Uy�n Nhai m� th�i! V� Long Kh�, c� bi�t ���c bao nhi�u? <enter> Thi�n Ho�ng Long Kh� v�i b� m�t c�a t� ch�c c� li�n quan, ta ch� c� th� n�i v�i ng��i b�y nhi�u. Vi�c c�a ng��i �� xong, gi� h�y quay v� g�p Ph� Nam B�ng.",
			{{"���c r�i!", TY_LeThuThuy_Step_2}}
		)
	else
		return Talk(1, "","Ta kh�ng c� g� �� n�i!")
	end
end

function TY_LeThuThuy_Step_1()
	bilNvTanThu:NextTask()
end

function TY_LeThuThuy_Step_2()
	bilNvTanThu:NextTask()
end