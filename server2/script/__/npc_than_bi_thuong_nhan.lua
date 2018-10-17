
-- \script\__\npc_than_bi_thuong_nhan.lua

Include( "\\script\\global\\fuyuan.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_manh_do_pho_hoang_kim.lua")

function main()
	local tab_Content = {
		"Giao d�ch (Ph�c duy�n)/OnBuy", 
		"C�a h�ng M�t N�! (V�n l��ng)/OnBuyMask", 
		-- "C�a h�ng M�t T�ch! (Ph�c Duy�n)/OnBuyMatTich", 
		-- "D�ng M�nh �� Ph� [Ho�ng Kim] ��i �� ph� tr�n ph�i/#bilManhDoPho_ViewInfo(0,0,1)", 
		"K�t th�c ��i tho�i/OnCancel", 
	};
	Say ( "<color=Orange>Th�n B� Th��ng Nh�n: <color>Ta l� th��ng nh�n t� t�y v�c xa x�i v�n d�m t�i trung nguy�n �em theo r�t nhi�u k�   tr�n d� b�o, v� ��i hi�p c� mu�n trao ��i g� kh�ng?", getn(tab_Content), tab_Content);
end

function OnBuy()
	if bilOpenShopThanBiThuongNhan == 1 then
		Sale( 93, 2 );
	else
		Msg2Player("<color=yellow>C�a h�ng Th�n b� th��ng nh�n hi�n �ang ��ng, khi n�o m� l�i s� c� th�ng b�o!")
	end
end

function OnBuyMask()
	return Sale(187,1)
end

function OnBuyMatTich()
	Sale(189, 2)
end

function OnCancel()
end

