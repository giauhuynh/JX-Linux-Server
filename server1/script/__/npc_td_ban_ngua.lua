-- b�n ng�a t��ng d��ng

Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_horse_upgrade.lua")

function main(sel)
	if bilAllowHorseUpgrade == 0 then
		return Say("Thi�n h� ng��i c��i ng�a th� nhi�u, m� ng��i bi�t <enter>c�ch ch�m s�c ng�a h�i c� m�y ai?, v� thi�u hi�p c�  mu�n mua ng�a c�a ta kh�ng?", 2, 
		"Giao d�ch/yes", 
		"th�i/no");
	else
		return Say("Thi�n h� ng��i c��i ng�a th� nhi�u, m� ng��i bi�t <enter>c�ch ch�m s�c ng�a h�i c� m�y ai?, v� thi�u hi�p c�  mu�n mua ng�a c�a ta kh�ng?", 3, 
		"Giao d�ch/yes", 
		"V� vi�c Thu�n h�a, n�ng c�p chi�n m�/bilHorseUpgradeMain",
		"th�i/no");
	end
end;


function yes()
	Sale(46);
end;


function no()
end;
