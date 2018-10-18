Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\_event\\vulan\\_inc.lua")
IncludeLib("RELAYLADDER");

-- nhËn ®­îc 1.200.000 ®iÓm exp
-- tèi ®a 500 c¸i
-- tû lÖ nhËn ®­îc c¸c vËt phÈm

function main()
	if GetTask(5963) >= 500 then
		Talk(1, "","§¹i hiÖp ®· sö dông Giá Hoa Hång ®¹t ®Õn giíi h¹n cho phĞp 500 c¸i, ¨n nhiÒu sÏ lµm ph¶n c«ng lùc!")
		return 1
	end
	if CalcFreeItemCellCount() < 2 then Say("§¹i hiÖp cÇn ®Ó trèng hµnh trang cña m×nh 2 « míi cã thÓ dïng vËt phÈm!") return 1 end
	-- local bil_2 = random(1,5)
	local bil_2 = random(1,4)
	local bil_1 = {
		{bilItemParam = {6, 1, 440, 0, 0,0, 0}, bilItemEndDay = 0, bilItemName = "M¶nh s¬n hµ x· t¾c x100"},
		{bilItemParam = {6, 1, 910, 0, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "Bao D­îc hoµn"},
		{bilItemParam = {6, 1, 122, 0, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "Phóc Duyªn Lé (TiÓu)"},
		{bilItemParam = {6, 1, 72, 0, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "Thiªn s¬n B¶o Lé"},
		{bilItemParam = {6, 1, 73, 0, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "B¸ch Qu¶ Lé"},
		{bilItemParam = {6, 1, 125, 0, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "QuÕ Hoa Töu"},
		{bilItemParam = {4, 489, 0, 0, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "LÖnh bµi Phong L¨ng §é"},
		{bilItemParam = {6, 1, 71, 0, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "Tiªn Th¶o Lé"},
		{bilItemParam = {4, 353, 0, 0, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "Tinh Hång B¶o Th¹ch"},
		{bilItemParam = {6, 1, 26, 1, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "Vâ L©m MËt TŞch"},
		{bilItemParam = {6, 1, 22, 1, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "TÈy Tñy Kinh"},
		{bilItemParam = {6, 1, 1448, 1, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "M¹c B¾c TruyÒn Tèng LÖnh"},
		{bilItemParam = {6, 1, 1427, 1, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "Tö MÉu LÖnh"},
		{bilItemParam = {4,239, 0, 0, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "Tö Thñy Tinh"},
		{bilItemParam = {6, 1, 391, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - An Bang kª huyÕt th¹ch giíi chØ"},
		{bilItemParam = {6, 1, 390, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - An Bang ®iÒn th¹ch ngäc béi"},
		{bilItemParam = {6, 1, 389, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - An Bang cóc hoa th¹ch chØ hoµn"},
		{bilItemParam = {6, 1, 388, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - An Bang b¨ng tinh th¹ch h¹ng liªn"},
		{bilItemParam = {6, 1, 387, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - §Şnh quèc ng©n tµm yªu ®¸i"},
		{bilItemParam = {6, 1, 386, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - §Şnh quèc tö ®»ng hé uyÓn"},
		{bilItemParam = {6, 1, 385, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - §Şnh quèc xİch quyªn nhuyÔn ngoa"},
		{bilItemParam = {6, 1, 384, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - §Şnh quèc « xa ph¸t qu¸n"},
		{bilItemParam = {6, 1, 383, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - §Şnh quèc thanh xa tr­êng sam"},
		{bilItemParam = {6, 1, 1403, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - HiÖp cèt thuyÕt huyÕt sam"},
		{bilItemParam = {6, 1, 1404, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - HiÖp cèt ®a t×nh hoµn"},
		{bilItemParam = {6, 1, 1405, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - HiÖp cèt ®an t©m giíi"},
		{bilItemParam = {6, 1, 1406, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - HiÖp cèt t×nh ı kÕt"},
		{bilItemParam = {6, 1, 1407, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - Nhu t×nh c©n quèc nghª th­êng"},
		{bilItemParam = {6, 1, 1408, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - Nhu t×nh thôc n÷ h¹ng liªn"},
		{bilItemParam = {6, 1, 1409, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - Nhu t×nh phông nghi giíi chØ"},
		{bilItemParam = {6, 1, 1410, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - Nhu t×nh tuÖ t©m ngäc béi"},
	}
	SetTask(5963, GetTask(5963) + 1)
	AddOwnExp(1200000)
	Msg2Player("Tæng sè <color=yellow>Giá Hoa Hång<color> ®· dïng: <color=green>"..GetTask(5963).."<color> c¸i")
	Ladder_NewLadder(10125, GetName(), GetTask(5963), 1);
	if bil_2 == 3 then
		-- local bil_3 = random(1, getn(bil_1) + 100)
		local bil_3 = random(1, getn(bil_1) + 30)
		if not(bil_1[bil_3]) then return 0
		else
			local bil_4 = AddItem(unpack(bil_1[bil_3].bilItemParam))
			if bil_1[bil_3].bilItemEndDay > 0 then
				local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
				ITEM_SetExpiredTime(bil_4, nExpiredDate);
				SyncItem(bil_4);
			end
			Msg2Player("May m¾n nhËn ®­îc: <color=yellow>"..bil_1[bil_3].bilItemName)
			return 0
		end
		return 0
	end
	return 0
end

function GetDesc( nItemIdx )
	return "<color=green>VËt phÈm dïng ®Ó d©ng tÆng c¸c bËc cha mÑ nh©n ngµy lÔ Vu Lan<color><enter><color=yellow>cã gi¸ trŞ kh«ng nhá<color><enter>Sù kiÖn Vu Lan m¸y chñ Vâ L©m Tİch Sö!"
end