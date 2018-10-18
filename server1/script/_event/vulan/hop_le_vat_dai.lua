Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\_event\\vulan\\_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_droprate.lua")
IncludeLib("RELAYLADDER");

-- nhËn liªn tiÕp 20 lÇn, mçi lÇn 2.000.000 exp
-- tèi ®a 10 c¸i
-- tû lÖ nhËn ®­îc c¸c vËt phÈm gi¸ trÞ

function main()
	if GetTask(5960) >= 10 then
		Talk(1, "","§¹i hiÖp ®· sö dông Hép LÔ VËt §¹i ®¹t ®Õn giíi h¹n cho phÐp 10 c¸i, ¨n nhiÒu sÏ lµm ph¶n c«ng lùc!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then Say("§¹i hiÖp cÇn ®Ó trèng hµnh trang cña m×nh 30 « míi cã thÓ dïng vËt phÈm!") return 1 end
	SetTask(5960, GetTask(5960) + 1)
	Msg2Player("Tæng sè <color=yellow>Hép lÔ vËt ®¹i<color> ®· dïng: <color=green>"..GetTask(5960).."<color> c¸i")
	Ladder_NewLadder(10126, GetName(), GetTask(5960), 1);
	for i = 1, 20 do
		AddOwnExp(2000000)
		Msg2Player("<color=yellow>NhËn ®­îc 2.000.000 Exp!")
	end
	local bil_5 = random(6, 9)
	for i = 1, bil_5 do
		bilGetAwardDai()
	end
	for i = 1, 3 do
		local bilRandomFac = random(1,10)
		local bilRandomFacItem = random(1, getn(_bilTbDropAtlasCompound[bilRandomFac]))
		local bil_6 = AddItem(_bilTbDropAtlasCompound[bilRandomFac][bilRandomFacItem][1][1],_bilTbDropAtlasCompound[bilRandomFac][bilRandomFacItem][1][2],_bilTbDropAtlasCompound[bilRandomFac][bilRandomFacItem][1][3], 1, 0,0)
		local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
		ITEM_SetExpiredTime(bil_6, nExpiredDate);
		SyncItem(bil_6);
		Msg2Player("May m¾n nhËn ®­îc: <color=yellow>".._bilTbDropAtlasCompound[bilRandomFac][bilRandomFacItem][2])
	end
	return 0
end

function bilGetAwardDai()
	local bil_2 = 2
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
		{bilItemParam = {6, 1, 26, 1, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "Vâ L©m MËt TÞch"},
		{bilItemParam = {6, 1, 22, 1, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "TÈy Tñy Kinh"},
		{bilItemParam = {6, 1, 1448, 1, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "M¹c B¾c TruyÒn Tèng LÖnh"},
		{bilItemParam = {6, 1, 1427, 1, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "Tö MÉu LÖnh"},
		{bilItemParam = {4,239, 0, 0, 0, 0, 0}, bilItemEndDay = 0, bilItemName = "Tö Thñy Tinh"},
		{bilItemParam = {6, 1, 391, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - An Bang kª huyÕt th¹ch giíi chØ"},
		{bilItemParam = {6, 1, 390, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - An Bang ®iÒn th¹ch ngäc béi"},
		{bilItemParam = {6, 1, 389, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - An Bang cóc hoa th¹ch chØ hoµn"},
		{bilItemParam = {6, 1, 388, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - An Bang b¨ng tinh th¹ch h¹ng liªn"},
		{bilItemParam = {6, 1, 387, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - §Þnh quèc ng©n tµm yªu ®¸i"},
		{bilItemParam = {6, 1, 386, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - §Þnh quèc tö ®»ng hé uyÓn"},
		{bilItemParam = {6, 1, 385, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - §Þnh quèc xÝch quyªn nhuyÔn ngoa"},
		{bilItemParam = {6, 1, 384, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - §Þnh quèc « xa ph¸t qu¸n"},
		{bilItemParam = {6, 1, 383, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - §Þnh quèc thanh xa tr­êng sam"},
		{bilItemParam = {6, 1, 1403, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - HiÖp cèt thuyÕt huyÕt sam"},
		{bilItemParam = {6, 1, 1404, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - HiÖp cèt ®a t×nh hoµn"},
		{bilItemParam = {6, 1, 1405, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - HiÖp cèt ®an t©m giíi"},
		{bilItemParam = {6, 1, 1406, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - HiÖp cèt t×nh ý kÕt"},
		{bilItemParam = {6, 1, 1407, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - Nhu t×nh c©n quèc nghª th­êng"},
		{bilItemParam = {6, 1, 1408, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - Nhu t×nh thôc n÷ h¹ng liªn"},
		{bilItemParam = {6, 1, 1409, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - Nhu t×nh phông nghi giíi chØ"},
		{bilItemParam = {6, 1, 1410, 1, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "§å phæ - Nhu t×nh tuÖ t©m ngäc béi"},

		{bilItemParam = {0,10,5,6, 0, 0}, bilItemEndDay = 30, bilItemName = "ThÇn m· ¤ V©n §¹p TuyÕt"},
		{bilItemParam = {0,10,5,7, 0, 0}, bilItemEndDay = 30, bilItemName = "ThÇn m· XÝch Thè"},
		{bilItemParam = {0,10,5,8, 0, 0}, bilItemEndDay = 30, bilItemName = "ThÇn m· TuyÖt ¶nh"},
		{bilItemParam = {0,10,5,9, 0, 0}, bilItemEndDay = 30, bilItemName = "ThÇn m· §Ých L«"},
		{bilItemParam = {4, 923, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh Nhu T×nh tuÖ t©m ngäc béi 1"},
		{bilItemParam = {4, 924, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh Nhu T×nh tuÖ t©m ngäc béi 2"},
		{bilItemParam = {4, 925, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh Nhu T×nh tuÖ t©m ngäc béi 3"},
		{bilItemParam = {4, 926, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh Nhu T×nh tuÖ t©m ngäc béi 4"},
		{bilItemParam = {4, 919, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh Nhu T×nh phông nghi giíi chØ 1"},
		{bilItemParam = {4, 920, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh Nhu T×nh phông nghi giíi chØ 2"},
		{bilItemParam = {4, 921, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh Nhu T×nh phông nghi giíi chØ 3"},
		{bilItemParam = {4, 922, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh Nhu T×nh phông nghi giíi chØ 4"},
		{bilItemParam = {4, 915, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh Nhu T×nh thôc n÷ h¹ng liªn 1"},
		{bilItemParam = {4, 916, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh Nhu T×nh thôc n÷ h¹ng liªn 2"},
		{bilItemParam = {4, 917, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh Nhu T×nh thôc n÷ h¹ng liªn 3"},
		{bilItemParam = {4, 918, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh Nhu T×nh thôc n÷ h¹ng liªn 4"},
		{bilItemParam = {4, 777, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh Nhu T×nh c©n quèc nghª th­êng 1"},
		{bilItemParam = {4, 778, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh Nhu T×nh c©n quèc nghª th­êng 2"},
		{bilItemParam = {4, 779, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh Nhu T×nh c©n quèc nghª th­êng 3"},
		{bilItemParam = {4, 780, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh Nhu T×nh c©n quèc nghª th­êng 4"},
		{bilItemParam = {4, 781, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh Nhu T×nh c©n quèc nghª th­êng 5"},
		{bilItemParam = {4, 782, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh Nhu T×nh c©n quèc nghª th­êng 6"},
		{bilItemParam = {4, 771, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh HiÖp Cèt t×nh ý kÕt 1"},
		{bilItemParam = {4, 772, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh HiÖp Cèt t×nh ý kÕt 2"},
		{bilItemParam = {4, 773, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh HiÖp Cèt t×nh ý kÕt 3"},
		{bilItemParam = {4, 774, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh HiÖp Cèt t×nh ý kÕt 4"},
		{bilItemParam = {4, 775, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh HiÖp Cèt t×nh ý kÕt 5"},
		{bilItemParam = {4, 776, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh HiÖp Cèt t×nh ý kÕt 6"},
		{bilItemParam = {4, 911, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh HiÖp Cèt ®an t©m giíi 1"},
		{bilItemParam = {4, 912, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh HiÖp Cèt ®an t©m giíi 2"},
		{bilItemParam = {4, 913, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh HiÖp Cèt ®an t©m giíi 3"},
		{bilItemParam = {4, 914, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh HiÖp Cèt ®an t©m giíi 4"},
		{bilItemParam = {4, 907, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh HiÖp Cèt ®a t×nh hoµn 1"},
		{bilItemParam = {4, 908, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh HiÖp Cèt ®a t×nh hoµn 2"},
		{bilItemParam = {4, 909, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh HiÖp Cèt ®a t×nh hoµn 3"},
		{bilItemParam = {4, 910, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh HiÖp Cèt ®a t×nh hoµn 4"},
		{bilItemParam = {4, 903, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh HiÖp Cèt thuyÕt huyÕt sam 1"},
		{bilItemParam = {4, 904, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh HiÖp Cèt thuyÕt huyÕt sam 2"},
		{bilItemParam = {4, 905, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh HiÖp Cèt thuyÕt huyÕt sam 3"},
		{bilItemParam = {4, 906, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh HiÖp Cèt thuyÕt huyÕt sam 4"},
		{bilItemParam = {4, 927, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc thanh xa tr­êng sam 1"},
		{bilItemParam = {4, 928, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc thanh xa tr­êng sam 2"},
		{bilItemParam = {4, 929, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc thanh xa tr­êng sam 3"},
		{bilItemParam = {4, 930, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc thanh xa tr­êng sam 4"},
		{bilItemParam = {4, 783, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc « xa ph¸t qu¸n 1"},
		{bilItemParam = {4, 784, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc « xa ph¸t qu¸n 2"},
		{bilItemParam = {4, 785, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc « xa ph¸t qu¸n 3"},
		{bilItemParam = {4, 786, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc « xa ph¸t qu¸n 4"},
		{bilItemParam = {4, 787, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc « xa ph¸t qu¸n 5"},
		{bilItemParam = {4, 788, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc « xa ph¸t qu¸n 6"},
		{bilItemParam = {4, 931, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc xÝch quyªn nhuyÔn ngoa 1"},
		{bilItemParam = {4, 932, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc xÝch quyªn nhuyÔn ngoa 2"},
		{bilItemParam = {4, 933, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc xÝch quyªn nhuyÔn ngoa 3"},
		{bilItemParam = {4, 934, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc xÝch quyªn nhuyÔn ngoa 4"},
		{bilItemParam = {4, 935, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc tö ®»ng hé uyÓn 1"},
		{bilItemParam = {4, 936, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc tö ®»ng hé uyÓn 2"},
		{bilItemParam = {4, 937, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc tö ®»ng hé uyÓn 3"},
		{bilItemParam = {4, 938, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc tö ®»ng hé uyÓn 4"},
		{bilItemParam = {4, 939, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc ng©n tµm yªu ®¸i 1"},
		{bilItemParam = {4, 940, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc ng©n tµm yªu ®¸i 2"},
		{bilItemParam = {4, 941, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc ng©n tµm yªu ®¸i 3"},
		{bilItemParam = {4, 942, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh §Þnh Quèc ng©n tµm yªu ®¸i 4"},
		{bilItemParam = {4, 747, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang b¨ng tinh th¹ch h¹ng liªn 1"},
		{bilItemParam = {4, 748, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang b¨ng tinh th¹ch h¹ng liªn 2"},
		{bilItemParam = {4, 749, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang b¨ng tinh th¹ch h¹ng liªn 3"},
		{bilItemParam = {4, 750, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang b¨ng tinh th¹ch h¹ng liªn 4"},
		{bilItemParam = {4, 751, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang b¨ng tinh th¹ch h¹ng liªn 5"},
		{bilItemParam = {4, 752, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang b¨ng tinh th¹ch h¹ng liªn 6"},
		{bilItemParam = {4, 753, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang cóc hoa th¹ch chØ hoµn 1"},
		{bilItemParam = {4, 754, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang cóc hoa th¹ch chØ hoµn 2"},
		{bilItemParam = {4, 755, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang cóc hoa th¹ch chØ hoµn 3"},
		{bilItemParam = {4, 756, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang cóc hoa th¹ch chØ hoµn 4"},
		{bilItemParam = {4, 757, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang cóc hoa th¹ch chØ hoµn 5"},
		{bilItemParam = {4, 758, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang cóc hoa th¹ch chØ hoµn 6"},
		{bilItemParam = {4, 759, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang ®iÒn hoµng th¹ch ngäc béi 1"},
		{bilItemParam = {4, 760, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang ®iÒn hoµng th¹ch ngäc béi 2"},
		{bilItemParam = {4, 761, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang ®iÒn hoµng th¹ch ngäc béi 3"},
		{bilItemParam = {4, 762, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang ®iÒn hoµng th¹ch ngäc béi 4"},
		{bilItemParam = {4, 763, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang ®iÒn hoµng th¹ch ngäc béi 5"},
		{bilItemParam = {4, 764, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang ®iÒn hoµng th¹ch ngäc béi 6"},
		{bilItemParam = {4, 765, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang kª huyÕt th¹ch giíi chØ 1"},
		{bilItemParam = {4, 766, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang kª huyÕt th¹ch giíi chØ 2"},
		{bilItemParam = {4, 767, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang kª huyÕt th¹ch giíi chØ 3"},
		{bilItemParam = {4, 768, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang kª huyÕt th¹ch giíi chØ 4"},
		{bilItemParam = {4, 769, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang kª huyÕt th¹ch giíi chØ 5"},
		{bilItemParam = {4, 770, 0, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "M¶nh An Bang kª huyÕt th¹ch giíi chØ 6"},
		{bilItemParam = {0,10,5,10, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "ThÇn m· ChiÕu D¹ Ngäc S­ Tö"},
		{bilItemParam = {0,10,8,10, 0, 0, 0}, bilItemEndDay = 30, bilItemName = "ThÇn m· Phi V©n"},
	}
	
	if bil_2 == 2 then
		local bil_3 = random(1, getn(bil_1))
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
end

function GetDesc( nItemIdx )
	return "<color=green>VËt phÈm dïng ®Ó d©ng tÆng c¸c bËc cha mÑ nh©n ngµy lÔ Vu Lan<color><enter><color=yellow>cã gi¸ trÞ rÊt lín<color><enter>Sù kiÖn Vu Lan m¸y chñ Vâ L©m!"
end