Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\_event\\vulan\\_inc.lua")
IncludeLib("RELAYLADDER");

-- nhËn ®­îc 800.000 ®iÓm exp
-- tèi ®a 500 c¸i
-- tû lÖ thÊp nhËn ®­îc c¸c vËt phÈm

function main()
	if GetTask(5964) >= 500 then
		Talk(1, "","§¹i hiÖp ®· sö dông B¸nh chay ®¹t ®Õn giíi h¹n cho phĞp 500 c¸i, ¨n nhiÒu sÏ lµm ph¶n c«ng lùc!")
		return 1
	end
	if CalcFreeItemCellCount() < 2 then Say("§¹i hiÖp cÇn ®Ó trèng hµnh trang cña m×nh 2 « míi cã thÓ dïng vËt phÈm!") return 1 end
	local bil_2 = random(1,150)
	local bil_1 = {
		[5] = {bilItem = {6, 1, 440, 0, 0,0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
		[9] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
		[14] = {bilItem = {6, 1, 440, 1, 0, 0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
		[19] = {bilItem = {6, 1, 122, 0, 0, 0, 0}, bilItemName = "Phóc Duyªn Lé (TiÓu)",},
		[22] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thiªn s¬n B¶o Lé",},
		[45] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B¸ch Qu¶ Lé",},
		[57] = {bilItem = {6, 1, 125, 0, 0, 0, 0}, bilItemName = "QuÕ Hoa Töu",},
		[69] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "LÖnh bµi Phong L¨ng §é",},
		[86] = {bilItem = {6, 1, 71, 0, 0, 0, 0}, bilItemName = "Tiªn Th¶o Lé",},
	}
	SetTask(5964, GetTask(5964) + 1)
	AddOwnExp(800000)
	Msg2Player("Tæng sè <color=yellow>B¸nh Chay<color> ®· dïng: <color=green>"..GetTask(5964).."<color> c¸i")
	Ladder_NewLadder(10234, GetName(), GetTask(5964), 1);
	if not(bil_1[bil_2]) then
		return 0
	else
		AddItem(unpack(bil_1[bil_2].bilItem))
		Msg2Player("May m¾n nhËn ®­îc: <color=yellow>"..bil_1[bil_2].bilItemName)
		return 0
	end
	return 0
end

function GetDesc( nItemIdx )
	return "<color=green>Cã thÓ sö dông trùc tiÕp hoÆc dïng ®Ó ®æi hép lÔ vËt<color><enter>Sù kiÖn Vu Lan m¸y chñ Vâ L©m Tİch Sö!"
end