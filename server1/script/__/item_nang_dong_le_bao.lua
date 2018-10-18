
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
	if bilDenyAfterOpenTopRacing == 1 then
		Msg2Player("VËt phÈm nµy chØ cã thÓ sö dông sau ®ua TOP!")
		return 1
	end
	local bil_t_1 = {
		-- bil_1: th«ng sè item - bil_2: tªn item - bil_3: tû lÖ nhËn ®­îc - bil_4: th«ng b¸o kªnh thÕ giíi
		{bil_1 = {6,1,388,1,0,0}, bil_2 = "§å phæ An Bang", bil_3 = 1, bil_4 = 1},
		{bil_1 = {6,1,389,1,0,0}, bil_2 = "§å phæ An Bang", bil_3 = 2, bil_4 = 1},
		{bil_1 = {6,1,390,1,0,0}, bil_2 = "§å phæ An Bang", bil_3 = 3, bil_4 = 1},
		{bil_1 = {6,1,391,1,0,0}, bil_2 = "§å phæ An Bang", bil_3 = 4, bil_4 = 1},
		
		{bil_1 = {6,1,383,1,0,0}, bil_2 = "§å phæ §Şnh Quèc", bil_3 = 4, bil_4 = 1},
		{bil_1 = {6,1,384,1,0,0}, bil_2 = "§å phæ §Şnh Quèc", bil_3 = 5, bil_4 = 1},
		{bil_1 = {6,1,385,1,0,0}, bil_2 = "§å phæ §Şnh Quèc", bil_3 = 6, bil_4 = 1},
		{bil_1 = {6,1,386,1,0,0}, bil_2 = "§å phæ §Şnh Quèc", bil_3 = 5, bil_4 = 1},
		{bil_1 = {6,1,387,1,0,0}, bil_2 = "§å phæ §Şnh Quèc", bil_3 = 6, bil_4 = 1},
		
		{bil_1 = {6,1,1403,1,0,0}, bil_2 = "§å phæ HiÖp Cèt", bil_3 = 6, bil_4 = 0},
		{bil_1 = {6,1,1404,1,0,0}, bil_2 = "§å phæ HiÖp Cèt", bil_3 = 7, bil_4 = 0},
		{bil_1 = {6,1,1405,1,0,0}, bil_2 = "§å phæ HiÖp Cèt", bil_3 = 8, bil_4 = 0},
		{bil_1 = {6,1,1406,1,0,0}, bil_2 = "§å phæ HiÖp Cèt", bil_3 = 9, bil_4 = 0},
		
		{bil_1 = {6,1,1407,1,0,0}, bil_2 = "§å phæ Nhu T×nh", bil_3 = 6, bil_4 = 0},
		{bil_1 = {6,1,1408,1,0,0}, bil_2 = "§å phæ Nhu T×nh", bil_3 = 7, bil_4 = 0},
		{bil_1 = {6,1,1409,1,0,0}, bil_2 = "§å phæ Nhu T×nh", bil_3 = 8, bil_4 = 0},
		{bil_1 = {6,1,14010,1,0,0}, bil_2 = "§å phæ Nhu T×nh", bil_3 = 9, bil_4 = 0},
		
		{bil_1 = {1, 204}, bil_2 = "Trang bŞ Hång ¶nh", bil_3 = 16, bil_4 = 1},
		{bil_1 = {1, 205}, bil_2 = "Trang bŞ Hång ¶nh", bil_3 = 17, bil_4 = 1},
		{bil_1 = {1, 206}, bil_2 = "Trang bŞ Hång ¶nh", bil_3 = 18, bil_4 = 1},
		{bil_1 = {1, 207}, bil_2 = "Trang bŞ Hång ¶nh", bil_3 = 19, bil_4 = 1},
		
		{bil_1 = {4,353,1,1,0,0}, bil_2 = "Tinh hång b¶o th¹ch", bil_3 = 15, bil_4 = 0},
		{bil_1 = {4,238,1,1,0,0}, bil_2 = "Lam thñy tinh", bil_3 = 15, bil_4 = 0},
		{bil_1 = {4,239,1,1,0,0}, bil_2 = "Tö thñy tinh", bil_3 = 15, bil_4 = 0},
		{bil_1 = {4,240,1,1,0,0}, bil_2 = "Lôc thñy tinh", bil_3 = 10, bil_4 = 0},
		{bil_1 = {4,489,1,1,0,0}, bil_2 = "LÖnh bµi phong l¨ng ®é", bil_3 = 15, bil_4 = 0},
		
		{bil_1 = {6,1,122,1,0,0}, bil_2 = "Phóc duyªn TiÓu", bil_3 = 40, bil_4 = 0},
		{bil_1 = {6,1,123,1,0,0}, bil_2 = "Phóc duyªn Trung", bil_3 = 30, bil_4 = 0},
		{bil_1 = {6,1,124,1,0,0}, bil_2 = "Phóc duyªn §¹i", bil_3 = 15, bil_4 = 0},
		
		{bil_1 = {6,1,71,1,0,0}, bil_2 = "Tiªn th¶o lé", bil_3 = 20, bil_4 = 0},
		{bil_1 = {6,1,72,1,0,0}, bil_2 = "Thiªn s¬n th¶o lé", bil_3 = 30, bil_4 = 0},
		{bil_1 = {6,1,73,1,0,0}, bil_2 = "B¸ch qu¶ lé", bil_3 = 30, bil_4 = 0},
		
		{bil_1 = {2, 10000}, bil_2 = "TiÒn v¹n", bil_3 = 100, bil_4 = 0},
		{bil_1 = {2, 50000}, bil_2 = "TiÒn v¹n", bil_3 = 60, bil_4 = 0},
		{bil_1 = {2, 100000}, bil_2 = "TiÒn v¹n", bil_3 = 40, bil_4 = 0},
		{bil_1 = {2, 200000}, bil_2 = "TiÒn v¹n", bil_3 = 20, bil_4 = 1},
		{bil_1 = {2, 500000}, bil_2 = "TiÒn v¹n", bil_3 = 15, bil_4 = 1},
		
		{bil_1 = {3, 1000000}, bil_2 = "§iÓm kinh nghiÖm", bil_3 = 60, bil_4 = 0},
		{bil_1 = {3, 2000000}, bil_2 = "§iÓm kinh nghiÖm", bil_3 = 50, bil_4 = 0},
		{bil_1 = {3, 3000000}, bil_2 = "§iÓm kinh nghiÖm", bil_3 = 40, bil_4 = 1},
		{bil_1 = {3, 4000000}, bil_2 = "§iÓm kinh nghiÖm", bil_3 = 30, bil_4 = 1},
		{bil_1 = {3, 5000000}, bil_2 = "§iÓm kinh nghiÖm", bil_3 = 15, bil_4 = 1},
		
		{bil_1 = {5, 1}, bil_2 = "TiÒn ®ång", bil_3 = 20, bil_4 = 1},
		{bil_1 = {5, 2}, bil_2 = "TiÒn ®ång", bil_3 = 12, bil_4 = 1},
		{bil_1 = {5, 3}, bil_2 = "TiÒn ®ång", bil_3 = 8, bil_4 = 1},
		{bil_1 = {5, 4}, bil_2 = "TiÒn ®ång", bil_3 = 5, bil_4 = 1},
		{bil_1 = {5, 5}, bil_2 = "TiÒn ®ång", bil_3 = 2, bil_4 = 1},
		
		{bil_1 = {6,1,400,90,random(0,4),0}, bil_2 = "S¸t thñ gi¶n", bil_3 = 15, bil_4 = 0},
		{bil_1 = {6,1,1987,1,0,0}, bil_2 = "B¾c ®Èu thuÇn m· thuËt", bil_3 = 8, bil_4 = 1},
		{bil_1 = {6,1,1617,1,0,0}, bil_2 = "Viªm ®Õ lÖnh", bil_3 = 15, bil_4 = 0},
		
		{bil_1 = {6,1,4302,1,0,0}, bil_2 = "Phóc lîi ®¬n [ThÇn m·]", bil_3 = 50, bil_4 = 0},
		{bil_1 = {6,1,4303,1,0,0}, bil_2 = "Phóc lîi ®¬n [Hång ¶nh]", bil_3 = 60, bil_4 = 0},
		{bil_1 = {6,1,4304,1,0,0}, bil_2 = "Phóc lîi ®¬n [Nhu t×nh]", bil_3 = 60, bil_4 = 0},
		{bil_1 = {6,1,4305,1,0,0}, bil_2 = "Phóc lîi ®¬n [HiÖp cèt]", bil_3 = 50, bil_4 = 0},
		{bil_1 = {6,1,4306,1,0,0}, bil_2 = "Phóc lîi ®¬n [§Şnh quèc]", bil_3 = 40, bil_4 = 0},
		{bil_1 = {6,1,4307,1,0,0}, bil_2 = "Phóc lîi ®¬n [An bang]", bil_3 = 30, bil_4 = 0},
		
		{bil_1 = {6,1,4308,1,0,0}, bil_2 = "M¶nh §å Phæ [Hoµng Kim]", bil_3 = 12, bil_4 = 1},
	}
	
	if CalcFreeItemCellCount() < 1 then
		Msg2Player(bil.C(10, "Ph¶i ®Ó trèng İt nhÊt 1 « hµnh míi cã thÓ më lÔ bao!"))
		return 1
	end
	
	local bil_1, bil_2, bil_4, bil_5, bil_6 = getn(bil_t_1), random(1,100), 0, FormatTime2Date(7 * 24 * 60 *60 + GetCurServerTime()), 0
	local bil_3 = bil.InitRandMemTb(bil_1)
	for i = 1, bil_1 do
		bil_6 = bil_3[i]
		if bil_2 <= bil_t_1[bil_6].bil_3 then
			if (bil_t_1[bil_6].bil_1[1] == 1) then
				bil_4 = AddGoldItem(0, bil_t_1[bil_6].bil_1[2])
				break
			elseif (bil_t_1[bil_6].bil_1[1] == 2) then
				Earn(bil_t_1[bil_6].bil_1[2])
				break
			elseif (bil_t_1[bil_6].bil_1[1] == 3) then
				AddOwnExp(bil_t_1[bil_6].bil_1[2])
				break
			elseif (bil_t_1[bil_6].bil_1[1] == 5) then
				bil_4 = AddStackItem(bil_t_1[bil_6].bil_1[2],4,417,1,1,0,0,0)
				break
			else
				bil_4 = AddItem(unpack(bil_t_1[bil_6].bil_1))
				break
			end
		end
	end
	if bil_4 ~= 0 then
		ITEM_SetExpiredTime(bil_4, bil_5);
		SyncItem(bil_4);
	end
	if bil_t_1[bil_6].bil_4 == 1 then
		if bil_t_1[bil_6].bil_1[1] == 2 or bil_t_1[bil_6].bil_1[1] == 3 then
			Msg2SubWorld("<color=white>§¹i hiÖp "..bil.C(1, GetName()).." më "..bil.C(7, "N¨ng ®éng lÔ bao").." nhËn ®­îc "..bil.C(2, bil_t_1[bil_6].bil_1[2].." - "..bil_t_1[bil_6].bil_2))
			AddLocalNews("<color=white>§¹i hiÖp "..bil.C(1, GetName()).." më "..bil.C(7, "N¨ng ®éng lÔ bao").." nhËn ®­îc "..bil.C(2, bil_t_1[bil_6].bil_1[2].." - "..bil_t_1[bil_6].bil_2))
		else
			Msg2SubWorld("<color=white>§¹i hiÖp "..bil.C(1, GetName()).." më "..bil.C(7, "N¨ng ®éng lÔ bao").." nhËn ®­îc "..bil.C(2, bil_t_1[bil_6].bil_2))
			AddLocalNews("<color=white>§¹i hiÖp "..bil.C(1, GetName()).." më "..bil.C(7, "N¨ng ®éng lÔ bao").." nhËn ®­îc "..bil.C(2, bil_t_1[bil_6].bil_2))
		end
	end
	Msg2Player("<color=yellow>nhËn ®­îc "..bil.C(2, bil_t_1[bil_6].bil_2).." tõ "..bil.C(7, "N¨ng ®éng lÔ bao"))
	return 0
end

















