
-- \script\__\npc_than_bi_thuong_nhan.lua

Include( "\\script\\global\\fuyuan.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_manh_do_pho_hoang_kim.lua")

function main()
	local tab_Content = {
		"Giao dÞch (Phóc duyªn)/OnBuy", 
		"Cöa hµng MÆt N¹! (V¹n l­îng)/OnBuyMask", 
		-- "Cöa hµng MËt TÞch! (Phóc Duyªn)/OnBuyMatTich", 
		-- "Dïng M¶nh §å Phæ [Hoµng Kim] ®æi ®å phæ trÊn ph¸i/#bilManhDoPho_ViewInfo(0,0,1)", 
		"KÕt thóc ®èi tho¹i/OnCancel", 
	};
	Say ( "<color=Orange>ThÇn BÝ Th­¬ng Nh©n: <color>Ta lµ th­¬ng nh©n tõ t©y vùc xa x«i v¹n dÆm tíi trung nguyªn ®em theo rÊt nhiÒu kú   tr©n dÞ b¶o, vÞ ®¹i hiÖp cã muèn trao ®æi g× kh«ng?", getn(tab_Content), tab_Content);
end

function OnBuy()
	if bilOpenShopThanBiThuongNhan == 1 then
		Sale( 93, 2 );
	else
		Msg2Player("<color=yellow>Cöa hµng ThÇn bÝ th­¬ng nh©n hiÖn ®ang ®ãng, khi nµo më l¹i sÏ cã th«ng b¸o!")
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

