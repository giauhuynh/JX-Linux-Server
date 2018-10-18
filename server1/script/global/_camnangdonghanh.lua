Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua")
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_diemdanhhangngay.lua")
Include( "\\script\\global\\fuyuan.lua" )
Include( "\\script\\missions\\yandibaozang\\item\\yandimibao.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_phuc_loi_ca_nhan.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_tanthuquan_ver3_doxanh_1.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_ontimer_player_chat.lua")
Include("\\script\\_event\\api.lua")

function main(sel)
	if bilCheckDuaTop:FuncMain() then 
		return 1
	end
	
		if GetCamp() == 6 or GetCurCamp() == 6 then
			SetCamp(0)
			SetCurCamp(0)
		end
	Bil_Main()
	return 1
end

_bilTbAwardOnlineTime =
{
	[1] = {bilItem = {6, 1, 440, 1, 0,0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
	[2] = {bilItem = {6, 1, 910, 1, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
	[3] = {bilItem = {6, 1, 440, 1, 0, 0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
	[4] = {bilItem = {6, 1, 122, 1, 0, 0, 0}, bilItemName = "Phóc Duyªn Lé (TiÓu)",},
	[5] = {bilItem = {6, 1, 72, 1, 0, 0, 0}, bilItemName = "Thiªn s¬n B¶o Lé",},
	[6] = {bilItem = {6, 1, 155, 1, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
	[7] = {bilItem = {6, 1, 73, 1, 0, 0, 0}, bilItemName = "B¸ch Qu¶ Lé",},
	[8] = {bilItem = {6, 1, 125, 1, 0, 0, 0}, bilItemName = "QuÕ Hoa Töu",},
	[9] = {bilItem = {6, 1, 122, 1, 0, 0, 0}, bilItemName = "Phóc Duyªn Lé (TiÓu)",},
	[10] = {bilItem = {6, 1, 440, 1, 0, 0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
	[11] = {bilItem = {6, 1, 1308, 1, 0, 0, 0}, bilItemName = "M¶nh Bæ Thiªn Th¹ch (tiÓu)",},
	[12] = {bilItem = {6, 1, 23, 1, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
	[13] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
	[14] = {bilItem = {6, 1, 1448, 1, 0, 0, 0}, bilItemName = "M¹c B¾c TruyÒn Tèng LÖnh",},
	[15] = {bilItem = {4, 489, 1, 0, 0, 0, 0}, bilItemName = "LÖnh bµi Phong L¨ng §é",},
	[16] = {bilItem = {6, 1, 1309, 1, 0, 0, 0}, bilItemName = "M¶nh Bæ Thiªn Th¹ch (trung)",},
	[17] = {bilItem = {6, 1, 123, 1, 0, 0, 0}, bilItemName = "Phóc Duyªn Lé (Trung)",},
	[18] = {bilItem = {6, 1, 71, 1, 0, 0, 0}, bilItemName = "Tiªn Th¶o Lé",},
	[19] = {bilItem = {6, 1, 72, 1, 0, 0, 0}, bilItemName = "Thiªn s¬n B¶o Lé",},
	[20] = {bilItem = {6, 1, 1403, 1, 0, 0, 0}, bilItemName = "§å phæ - HiÖp cèt thuyÕt huyÕt sam",},
	[21] = {bilItem = {6, 1, 1404, 1, 0, 0, 0}, bilItemName = "§å phæ - HiÖp cèt ®a t×nh hoµn",},
	[22] = {bilItem = {6, 1, 1405, 1, 0, 0, 0}, bilItemName = "§å phæ - HiÖp cèt ®an t©m giíi",},
	[23] = {bilItem = {6, 1, 1406, 1, 0, 0, 0}, bilItemName = "§å phæ - HiÖp cèt t×nh ı kÕt",},
	[24] = {bilItem = {6, 1, 1407, 1, 0, 0, 0}, bilItemName = "§å phæ - Nhu t×nh c©n quèc nghª th­êng",},
	[25] = {bilItem = {6, 1, 1408, 1, 0, 0, 0}, bilItemName = "§å phæ - Nhu t×nh thôc n÷ h¹ng liªn",},
	[26] = {bilItem = {6, 1, 1409, 1, 0, 0, 0}, bilItemName = "§å phæ - Nhu t×nh phông nghi giíi chØ",},
	[27] = {bilItem = {6, 1, 1410, 1, 0, 0, 0}, bilItemName = "§å phæ - Nhu t×nh tuÖ t©m ngäc béi",},
	
	[28] = {bilItem = {6, 1, 4300, 1, 0, 0, 0}, bilItemName = "N¨ng ®éng lÔ bao",},
	[29] = {bilItem = {6, 1, 4300, 1, 0, 0, 0}, bilItemName = "N¨ng ®éng lÔ bao",},
	[30] = {bilItem = {6, 1, 4300, 1, 0, 0, 0}, bilItemName = "N¨ng ®éng lÔ bao",},
	[31] = {bilItem = {6, 1, 4300, 1, 0, 0, 0}, bilItemName = "N¨ng ®éng lÔ bao",},
	-- [36] = {bilItem = {6, 1, 391, 0, 0, 0, 0}, bilItemName = "§å phæ Hoµng Kim - An Bang Kª HuyÕt Th¹ch Giíi ChØ",},
	-- [37] = {bilItem = {6, 1, 390, 0, 0, 0, 0}, bilItemName = "§å phæ Hoµng Kim - An Bang §iÒn Hoµng Th¹ch Ngäc Béi",},
	-- [38] = {bilItem = {6, 1, 389, 0, 0, 0, 0}, bilItemName = "§å phæ Hoµng Kim - An Bang Cóc Hoa Th¹ch ChØ hoµn",},
	-- [39] = {bilItem = {6, 1, 388, 0, 0, 0, 0}, bilItemName = "§å phæ Hoµng Kim - An Bang B¨ng Tinh Th¹ch H¹ng Liªn",},
}

Bil_CheckConditionSp_MapID = {221, 222, 223, 44, 326, 327, 328, 329, 330, 331, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 868, 869, 870, 876, 877, 878, 879, 880, 881, 883, 884, 885, 898, 899, 900, 902, 903, 904,970,971, 506, 507, 508, 509, 510, 511, 512, 513, 516, 517, 518, 519, 520, 521, 522, 523, 396, 560, 397, 398, 561, 399, 400, 562, 401, 402, 563, 403,404, 564, 405, 406, 565, 407, 408, 566, 409, 410, 567, 411, 540, 570, 541, 542, 571, 543, 544, 572, 545, 546, 573, 547, 548, 574, 549, 550, 575, 551, 552, 576, 553, 554, 577, 555, 324,}

Bil_MsgSupportNewPl = {
	"§¼ng cÊp cña ng­êi ®· lín h¬n <color=yellow>140<color>, ®· lµ 1 ®¹i hiÖp  ®Ønh ®Ønh ®¹i danh råi, NhËn håi [Sinh lùc, Néi lùc] ch¼ng ph¶i ®Ó c¸c bËc hËu bèi chª c­êi sao!",
	"§· nhËn ®­îc hç trî håi [Sinh lùc, Néi lùc], nÕu mÊt t¸c dông b¹n cã thÓ nhËn l¹i, hiÖu øng hç trî håi    [Sinh lùc, Néi lùc] cã t¸c dông ®Õn hÕt ®¼ng cÊp <color=yellow>140<color>.<color=white>HiÖu øng duy tr× trong 600 phót, phôc håi 400 ®¬n vŞ 1 lÇn.",
	"Khu vùc nµy kh«ng ®­îc phĞp sö dông hiÖu øng hç trî  håi [<color=white>Sinh lùc, Néi lùc<color>].", "Ta biÕt råi!/OnCancel", "B¹n cã ch¾c muèn ®èi tho¹i trùc tiÕp víi <color=Orange>GameMaster<color>, hoÆc b¹n cã thÓ liªn hÖ víi bé phËn hç trî b»ng Yahoo", --5
	"Ch¾c råi!/Bil_ChatWithGM_Sure", "Ta nhÇm!/OnCancel", "<color=white>HiÖn t¹i <color=Orange>GM<color> kh«ng trùc tuyÕn, phiÒn b¹n liªn l¹c l¹i sau, xin c¶m ¬n!<color>",
	"NhËp tin nh¾n!", "<color=white><color=Orange>GameMaster<color> hiÖn ®ang trong cuéc trß chuyÖn víi ng­êi kh¸c, phiÒn b¹n liªn l¹c l¹i sau!<color>", --10
	"<bclr=green><color=black>%s<bclr><color> <pic=139> ", "Tr¶ lêi l¹i %s/Bil_InputString2Say", "Xem th«ng tin cña %s/#Bil_ViewInfoCenterOfGamer(%d)", "KÕt thóc ®èi tho¹i./ResetStateChatWithGM",
}

Bil_NewsEventsFeatures_tb = {
	tbDuaTopCaoThu = {
		"Chµo mõng c¸c h¹ ®Õn víi m¸y chñ <color=pink>Vâ l©m <color><color=Orange>"..bilServerName.."<color><enter>M¸y chñ sÏ chİnh thøc <color=green>Open vµ ®ua TOP Cao thñ<color> vµo <color=yellow>"..bilServerOpen.."<color> vµ <color=green>kÕt thóc ®ua TOP Cao   thñ<color> vµo <color=yellow>"..bilServerCloseRace.."<color><enter>Tr­íc khi lÊy top cao thñ nÕu c¸c h¹ <color=Orange>®· rêi khái m«n  ph¸i (SuÊt s­)<color> th× yªu cÇu c¸c h¹ <color=earth>vµo l¹i m«n ph¸i<color> ®Ó tiÕn hµnh lÊy top mét c¸ch c«ng b»ng<enter>Chó ı: Top cao thñ thÕ giíi sÏ kh«ng nhËn ®­îc <color=yellow>phÇn   th­ëng top m«n ph¸i<color> mµ phÇn th­ëng sÏ dµnh cho <color=green>ng­êi  tiÕp theo.<color>",
		"<color=Orange>TOP\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tPhÇn th­ëng<color><enter>Top <color=yellow>1<color> Cao thñ       <color=green>1 Phiªn Vò, 3 Thñy Tinh,6 tinh hång,300xu \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t  <color><enter>Top <color=yellow>2<color> Cao thñ       <color=0x87ff87>1 B«n Tiªu, 3 Thñy Tinh,6 tinh hång,200xu<color><enter>Top <color=yellow>3<color> Cao thñ       <color=green>1 Phi V©n, 3 Thñy Tinh,6 tinh hång,100xu<color><enter>",
		"Top <color=yellow>4<color> Cao thñ       <color=0x87ff87>1 ChiÕu D¹, 3 Thñy Tinh,6 tinh hång,50xucolor><enter>Top <color=yellow>5<color> Cao thñ       <color=green>1 ChiÕu D¹, 3 Thñy Tinh,6 tinh hång,50xu<color><enter>Top <color=yellow>6 - > 10 <color> Cao thñ       <color=0x87ff87>1 ChiÕu D¹, 3 Thñy Tinh,6 tinh hång,30xu   <enter>",
	},
	tbFeatures = {
		"Vâ l©m <color=Orange>"..bilServerName.."<color>, phiªn b¶n <color=green>"..bilServerVersion.."<color><enter>víi c¸c tİnh n¨ng: <color=yellow><enter>\t\t\t\t\tC«ng thµnh chiÕn(7 Thµnh)<color><color=0xffff87>\t\tLiªn ®Êu(§¬n ®Êu tù do)<color><enter><color=0xffff87>\t\t\t\t\tS¨n Boss TiÓu<color><color=yellow>\t\t\t\t\t\t\t\t\tV­ît ¶i(Th¸ch thøc TG)<color><enter><color=yellow>\t\t\t\t\tTİn sø(Phong kú täa ®é)<color><color=0xffff87>\t\tQu¶ Huy Hoµng - HK<color><enter><color=0xffff87>\t\t\t\t\tHoa s¬n ®¹i chiÕn<color><color=yellow>\t\t\t\t\t\t\t\tBoss Hoµng Kim, S¸t thñ<color><enter>\t\t\t\t\t<color=yellow>Phong háa liªn thµnh<color><color=0xffff87>\t\t\t\t\tViªm ®Õ b¶o tµng, ...<color><enter>vµ nhiÒu tİnh n¨ng kh¸c, b¹n cã thÓ vµo phÇn <color=blue>Tin tøc -Sù kiÖn - Tİnh n¨ng<color> ®Ó biÕt thªm th«ng tin chi tiÕt.",
		"<color=white>Ng­¬i sÏ ph¶i tr¶i qua rÊt nhiÒu ©n o¸n giang hå, ng­¬i sÏ cã mét ®¸m huynh ®Ö tû muéi ®ång cam céng khæ?  Ng­¬i cã muèn l·nh ®¹o hä, cïng nhau t¹o ra mét m«n vâ c«ng V¹n ThÕ BÊt DiÖt, c­íp ®o¹t quyÒn së h÷u 7 thµnh tr×, ®Ó hä cã thÓ cïng nhau h­ëng vinh hoa phó quı. <color=yellow> VËy th× h·y lËp ra Bang Héi riªng cho m×nh, viÕt vµo ®ã c¸c ©n o¸n t×nh thï, nhi n÷ t×nh tr­êng, c­íp thuyÒn, ®o¹t thµnh, c­íp BOSS.<color><color=wood>Trİch Bang héi tiÕp dÉn nh©n.<color><enter><color=red>C«ng Thµnh ChiÕn<color>",
		"Thêi gian ®¨ng kı <color=Orange>C«ng thµnh chiÕn<color> sÏ më vµo lóc <color=red><enter>18 giê 00<color> cho ®Õn <color=red>19 giê 00<color> h»ng ngµy trong tuÇn C«ng thµnh, <enter>yªu cÇu bang héi ph¶i ë ®¼ng <color=red>cÊp 5<color> trë lªn<enter><color=white>Bang nµo ®Êu gi¸ sè l­îng Khiªu chiÕn lÖnh nhiÒu h¬n  sÏ lµ bang th¾ng cuéc.<color>",
		"Thêi gian tiÕn hµnh c«ng thµnh sÏ b¾t ®Çu vµo lóc <color=red><enter>20 giê 00<color> cho ®Õn <color=red>21 giê 30<color> h»ng ngµy trong tuÇn C«ng thµnh, thµnh ®¨ng kı h«m qua sÏ lµ thµnh c«ng thµnh h«m nay<enter><color=white>nÕu chØ cã 1 bang héi ®¨ng kı cho thµnh ch­a cã bang chiÕm gi÷ th× bang ®ã sÏ lµ thµnh chñ.<color>",
		"HiÖn t¹i m¸y chñ Liªn ®Êu sÏ më Liªn ®Êu ë c¶ <color=yellow><enter>S¬ cÊp - Trung cÊp - Cao cÊp<color><enter>H×nh thøc thi ®Êu hiÖn t¹i lµ <color=red>§¬n ®Êu tù do<color><enter>C¸c cao thñ cã thÓ ®Õn gÆp <color=Orange>Vâ l©m truyÒn nh©n<color> ®Ó hái  th¨m tin tøc.", 
		"Ng­êi <color=red>th¾ng <color>sÏ nhËn ®c <color=yellow>3 triÖu Kinh nghiÖm<color> ë c¶ S¬ -  Trung cÊp vµ Cao cÊp<enter><color=white>ng­êi<color> <color=red>thua hoÆc hßa<color><color=white> sÏ nhËn ®c<color> <color=yellow>1.5 triÖu Kinh nghiÖm<color><color=white> ëc¶ S¬ - Trung cÊp vµ Cao cÊp<color><enter>Cao cÊp ng­êi <color=red>th¾ng<color> sÏ nhËn ®c <color=yellow>15 ®iÓm Vinh Dù<color>, <color=red>thua<color> sÏ kh«ng cã ®iÓm vinh dù,<color=red> hßa nhau <color>sÏ ®c <color=yellow>9 ®iÓm vinh dù<color><color=white>S¬ - Trung cÊp ng­êi <color=red>th¾ng <color>sÏ nhËn ®c <color><color=yellow>10 ®iÓm Vinh Dù<color>,<color=white><color=red>thua <color>sÏ kh«ng cã ®iÓm vinh dù, <color=red>hßa nhau<color> sÏ ®c <color><color=yellow>7 ®iÓm vinh dù.<color>",
		"C¸c ngµy ®Çu tuÇn tõ thø <color=red>2 ®Õn thø 6<color> ®Êu mçi ngµy <color=green>4<color>   trËn tõ <color=yellow>19h~20h00<color>. <enter>C¸c ngµy cuèi tuÇn <color=red>thø 7 vµ chñ nhËt<color> ®Êu <color=green>8<color> trËn mçi   ngµy tõ <color=yellow>18h~19h00<color> vµ <color=yellow>19h~20h00<color>", 
		"HiÖn t¹i m¸y chñ Tèng Kim ®· më ë c¶<color=yellow><enter>S¬ cÊp - Trung cÊp - Cao cÊp<color><enter><color=white>Thêi gian tham gia tõ <color><color=red>7h ®Õn 23h<color> <color=white>c¸c giê lÎ h»ng ngµy,thêi gian b¸o danh tr­íc ®ã<color> <color=red>10 phót<color><enter>kÕt thóc mçi trËn ®Êu tïy vµo møc ®é ng­êi ch¬i sÏ    nhËn ®c nh÷ng <color=red>phÇn th­ëng xøng ®¸ng<color><enter><color=white>kÕt thóc tuÇn nh÷ng ng­êi ch¬i xuÊt s¾c nhÊt sÏ ®­îc phong <color><color=red>danh hiÖu<color> <color=white>xøng ®¸ng cho thµnh tİch c¸ nh©n.<color>",
		"KÕt thóc trËn th­ëng 1 <color=green>Tèng Kim lÔ bao<color> dµnh cho <enter>3 ng­êi mçi rank gåm <color=red>Top PK, TOP Liªn tr¶m, TOP NPC,  TOP Tİch lòy<color> vµ nh÷ng cao thñ cã ®iÓm lín h¬n <color=red>8000<color>, <enter>1 mÆt n¹ ®¹i t­íng cho <color=red>TOP 1 mçi rank<color>, giÕt ®­îc nguyªn so¸i sÏ nhËn random <color=green>tèng kim lÔ bao<color>, <enter>3 ng­êi xÕp h¹ng <color=red>cao nhÊt<color> cña tuÇn tr­íc, tuÇn sau sÏ nhËn ®c <color=green>danh hiÖu.<color>",
		"<color=yellow>Qu¶ Huy hoµng - Hoµng kim <color>sÏ suÊt hiÖn lóc <color=red>12h00 ®Õn  12h30<color> h»ng ngµy thêi gian qu¶ chİn lµ <color=red>5 phót<color>, <enter>thêi gian cho phĞp h¸i lµ <color=red>10 phót<color>, <enter><color=white>sù kiÖn ®­îc chia lµm 3 khu vùc<color> <color=green>S¬ cÊp - Trung cÊp -  Cao cÊp<color>, <enter>®Õn giê sù kiÖn sÏ cã th«ng b¸o trªn kªnh thÕ giíi    mong c¸c ®ång ®¹o chó ı, <enter><color=white>c¸c khu vùc xuÊt hiÖn qu¶<color> <color=yellow>Hoµng Kim<color> <color=white>gåm <color><color=earth>M¹n b¾c th¶o  nguyªn<color> <color=white>vµ <color><color=earth>M¹c cao quËt.<color>",
		"<color=yellow>Boss Hoµng Kim <color>thêi gian xuÊt hiÖn vµo <color=red>20h15,<enter>vµ 22h15 <color>®Õn giê sù kiÖn sÏ cã th«ng b¸o trªn<color=red> kªnh thÕgiíi <color>mong c¸c ®ång ®¹o chó ı, <enter><color=white>cã tæng céng<color> <color=yellow>11<color> <color=white>Boss hoµng kim, cao thñ hoÆc team nµo h¹ gôc ®­îc Boss hoµng kim sÏ nhËn ®­îc rÊt nhiÒu<color><color=red> <enter>Kinh nghiÖm <color><color=white>vµ<color> <color=red>vËt phÈm cã gi¸ trŞ<color><color=white>, <color><enter><color=yellow>Boss Hoµng Kim <color>cã x¸c xuÊt xuÊt hiÖn ë c¸c <color=earth>b¶n ®å trªnkh¾p thÕ giíi.<color>",
		"Thêi gian tham gia <color=yellow>V­ît ¶i<color> tõ <color=red>1h00 ®Õn 23h00<color> (c¸c giê lÎ trong ngµy) thêi gian b¸o danh tr­íc ®ã <color=red>10 phót<color>,   <color=white>Ng­êi ®Õn b¸o danh t¹i <color><color=Orange>NhiÕp Thİ TrÇn<color> <color=white>ph¶i lµ <color><color=green>®éi <enter>tr­ëng<color>, <color=white>sÏ cã th«ng b¸o trªn <color><color=red>kªnh thÕ giíi<color> <color=white>mong c¸c <enter>®ång ®¹o chó ı,<color> <enter>mçi ¶i sÏ lµ mçi thö th¸ch, v­ît qua mçi ¶i sÏ cã c¬ héi nhËn ®­îc <color=red>Kinh nghiÖm<color> vµ <color=red>nh÷ng phÇn th­ëng cã gi¸  trŞ<color>, <color=white>mçi ngµy mçi nh©n vËt chØ ®­îc phĞp tham gia tèi ®a<color> <color=red>2 lÇn <color><color=white>v­ît ¶i.<color>",
		"Thêi gian tham gia <color=yellow>Phong l¨ng ®é<color> tõ <color=red>2h00 ®Õn 24h00<color><enter>(c¸c giê ch½n trong ngµy) thêi gian b¸o danh tr­íc ®ã <color=red>10 phót<color> sÏ cã th«ng b¸o trªn <color=red>kªnh thÕ giíi<color>, mong c¸c <enter>®ång ®¹o vâ l©m chó ı, <enter>Muèn tham gia phong l¨ng ®é ph¶i ®Õn Phong L¨ng §é gÆp<color=Orange>ThuyÒn phu<color> vµ ph¶i mang theo <color=yellow>LÖnh bµi Phong l¨ng ®é<color>, <enter>m¸y chñ <color=green>kh«ng giíi h¹n<color> sè lÇn tham gia, <enter>Trªn thuyÒn ®i phong l¨ng ®é t©y cã rÊt nhiÒu thñy tÆc<color=red>tiªu diÖt ®­îc thñy tÆc<color> sÏ nhËn ®­îc <color=red>Kinh nghiÖm vµ <enter>c¸c vËt phÈm cã gi¸ trŞ<color>, <enter>khi ®Õn bê t©y cã thÓ gÆp thuyÒn phu ®Ó ®­îc ®­a <color=earth><enter>vÒ trung nguyªn miÔn phİ.<color>",
		"<color=yellow>Phong kú Täa ®é <color>sÏ më cöa vµo c¸c giê tõ <color=red>2h00 ®Õn <enter>24h00<color>(c¸c giê ch½n trong ngµy), mçi ngµy mçi nh©n vËt chØ ®­îc phĞp tham gia <color=red>120phót<color> ho¹t ®éng phong kú<enter><color=yellow>PhÇn th­ëng tham gia:<color><enter><color=white>Mçi täa ®é ®¹t ®c <color><color=red>5.000 Kinh nghiÖm<color> <color=white>nhËn ngay<enter>Mçi täa ®é ®æi <color><color=Orange>DŞch Quan<color> <color=white>sÏ nhËn ®c <color><color=red>10.000 Kinh nghiÖm<color><color=white>Mçi NPC tiªu diÖt ®c sÏ nhËn ngay <color><color=red>10.000 Kinh nghiÖm<color><enter><color=white>Mçi NPC ®¹t ®­îc ®æi ë <color><color=Orange>DŞch Quan<color><color=white> sÏ nhËn ®c <color><color=red>5.000 <enter>Kinh nghiÖm<color>",
		"PhÇn th­ëng hç trî <color=green>t©n thñ<color> gåm: <enter><color=yellow>\t\t\tTiªn th¶o lé x8 <enter>\t\t\tM¶nh s¬n hµ x· t¾c x1000 <enter>\t\t\tHåi thµnh phï (lín) <enter>\t\t\tCÈm nang ®ång hµnh <enter>\t\t\tPh¸o hoa <enter>\t\t\tHoa hång  <enter>\t\t\tQuµ mµu xanh <enter>\t\t\tHoa TuyÕt <enter>\t\t\tThÇn hµnh phï <enter>\t\t\t...<color>", --15
		"PhÇn th­ëng hç trî cÊp <color=green>%d<color> gåm", "<color=yellow><enter>\t\t\tS­ ®å thiÕp <enter>\t\t\tM¶nh s¬n hµ x· t¾c x100 <enter>\t\t\tTr­êng mÖnh hoµn<enter>\t\t\tGia bµo hoµn<enter>\t\t\tPhi tèc hoµn", "<color=yellow><enter>\t\t\tKim phong thiªn lı th¶o th­îng <enter>\t\t\tphi LiÖt b¹ch m·", "<color=yellow><enter>\t\t\tKim phong tr¹c liªn quan<enter>\t\t\tB¹ch m·", "<color=yellow><enter>\t\t\tKim phong kú l©n huyÕt<enter>\t\t\tKim phong thanh d­¬ng kh«i <enter>\t\t\tNgäc hoa th«ng",--20
		"<color=yellow><enter>\t\t\tKim phong lan ®×nh ngäc<enter>\t\t\tKim phong c«ng cÈn tam th¸n <enter>\t\t\t§¹i uyÓn b¹ch m·", "<color=yellow><enter>\t\t\tKim phong hËu nghÖ dÉn cung<enter>\t\t\tKim phong ®o¹t hån ngäc ®¸i<enter>\t\t\t¤ chïy", "<color=yellow><enter>\t\t\tKim phong ®ång t­íc xu©n th©m<enter>\t\t\tTóc s­¬ng", "<color=yellow><enter>\t\t\tMét bé kü n¨ng cña m«n ph¸i<enter>\t\t\tLÖnh bµi phong l¨ng ®é x1<enter>\t\t\t1 ngùa ChiÕu d¹ ngäc s­ tö", "<color=yellow><enter>\t\t\tTinh hång b¶o th¹ch<enter>\t\t\tQuÕ hoa töu<enter>\t\t\tTiªn th¶o lé<enter>\t\t\tPhóc duyªn lé (Trung)<enter>\t\t\tGiµy §Şnh quèc", 
		"<color=yellow><enter>\t\t\tTinh hång b¶o th¹ch<enter>\t\t\tQuÕ hoa töu<enter>\t\t\tTiªn th¶o lé<enter>\t\t\tPhóc duyªn lé (Trung)<enter>\t\t\tLÖnh bµi Phong l¨ng ®é<enter>\t\t\tM¹c b¾c truyÒn tèng lÖnh<enter>\t\t\tBao tay §Şnh quèc", "<color=yellow><enter>\t\t\tTinh hång b¶o th¹ch<enter>\t\t\tQuÕ hoa töu<enter>\t\t\tTiªn th¶o lé<enter>\t\t\tPhóc duyªn lé (Trung)<enter>\t\t\tTh¾t l­ng §Şnh quèc<enter>\t\t\tNgùa Phi V©n","<color=yellow><enter>\t\t\tTinh hång b¶o th¹ch<enter>\t\t\tQuÕ hoa töu<enter>\t\t\tTiªn th¶o lé<enter>\t\t\tPhóc duyªn lé (Trung)<enter>\t\t\tBİ kİp kü n¨ng cÊp 120<enter>\t\t\tTö mÉu lÖnh<enter>\t\t\t¸o §Şnh quèc<enter>\t\t\t1 Mãn vò khİ trÊn ph¸i", --28
		"M«n ph¸i vµ Nh©n vËt: <color=yellow>XuÊt s­ vµ vµo l¹i m«n ph¸i<color><enter>§Ó tiÕn hµnh <color=red>xuÊt s­<color> ng­êi ch¬i cÇn vÒ <color=red>m«n ph¸i vµ gÆpch­ëng m«n<color> cña m×nh ®Ó tiÕn hµnh xuÊt s­ vµ phiªu b¹c giang hå. §iÒu kiÖn xuÊt s­: yªu cÇu ®¼ng cÊp tõ <color=red>60<color><enter>trë lªn.<enter>§Ó <color=yellow>vµo l¹i m«n ph¸i<color> yªu cÇu ng­êi ch¬i ®· xuÊt s­ vµ <enter>®Õn gÆp <color=red>ch­ëng m«n<color> cña m×nh ®Ó xin vµo l¹i ph¸i, khi <enter>®i nhí ®em thªm 5 v¹n l­îng.", --29
		"M«n ph¸i vµ Nh©n vËt: <color=yellow>§æi tªn nh©n vËt<color><enter>§Ó ®æi tªn nh©n vËt, ng­êi ch¬i cÇn ®Õn gÆp <color=yellow>NPC Hoµnh Ba Tiªn Tö<color> ë <color=earth>Ba l¨ng huyÖn<color>, täa ®é <color=blue>(202, 198)<color> ®Ó biÕt thªm tin tøc.",
		"M«n ph¸i vµ Nh©n vËt: <color=yellow>ChuyÓn ®æi m«n ph¸i<color><enter>§Ó chuyÓn ®æi m«n ph¸i, yªu cÇu ng­êi ch¬i ®· vµo ph¸i®Õn gÆp <color=Orange>NPC Hoµnh Ba Tiªn Tö<color> ë <color=earth>Ba l¨ng huyÖn<color>, täa ®é <color=blue> (202, 198)<color> vµ ®em theo <color=fire>Tİn vËt m«n ph¸i<color>, muén Êy sÏ   gióp ®¹i hiÖp liªn hÖ víi ch­ëng m«n m«n ph¸i hiÖn t¹icña ®¹i hiÖp vµ tiÕn hµnh <color=red>trôc xuÊt ra khái s­ m«n<color>,   sau khi trôc xuÊt toµn bé <color=green>c¸c ®iÓm kü n¨ng vµ <enter>tiÒm n¨ng sÏ ®­îc tÈy l¹i hoµn toµn<color>, sau khi rêi khái m«n ph¸i ®¹i hiÖp cã thÓ ®Õn tÊt <color=yellow>c¶ c¸c m«n ph¸i(kh«nggiíi h¹n giíi tİnh vµ ngò hµnh cho c¸c m«n ph¸i)<color> mµ <enter>m×nh muèn gia nhËp vµ gÆp <color=Orange>ch­ëng m«n m«n ph¸i<color> ®ã ®Ó <enter>xin gia nhËp ph¸i, <color=green>toµn bé c¸c ®iÓm kü n¨ng cÊp 90 vµ 120 sÏ ®­îc gi÷ l¹i vµ chuyÓn lªn bé chiªu thøc míi <enter>cña m«n ph¸i míi.<color>", -- 31
		"M«n ph¸i vµ Nh©n vËt: <color=yellow>ChuyÓn ®æi giíi tİnh<color><enter>ChuyÓn ®æi giíi tİnh cña nh©n vËt sang <color=green>giíi tİnh kh¸c<color>,khi ®· chuyÓn ®æi <color=yellow>mäi thø liªn quan ®Õn nh©n vËt ®Òu  ®­îc gi÷ nguyªn<color>, mçi lÇn lÇn chuyÓn ®æi sÏ ph¶i mÊt   thªm 1 <color=yellow>Kim nguyªn b¶o<color>, mäi chi tiÕt c¸c ®ång ®¹o cã   thÓ tham kh¶o ë <color=Orange>NPC Hoµnh Ba Tiªn Tö<color> ë <color=earth>Ba l¨ng huyÖn<color>, täa ®é <color=blue>(202, 198)<color>", -- 32
		"<color=fire>Ho¹t ®éng ®iÓm danh h»ng ngµy<color> yªu cÇu ng­êi ch¬i ph¶i cã tİnh <color=yellow>kiªn tr× vµ liªn tôc<color>, nÕu trong ngµy tiÕp theo<color=Orange>kh«ng tiÕn hµnh ®iÓm danh<color> th× tæng sè lÇn ®iÓm danh <enter>®­îc sÏ <color=fire>b¾t ®Çu l¹i tõ ®Çu<color>, t­¬ng tù phÇn th­ëng còng sÏ b¾t ®Çu l¹i tõ ®Çu, tuy nhiªn §éc c« minh chñ còng rÊt réng l­îng sÏ cã h×nh thøc <color=yellow>®iÓm danh bï<color> cho ng­êi ch¬i v¾ng mÆt!, c¸c chi tiÕt kh¸c ng­êi ch¬i cã thÓ   tham kh¶o thªm ë chç <color=Orange>LÔ Quan.<color>",
		"Tæng sè l­ît ®iÓm danh liªn tôc cña ®¹i hiÖp lµ: <color=green>%d<color>,<enter>PhÇn th­ëng cho lÇn ®iÓm danh tiÕp theo lµ:<enter><color=yellow>%s<color>",
		"Danh s¸ch phÇn th­ëng cho lÇn ®iÓm danh thø <color=green>%d<color> lµ:<enter><color=yellow>%s<color>", -- 35
		"<color=fire>Ho¹t ®éng Online nhËn th­ëng<color>, mçi ng­êi ch¬i sÏ nhËn  ®­îc mét lÇn cø <color=yellow>mçi khi thêi gian tİch lòy trªn m¹ng  ®ñ<color> <color=green>1 giê<color>, c¸c lÇn nhËn tiÕp theo sÏ cã <color=yellow>thªm tØ lÖ nhËn®­îc c¸c vËt phÈm cµng gi¸ trŞ h¬n<color>, sÏ cã b¶ng xÕp <enter>h¹ng c¸c cao thñ cã tæng thêi gian Online, ®¹i hiÖp cãthÓ xem ë <color=yellow>b¶ng XÕp h¹ng<color>.",
		"Tİnh n¨ng <color=fire>Hoa S¬n §¹i ChiÕn<color>, khi tham gia vµo ho¹t <enter>®éng nµy, ng­êi ch¬i sÏ ®­îc ®­a vµo mét <color=earth>b¶n ®å riªng biÖt<color>, ®Õn thêi gian khai chiÕn <color=yellow>bÊt kÓ lµ ng­êi th©n<color>,  <color=yellow>b¹n h÷u<color>, <color=yellow>®ång bang héi<color> ®Òu cã thÓ <color=red>chiÕn ®Êu lÉn nhau<color>  nh»m so tµi cao thÊp, ng­êi chiÕn th¾ng lµ ng­êi cßn  <color=green>sèng sãt l¹i cuèi cïng<color>, sÏ cã nh÷ng phÇn th­ëng xøng  ®¸ng dµnh cho c¸c vŞ anh hïng nµy!, danh s¸ch c¸c cao thñ sèng sãt cuèi cïng vµ ng­êi h¹ gôc nhiÒu ®èi thñ  nhÊt cã thÓ xem ë <color=green>b¶ng xÕp h¹ng<color>.",
		"Thêi gian diÔn ra vµo <color=yellow>thø 3<color>, <color=yellow>thø 5<color> vµ <color=yellow>thø 7<color> h»ng tuÇn,thêi gian b¸o danh vµo <color=yellow>10 giê 15 phót s¸ng<color> vµ <color=yellow>21 giê  15 phót tèi<color>, thêi gian b¸o danh lµ <color=green>15 phót<color>, thêi gian chiÕn ®Êu lµ <color=red>30 phót<color>, yªu cÇu ®¼ng cÊp ph¶i lín h¬n <enter><color=red>50<color>, cã 2 khu vùc dµnh cho ng­êi ch¬i lµ <color=yellow>Trung cÊp vµ  Cao cÊp<color>, ng­êi sèng sãt cuèi cïng lµ ng­êi th¾ng cuéc!",
		"<color=fire>Ng­êi bŞ h¹ gôc<color> sÏ nhËn ®­îc kinh nghiÖm t­¬ng ®­¬ng  víi <color=green>sè ®èi thñ ng­êi ®ã ®· h¹ gôc ®­îc<color>!<enter><color=fire>PhÇn th­ëng dµnh cho cao thñ<color> lµ ng­êi cßn <color=green>trong b¶n ®åcuèi cïng<color><enter><color=Orange>NgÉu nhiªn 1 trong 3 lo¹i thñy tinh<color><enter>Tiªn th¶o lé x2<enter>LÖnh bµi phong l¨ng ®é<enter>M¹c b¾c truyÒn tèng lÖnh<enter>ThiÕt la h¸n (x2)<enter>Bao d­îc hoµn<enter><color>",
		"Tİnh n¨ng <color=fire>Phong Háa Liªn Thµnh<color>, khi tham gia vµo b¶n  ®å Phong háa liªn thµnh ng­êi ch¬i cÇn ph¶i <color=green>tæ ®éi<color> víinh÷ng ng­êi kh¸c ®Ó tiÕn hµnh b¶o vÖ thµnh tr× tr­íc  lùc l­îng cña ®Şch víi <color=yellow>sè l­îng rÊt lín<color>, nguyªn t¾c   nÕu <color=Orange>t­íng qu©n thñ thµnh<color> kh«ng cßn th× coi nh­ trËn   chiÕn <color=red>kÕt thóc<color> vµ nÕu ®Şch qu©n ®­a toµn bé sè <color=Orange>c«ng   thµnh xung xa <color>vµo tíi thµnh m«n cña m×nh th× còng coi nh­ <color=red>thua<color>, víi sè l­îng ®Şch qu©n lín nªn sè l­îng <color=green>kinhnghiÖm<color> nhËn ®­îc <color=yellow>cùc kú lín<color>, cïng víi ®ã lµ c¸c <color=green>phÇn  th­ëng hÊp dÉn<color> r¬i ra tõ t­íng ®Şch!", -- 40
		"Thêi gian b¸o danh tham gia <color=fire>Phong Háa Liªn Thµnh<color> lµ <color=green>20<color>phót, b¾t ®Çu tõ <color=yellow>9 giê 10 phót <color>s¸ng vµ <color=yellow>21 giê 10 phót <color>tèi trong c¸c ngµy <color=yellow>thø 4<color>, <color=yellow>thø 6<color> vµ <color=yellow>chñ nhËt<color> h»ng tuÇn,thêi gian tham gia chiÕn ®Êu lµ 60 phót!, trong thêi  gian b¸o danh ng­êi ch¬i cã thÓ ®Õn gÆp <color=Orange>VÖ binh thµnh m«n <color>t¹i c¸c <color=earth>Thµnh thŞ <color>®­îc th«ng b¸o trªn kªnh thÕ <enter>giíi ®Ó tham gia ho¹t ®éng.",
		--"Ho¹t ®éng - <color=fire>S¨n Nhİm bĞo ph×<color>, nh»m gióp c¸c nh©n sÜ <enter>giang hå t×m l¹i c¶m gi¸c phiªu b¹c lóc <color=pink>sinh nhËt<color> <color=Orange>Vâ  L©m TruyÒn Kú<color> nhiÒu n¨m vÒ tr­íc, Bæn trang chñ sÏ tæ chøc ho¹t ®éng <color=yellow>S¨n Nhİm bĞo ph×<color> mçi ngµy vµo lóc <color=green>11<enter>giê 30 phót<color> vµ <color=green>22 giê 30 phót<color>, mçi lÇn diÔn ra sÏ xuÊthiÖn Nhİm bĞo ph× trong <color=green>7<color> <color=earth>§¹i thµnh thŞ<color> vµ<color=green> 8<color> <color=earth>T©n thñ  th«n<color>, ng­êi ch¬i cÇn nhanh ch©n t×m kiÕm ë c¸c b¶n ®å trªn vµo lóc diÔn ra ho¹t ®éng, nh÷ng ®¹i hiÖp s¨n <enter><color=yellow>nhiÒu Nhİm bĞo ph× nhÊt <color>sÏ xuÊt hiÖn trªn <color=Orange>b¶ng xÕp <enter>h¹ng tæng.<color>", -- 42
		--"Mçi khi ng­êi ch¬i <color=fire>s¨n ®­îc Nhİm bĞo ph× <color>sÏ nhËn ®­îc ngay <color=yellow>1,5 triÖu ®iÓm Kinh nghiÖm<color> vµ <color=yellow>1 V¹n l­îng b¹c<color>, mçi ngµy mçi nh©n vËt chØ cã thÓ s¨n tèi ®a ®­îc <color=green>10<color> Nhİm  bĞo ph×, sang ngµy tiÕp theo míi cã thÓ s¨n tiÕp!<enter>C¸c vËt phÈm cã thÓ ngÉu nhiªn nhËn ®­îc:<color=yellow><enter>Tiªn Th¶o Lé<enter>B¸ch Qu¶ Lé<enter>QuÕ Hoa Töu<color>",
		"Ho¹t ®éng - <color=fire>Viªm §Õ B¶o Tµng<color>, C¸ch ch¬i v­ît ¶i <color=yellow>phã <enter>b¶n míi, néi dung míi, boss míi, b¶n ®å míi<color>, v« vµn <color=green>kútr©n dŞ b¶o, rÊt nhiÒu c¸c vËt phÈm cã gi¸ trŞ<color> kh¸c vµl­îng <color=green>kinh nghiÖm cùc kú lín<color> chØ cã t¹i b¶o tµng viªm ®Õ. Khi tham gia vµo ho¹t ®éng, ng­êi ch¬i cÇn ph¶i <color=yellow>tæ®éi<color> víi nhau, sÏ ®­îc ®­a vµo mét <color=earth>b¶n ®å riªng biÖt<color> <enter>n¬i mµ rÊt nhiÒu c¸c cao thñ cña thËp ®¹i m«n ph¸i <enter>®ang chê ®o¸n c¸c vŞ anh hïng, mçi cöa ¶i toµn bé <color=yellow>ph¶ih¹ gôc ®­îc nh÷ng ®Ö tö vµ s­ phô cña thËp ®¹i m«n <enter>ph¸i<color>, ®Õn ¶i cuèi cïng ®Ó ®i ®Õn vinh danh chØ cã <color=blue>mét tæ ®éi ®­îc chän<color> ®i ®Õn ¶i cuèi b»ng c¸ch c¸c tæ ®éi <enter>ph¶i <color=yellow>so tµi víi nhau<color> ®Ó chän ra ®éi h×nh xøng ®¸ng <enter>nhÊt, c¸c anh hïng cã sè l­ît <color=green>hoµn thµnh ¶i phã b¶n <enter>nhiÒu nhÊt<color> sÏ xuÊt hiÖn trªn <color=Orange>b¶ng xÕp h¹ng tæng<color>.",
		"<color=yellow>Thêi gian b¸o danh<color> cña Phã b¶n <color=Orange>Viªm §Õ B¶o Tµng<color> vµo <enter>c¸c khung giê <color=green>14:25, 16:25, 18:25, 20:25, 22:25<color> mçi <enter>ngµy, h·y ®Õn  tr­íc <color=green>5 phót<color> ®Ó b¸o danh ë <color=Orange>B×nh B×nh c«n­¬ng<color> t¹i <color=earth>BiÖn Kinh phñ<color>, sÏ cã th«ng b¸o trªn kªnh thÕgiíi khi diÔn ra ho¹t ®éng!", -- 45
		"M«n ph¸i vµ Nh©n vËt - <color=yellow>Thay ®æi ngo¹i h×nh cña trang  bŞ<color>: ®Ó thay ®æi ngo¹i h×nh cña trang bŞ ng­êi ch¬i cÇn®Õn <color=earth>Ba L¨ng HuyÖn<color> gÆp <color=orange>Hoµnh Ba Tiªn Tö<color>, mçi lÇn thay  ®æi cÇn ph¶i cã <color=yellow>3 TiÒn §ång<color>, kh«ng giíi h¹n sè lÇn ®æivµ ng­êi ch¬i cã thÓ <color=green>xem tr­íc h×nh ¶nh<color> ngo¹i h×nh cñatrang bŞ tr­íc khi tiÕn hµnh thay ®æi. Tİnh n¨ng thay ®æi ngo¹i h×nh trang bŞ <color=yellow>chØ lµm thay ®æi h×nh d¹ng cñatrang bŞ mµ kh«ng hÒ thay ®æi thªm bÊt cø th«ng sè nµoc¶!<color>",
	},
	tbOpt = {
		"PhÇn th­ëng - Vßng s¸ng Liªn ®Êu Qu¸n qu©n", "PhÇn th­ëng - Vßng s¸ng Liªn ®Êu ¸ qu©n", "PhÇn th­ëng - Vßng s¸ng Liªn ®Êu h¹ng 3", "PhÇn th­ëng - Vßng s¸ng Liªn ®Êu h¹ng 4", -- 4
		"PhÇn th­ëng - Vßng s¸ng Th¸i thó L©m An", "PhÇn th­ëng - Vßng s¸ng Th¸i thó D­¬ng Ch©u", "PhÇn th­ëng - Vßng s¸ng Th¸i thó T­¬ng D­¬ng", "PhÇn th­ëng - Vßng s¸ng Th¸i thó BiÖn Kinh", "PhÇn th­ëng - Vßng s¸ng Th¸i thó §¹i Lı", "PhÇn th­ëng - Vßng s¸ng Th¸i thó Thµnh §«", "PhÇn th­ëng - Vßng s¸ng Th¸i thó Ph­îng T­êng", "<link=image:\\spr\\skill\\others\\title_ab.spr><link><color>", "<link=image:\\spr\\skill\\top_tong\\bangzhu.spr><link><color>", "<link=image:\\spr\\skill\\top_tong\\bangzhu.spr><link><color>", "<link=image:\\spr\\skill\\others\\title_ab.spr><link><color>", "<link=image:\\spr\\skill\\top_tong\\bangzhu.spr><link><color>", "<link=image:\\spr\\skill\\top_tong\\bangzhu.spr><link><color>", "<link=image:\\spr\\skill\\top_tong\\bangzhu.spr><link><color>", -- 18
		"PhÇn th­ëng - Vßng s¸ng V« song m·nh t­íng §¹i t­íng", "PhÇn th­ëng - Vßng s¸ng V« song m·nh t­íng Phã t­íng", "PhÇn th­ëng - Vßng s¸ng V« song m·nh t­íng Thèng lÜnh", "<link=image:\\spr\\skill\\others\\title_dg.spr><link><color>", "<link=image:\\spr\\skill\\others\\title_ab.spr><link><color>", "<link=image:\\spr\\skill\\others\\title_zw.spr><link><color>", "\\script\\gm_tool\\dispose_item.lua", "DisposeItem", -- 26
	},
}

bilTableOption ={
	"NhËn hç trî håi [Sinh lùc, Néi lùc]", "Tin tøc - Sù kiÖn - Tİnh n¨ng", "§èi tho¹i víi GameMaster", "KÕt thóc ®èi tho¹i.", "Sù KiÖn - §ua top Cao thñ", "PhÇn th­ëng cho c¸c Cao thñ",
	"Quay l¹i", "Bil_ChatWithGM_SendMessage2GM", "Tİnh n¨ng - C«ng thµnh chiÕn", "Thêi gian ®¨ng kı C«ng thµnh", "Thêi gian tiÕn hµnh C«ng thµnh chiÕn", "Tİnh n¨ng - Liªn ®Êu",
	"PhÇn th­ëng Kinh nghiÖm vµ Vinh dù", "Thêi gian ®¨ng kı vµ thi ®Êu", "Tİnh n¨ng - ChiÕn tr­êng Tèng Kim", "PhÇn th­ëng - KÕt thóc trËn", "Tİnh n¨ng - ChiÕn Long §éng",
	"Tİnh n¨ng - Boss Hoµng kim", "Tİnh n¨ng - V­ît ¶i", "Tİnh n¨ng - Phong l¨ng ®é", "Tİnh n¨ng - Phong kú Täa ®é", "Ta muèn hñy vËt phÈm", "PhÇn th­ëng hç trî khi lªn cÊp", 
	"PhÇn th­ëng hç trî cÊp %d", -- 24
	"Tİnh n¨ng - M«n ph¸i vµ Nh©n vËt", --25
	"XuÊt s­ vµ vµo l¹i m«n ph¸i",
	"§æi tªn nh©n vËt",
	"ChuyÓn ®æi m«n ph¸i",
	"ChuyÓn ®æi giíi tİnh",
	"Ho¹t ®éng - §iÓm danh h»ng ngµy", --30
	"Xem sè l­ît ®iÓm danh cña b¶n th©n",
	"Xem tr­íc c¸c phÇn th­ëng",
	"NhËn th­ëng thêi gian Online",
	"Tİnh n¨ng - NhËn th­ëng thêi gian Online",
	"TÊt c¶ c¸c phÇn th­ëng", --35
	"Tİnh n¨ng - §¹i chiÕn Hoa S¬n", 
	"Thêi gian b¸o danh",
	"C¸c phÇn th­ëng cho ng­êi chiÕn th¾ng",
	"Tİnh n¨ng - Phong háa liªn thµnh",
	"Thêi gian b¸o danh tham gia", -- 40
	--"Ho¹t ®éng - S¨n Nhİm bĞo ph×",
	--"PhÇn th­ëng khi s¨n ®­îc Nhİm bĞo ph×",
	"Ho¹t ®éng - Viªm ®Õ b¶o tµng",
	"Thêi gian b¸o danh Viªm ®Õ b¶o tµng",
	"C¸c phÇn th­ëng tõ Viªm §Õ Bİ B¶o", -- 45
	"Thay ®æi h×nh ¶nh ngo¹i h×nh cña trang bŞ",
}

function Bil_Main()
	local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[1]
	local tbOpt = 
	{
		{bilTableOption[1], Bil_SupportHealingMana},
		--{"NhËn m¸u ngò hoa hç trî t©n thñ", Bil_SupportHealingMana_NguHoa},
		{bilTableOption[33], bilAwardOnlineTime},
		{"NhËn phÇn th­ëng hç trî lªn cÊp", bilFunc_CallMain_TTQ_v3DoXanh},
		{"NhËn ngùa vµ bİ kİp ®¹i thµnh", nguabikip},
		--{"NhËn phÇn th­ëng Phóc lîi c¸ nh©n", bilPhucLoi_Main},
		--{"ThiÕt lËp Auto tù ®éng rao b¸n", bilCallFunc_AutoChat},
		{bilTableOption[2], Bil_NewsEventsFeatures},
		{bilTableOption[3], Bil_ChatWithGM},
		{bilTableOption[22], Bil_DelItem},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function bilAwardOnlineTime(bil_1)
	Clear120SkillExpLimit()
	if Bil_GetTask(18) <  tonumber(date("%y%m%d")) then
		Bil_SetTask(17, 15)
	end
	
		local bil_TimeOnline_S = mod(GetTireTime(), 60)
		local bil_TimeOnline_M = floor(GetTireTime() / 60)
		local bil_TimeOnline_H = floor(bil_TimeOnline_M / 60)
		if bil_TimeOnline_M >= 60 then
			bil_TimeOnline_M = bil_TimeOnline_M - (60 * floor(bil_TimeOnline_M/60))
		end
		
	if GetTireTime() >= 3600 then
		if bil_1 ~= 1 then
			return Say("Tİch lòy thêi gian Online hiÖn t¹i cña c¸c h¹ lµ:<enter>"..bil.C(1, bil_TimeOnline_H).." giê - "..bil.C(1, bil_TimeOnline_M).." phót - "..bil.C(1, bil_TimeOnline_S).." gi©y<enter>C¸c h¹ muèn nhËn th­ëng lÇn thø "..bil.C(2, (Bil_GetTask(17) - 14)).." chø?", 2, 
				"TiÕn hµnh nhËn th­ëng lÇn thø "..(Bil_GetTask(17) - 14).."/#bilAwardOnlineTime(1)",
				"Th«i ®Ó ta tİch lòy thªm/OnCancel")
		end
		local bilTbAwExpOlT = {{1, 2000000},{5, 5000000},{10, 10000000},{15, 15000000},{22, 22000000},}
		for i = 1, floor(GetTireTime()/60/60) do
			Bil_SetTask(16, Bil_GetTask(16) + GetTireTime())
			SetTireTime(0)
			local bilRandomVlue = random(1, Bil_GetTask(17))
			if Bil_GetTask(17) > getn(_bilTbAwardOnlineTime) then
				bilRandomVlue = random(1, getn(_bilTbAwardOnlineTime))
			end
			local nItemIndex = AddItem(unpack(_bilTbAwardOnlineTime[bilRandomVlue].bilItem))
			-- SetItemBindState(nItemIndex, -2) -- hñy bá chÕ ®é khãa vÜnh viÔn víi c¸c item nhËn ®­îc tõ ho¹t ®éng Online
			Msg2Player("Chóc mõng c¸c h¹ ®· nhËn ®­îc<enter><color=yellow>".._bilTbAwardOnlineTime[bilRandomVlue].bilItemName)
			Bil_SetTask(17, Bil_GetTask(17) + 1)
			AddRepute(5)
			if( GetTask( TASKID_FY_START_ONLINE_TIME ) == 0 ) then
				FuYuan_Start();
			end
			FuYuan_Add(5)
			Msg2Player("B¹n ®· nhËn ®­îc thªm 5 ®iÓm Danh väng.")
			Msg2Player("Tæng thêi gian Online trªn m¹ng <enter>cña c¸c h¹ lµ: <color=yellow>"..floor(Bil_GetTask(16)/60).."<color> Phót.")
			Msg2Player("NhËn th­ëng thêi gian Online lÇn thø <color=yellow>"..(Bil_GetTask(17) - 15).."<color> thµnh c«ng!")
			for i = 1, getn(bilTbAwExpOlT) do
				if ((Bil_GetTask(17) - 15) == bilTbAwExpOlT[i][1]) then
					AddOwnExp(bilTbAwExpOlT[i][2])
					Msg2Player("B¹n Online <color=yellow>"..bilTbAwExpOlT[i][1].." giê<color> nhËn thªm: <color=green>"..bilTbAwExpOlT[i][2].."<color> ®iÓm Kinh nghiÖm!")
					AddLocalNews("Ng­êi ch¬i <color=yellow>"..GetName().."<color> h«m nay Online <color=yellow>"..bilTbAwExpOlT[i][1].." giê<color> ®­îc th­ëng thªm <color=green>"..bilTbAwExpOlT[i][2].."<color> ®iÓm Kinh nghiÖm!")
				end
			end
		end
		Bil_SetTask(18, tonumber(date("%y%m%d")))
	else
		return Say("Thêi gian tİch lòy trªn m¹ng cña c¸c h¹ hiÖn t¹i lµ: "..bil.C(1, bil_TimeOnline_H).." giê - "..bil.C(1, bil_TimeOnline_M).." phót - "..bil.C(1, bil_TimeOnline_S).." gi©y, ch­a ®ñ ®iÒu kiÖn ®Ó nhËn th­ëng lÇn thø "..(Bil_GetTask(17) - 14)..", vui lßng ®îi .... !", 1, "Ta biÕt råi!/OnCancel")
	end
end

function Bil_NewsEventsFeatures(bilStep)
	local tbOptCr = {}
	local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[1]
	local tbOpt = 
	{
		{bilTableOption[5], Bil_EvensRacingTopPlayers},
		{bilTableOption[23], bilInforLevelAward},
		{bilTableOption[34], bilInfoAwOnlineTime},
		{bilTableOption[30], bilInforDailyMuster},
		{bilTableOption[25], bilInforDiscAndChar},
		{bilTableOption[36], bilInforHoaSonDaiChien},
		{bilTableOption[39], bilInforPhongHoaLienThanh},
		{bilTableOption[9], bil_FeaturesCTC},
		{bilTableOption[43], bil_FeaturesViemDeTaoTang},
		{bilTableOption[41], bil_SanNhimBeoPhi},
		{bilTableOption[12], bil_FeaturesLeagueMatch},
		{bilTableOption[15], bil_FeaturesSongjin},
		{bilTableOption[17], bil_FeaturesGreatSeed, {1}},
		{bilTableOption[18], bil_FeaturesGreatSeed, {2}},
		{bilTableOption[19], bil_FeaturesGreatSeed, {3}},
		{bilTableOption[20], bil_FeaturesGreatSeed, {4}},
		{bilTableOption[21], bil_FeaturesGreatSeed, {5}},
	}
	
	if bilStep == nil then
		for i = 1, 14 do
			tinsert(tbOptCr, tbOpt[i])
		end
		tinsert(tbOptCr, {"Trang sau", Bil_NewsEventsFeatures, {2}})
		tinsert(tbOptCr, {bilTableOption[4], OnCancel})
	elseif bilStep == 2 then
		for i = 15, getn(tbOpt) do
			tinsert(tbOptCr, tbOpt[i])
		end
		tinsert(tbOptCr, {"Trang tr­íc", Bil_NewsEventsFeatures})
		tinsert(tbOptCr, {bilTableOption[4], OnCancel})
	end
	CreateNewSayEx(szTitle, tbOptCr)
end

function bil_FeaturesViemDeTaoTang(bilStep)
	local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[44]
	local bilItemName = ""
	if bilStep == 1 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[45]
	elseif bilStep == 2 then
		for bilLoop = 1, getn(_bilTbAwardYadibaozang) do
			bilItemName = bilItemName.._bilTbAwardYadibaozang[bilLoop].bilItemName.."<enter>"
		end
		szTitle = Bil_EnemySay[11][1].."C¸c phÇn th­ëng sÏ nhËn ®­îc ngÉu nhiªn khi sö dông <enter><color=green>Viªm §Õ Bİ B¶o<color>:<color=yellow><enter>"..bilItemName.."<color>"
	end
	local bilTbOp =
	{
		{bilTableOption[43], bil_FeaturesViemDeTaoTang},
		{bilTableOption[44], bil_FeaturesViemDeTaoTang, {1}},
		{bilTableOption[45], bil_FeaturesViemDeTaoTang, {2}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, bilTbOp)
end

function bil_SanNhimBeoPhi(bilStep)
	local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[42]
	if bilStep == 1 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[43]
	end
	local bilTbOp =
	{
		{bilTableOption[41], bil_SanNhimBeoPhi},
		{bilTableOption[42], bil_SanNhimBeoPhi, {1}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, bilTbOp)
end

function bilInforPhongHoaLienThanh(bilStep)
	local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[40]
	if bilStep == 1 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[41]
	end
	local bilTbOp =
	{
		{bilTableOption[39], bilInforPhongHoaLienThanh},
		{bilTableOption[40], bilInforPhongHoaLienThanh, {1}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, bilTbOp)
end

function bilInforHoaSonDaiChien(bilSel)
	local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[37]
	if bilSel == 1 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[38]
	elseif bilSel == 2 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[39]
	end
	local bilTbOp =
	{
		{bilTableOption[36], bilInforHoaSonDaiChien},
		{bilTableOption[37], bilInforHoaSonDaiChien, {1}},
		{bilTableOption[38], bilInforHoaSonDaiChien, {2}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, bilTbOp)
end

function bilInfoAwOnlineTime(bilSel)
	local szTitle = "C¸c phÇn th­ëng cã thÓ nhËn trong Ho¹t ®éng Online."
	local bilNameAw = ""
	if bilSel == 1 then
		for i = 1, getn(_bilTbAwardOnlineTime) do
			bilNameAw = bilNameAw.."\n".._bilTbAwardOnlineTime[i].bilItemName
		end
		szTitle = Bil_EnemySay[11][1]..szTitle.."<color=yellow>"..bilNameAw.."<color>"
	else
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[36]
	end
	local bilTbOp =
	{
		{bilTableOption[34], bilInfoAwOnlineTime},
		{bilTableOption[35], bilInfoAwOnlineTime, {1}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, bilTbOp)
end

function bilInforDailyMuster(bilSelect)
	local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[33]
	local bilAwardListMuster = ""
	if bilSelect == 1111 then
		local bilTimes = Bil_GetTask(14)
		local bilSel = bilTimes + 1
		if bilSel > 30 and bilSel < 40 then
			bilSel = bilSel - 30
		elseif bilSel > 40 and bilSel < 50 then
			bilSel = bilSel - 30
		elseif bilSel > 50 and bilSel < 60 then
			bilSel = bilSel - 30
		elseif bilSel > 60 then
			return print("Da co nguoi yeu cau nhan phan thuong Diem Danh lan thu: "..bilSel.." Kien nghi GM xem xet lai.")
		end
			for ii = 1, getn(_bilTbAwardDailyMuster[bilSel]) do 
				bilAwardListMuster = bilAwardListMuster.._bilTbAwardDailyMuster[bilSel][ii].bilItemName.."\n"
			end
		szTitle = Bil_EnemySay[11][1]..format(Bil_NewsEventsFeatures_tb.tbFeatures[34], Bil_GetTask(14), bilAwardListMuster)
	elseif bilSelect ~= nil and bilSelect >= 1 and bilSelect <= 60 then
		local bilSel = bilSelect
		if bilSel > 30 and bilSel < 40 then
			bilSel = bilSel - 30
		elseif bilSel > 40 and bilSel < 50 then
			bilSel = bilSel - 30
		elseif bilSel > 50 and bilSel < 60 then
			bilSel = bilSel - 30
		end
		for ii = 1, getn(_bilTbAwardDailyMuster[bilSel]) do 
			bilAwardListMuster = bilAwardListMuster.._bilTbAwardDailyMuster[bilSel][ii].bilItemName.."\n"
		end
		szTitle = Bil_EnemySay[11][1]..format(Bil_NewsEventsFeatures_tb.tbFeatures[35], bilSelect, bilAwardListMuster)
	end
	local bilTbOp =
	{
		{bilTableOption[30], bilInforDailyMuster},
		{bilTableOption[31], bilInforDailyMuster, {1111}},
		{bilTableOption[32], bilInforDailyMusterInputAw},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, bilTbOp)
end

function bilInforDailyMusterInputAw()
	return AskClientForNumber("bilInforDailyMuster",0, 60,"NhËp sè lÇn cÇn xem")
end

function bilInforDiscAndChar(bilSelect)
	local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[29]
	if bilSelect == 1 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[30]
	elseif bilSelect == 2 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[31]
	elseif bilSelect == 3 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[32]
	elseif bilSelect == 4 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[46]
	end
	local bilTbOp =
	{
		{bilTableOption[26], bilInforDiscAndChar},
		{bilTableOption[27], bilInforDiscAndChar, {1}},
		{bilTableOption[28], bilInforDiscAndChar, {2}},
		{bilTableOption[29], bilInforDiscAndChar, {3}},
		{bilTableOption[46], bilInforDiscAndChar, {4}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	
	CreateNewSayEx(szTitle, bilTbOp)
end

function bilInforLevelAward(bilLevel)
	local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[15]
	local bilTbOp = {}
	tinsert(bilTbOp, {"Hç trî t©n thñ", bilInforLevelAward})
	if type(bilLevel) == "number" then
		szTitle = Bil_EnemySay[11][1]..format(Bil_NewsEventsFeatures_tb.tbFeatures[16], bilLevel.."0")..Bil_NewsEventsFeatures_tb.tbFeatures[bilLevel + 16]
	end
	for i = 1, 12 do
		tinsert(bilTbOp, {format(bilTableOption[24], i.."0"), bilInforLevelAward, {i}})
	end
	tinsert(bilTbOp, {bilTableOption[7], Bil_NewsEventsFeatures})
	tinsert(bilTbOp, {bilTableOption[4], OnCancel})
	-- CreateNewSayEx(szTitle, bilTbOp)
	CreateNewSayEx(Bil_EnemySay[11][1].."HiÖn t¹i danh s¸ch c¸c phÇn th­ëng cña phiªn b¶n míi ®· ®­îc thay ®æi, b¹n cã thÓ theo dâi trong môc nhËn phÇn th­ëng!", bilTbOp)
end

function Bil_EvensRacingTopPlayers(bilValue)
	local szTitle = ""
	if FALSE(bilValue) then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbDuaTopCaoThu[1]
	elseif bilValue == 1 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbDuaTopCaoThu[2]..Bil_NewsEventsFeatures_tb.tbDuaTopCaoThu[3]
	end
	local tbOpt = 
	{
		{bilTableOption[5], Bil_EvensRacingTopPlayers},
		{bilTableOption[6], Bil_EvensRacingTopPlayers, {1}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function bil_FeaturesCTC(bilValue)
	local szTitle = ""
	if FALSE(bilValue) then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[2]
	elseif bilValue == 1 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[3]
	elseif bilValue == 2 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[4]
	elseif bilValue >= 3 then
		szTitle = Bil_NewsEventsFeatures_tb.tbOpt[bilValue + 9]..Bil_NewsEventsFeatures_tb.tbOpt[bilValue + 2]
	end
	local bilOpt = 
	{
		{bilTableOption[9], bil_FeaturesCTC},
		{bilTableOption[10], bil_FeaturesCTC, {1}},
		{bilTableOption[11], bil_FeaturesCTC, {2}},
		{Bil_NewsEventsFeatures_tb.tbOpt[5], bil_FeaturesCTC, {3}},
		{Bil_NewsEventsFeatures_tb.tbOpt[6], bil_FeaturesCTC, {4}},
		{Bil_NewsEventsFeatures_tb.tbOpt[7], bil_FeaturesCTC, {5}},
		{Bil_NewsEventsFeatures_tb.tbOpt[8], bil_FeaturesCTC, {6}},
		{Bil_NewsEventsFeatures_tb.tbOpt[9], bil_FeaturesCTC, {7}},
		{Bil_NewsEventsFeatures_tb.tbOpt[10], bil_FeaturesCTC, {8}},
		{Bil_NewsEventsFeatures_tb.tbOpt[11], bil_FeaturesCTC, {9}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, bilOpt)
end

function bil_FeaturesLeagueMatch(bilValue)
	local szTitle = ""
	if FALSE(bilValue) then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[5]
	elseif bilValue == 1 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[6]
	elseif bilValue == 2 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[7]
	elseif bilValue == 3 then
		szTitle = Bil_EnemySay[3][1]..Bil_NewsEventsFeatures_tb.tbOpt[1]
	elseif bilValue >= 4 then
		szTitle = Bil_EnemySay[bilValue + 2][1]..Bil_NewsEventsFeatures_tb.tbOpt[bilValue - 2]
	end
	local bilOpt = 
	{
		{bilTableOption[12], bil_FeaturesLeagueMatch},
		{bilTableOption[13], bil_FeaturesLeagueMatch, {1}},
		{bilTableOption[14], bil_FeaturesLeagueMatch, {2}},
		{Bil_NewsEventsFeatures_tb.tbOpt[1], bil_FeaturesLeagueMatch, {3}},
		{Bil_NewsEventsFeatures_tb.tbOpt[2], bil_FeaturesLeagueMatch, {4}},
		{Bil_NewsEventsFeatures_tb.tbOpt[3], bil_FeaturesLeagueMatch, {5}},
		{Bil_NewsEventsFeatures_tb.tbOpt[4], bil_FeaturesLeagueMatch, {6}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, bilOpt)
end

function bil_FeaturesSongjin(bilValue)
	local szTitle = ""
	if FALSE(bilValue) then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[8]
	elseif bilValue == 1 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[9]
	elseif bilValue >= 2 then
		szTitle = Bil_NewsEventsFeatures_tb.tbOpt[bilValue + 20]..Bil_NewsEventsFeatures_tb.tbOpt[bilValue + 17]
	end
	local bilOpt = 
	{
		{bilTableOption[15], bil_FeaturesSongjin},
		{bilTableOption[16], bil_FeaturesSongjin, {1}},
		{Bil_NewsEventsFeatures_tb.tbOpt[19], bil_FeaturesSongjin, {2}},
		{Bil_NewsEventsFeatures_tb.tbOpt[20], bil_FeaturesSongjin, {3}},
		{Bil_NewsEventsFeatures_tb.tbOpt[21], bil_FeaturesSongjin, {4}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, bilOpt)
end

function bil_FeaturesGreatSeed(bilValue)
	CreateNewSayEx(Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[bilValue + 9], {{bilTableOption[7], Bil_NewsEventsFeatures},{bilTableOption[4], OnCancel},})
end

function Bil_SupportHealingMana()
	if GetLevel() <= 150 then
		if Bil_CheckConditionSp() == 1 then
			AddSkillState(472, 1, 1, 1555200, 1) -- håi m¸u
			AddSkillState(527, 5, 1, 1555200, 1) -- t¨ng l­îng m¸u tèi ®a
			AddSkillState(513, 7, 1, 1555200, 1) -- phßng thñ vËt lı *2
			AddSkillState(514, 7, 1, 1555200, 1) -- kh¸ng ®éc *2
			AddSkillState(515, 7, 1, 1555200, 1) -- kh¸ng b¨ng *2
			AddSkillState(516, 7, 1, 1555200, 1) -- kh¸ng háa*2
			AddSkillState(517, 7, 1, 1555200, 1) -- kh¸ng l«i *2
			local _,nX32,nY32 = GetWorldPos()
			CastSkill(1204, 1, nX32*32, nY32*32)
			-- return Talk(1, "", Bil_MsgSupportNewPl[2])
			return Msg2Player(bil.C(1, "Tr¹ng th¸i håi ")..bil.C(8, "[m¸u, n¨ng l­îng]"))
		end
	else
		return bil.Talk("Tİnh n¨ng nµy chØ hç trî cho t©n thñ d­íi cÊp 80!")
		-- if GetTask(5954) < tonumber(date("%y%m%d")) then
			-- return Say("B¹n ®· v­ît cÊp 130, hiÖn t¹i b¹n cã thÓ mua hiÖu øng håi m¸u, mana trong 1 ngµy víi gi¸ 100!", 2, "Ta muèn mua hiÖu øng trong 1 ngµy!/#Bil_SupportHealingManaUplevel141(1)", "Th«i kh«ng cÇn ®©u!/OnCancel")
		-- else 
			-- return Bil_SupportHealingManaUplevel141(2)
		-- end
	end
end

function Bil_SupportHealingManaUplevel141(bilSel)
	if bilSel == 1 then
		if (GetCash() >= 1000000) then 
			Pay(1000000) 
			SetTask(5954, tonumber(date("%y%m%d")))
			if Bil_CheckConditionSp() == 1 then
				AddSkillState(472, 1, 1, 1555200, 1)
				local _,nX32,nY32 = GetWorldPos()
				CastSkill(1204, 1, nX32*32, nY32*32)
				-- return Talk(1, "", Bil_MsgSupportNewPl[2])
				return Msg2Player(bil.C(1, "Tr¹ng th¸i håi ")..bil.C(8, "[m¸u, n¨ng l­îng]"))
			end
		else 
			return Talk(1,"","C¸c h¹ l¹i kh«ng ®ñ tiÒn trong hµnh trang <pic=29>") 
		end 
	elseif bilSel == 2 then
		if Bil_CheckConditionSp() == 1 then
			AddSkillState(472, 1, 1, 1555200, 1)
			local _,nX32,nY32 = GetWorldPos()
			CastSkill(1204, 1, nX32*32, nY32*32)
			-- return Talk(1, "", Bil_MsgSupportNewPl[2])
			return Msg2Player(bil.C(1, "Tr¹ng th¸i håi ")..bil.C(8, "[m¸u, n¨ng l­îng]"))
		end
	end
end

function Bil_CheckConditionSp()
	local Bil_MapID, _, _ = GetWorldPos()
	for i = 1, getn(Bil_CheckConditionSp_MapID) do
		if Bil_MapID == Bil_CheckConditionSp_MapID[i] then
			return Say(Bil_MsgSupportNewPl[3], 1, Bil_MsgSupportNewPl[4])
		end
	end
	return 1
end

function Bil_ChatWithGM()
	Say(Bil_MsgSupportNewPl[5], 2, Bil_MsgSupportNewPl[6], Bil_MsgSupportNewPl[7])
end

function Bil_ChatWithGM_Sure()
	local Bil_PlayerIndexGM = SearchPlayer(GetNameAdmin);
	if Bil_PlayerIndexGM <= 0 then
		return Say(Bil_MsgSupportNewPl[8], 1, Bil_MsgSupportNewPl[4])
	else
		if CallPlayerFunction(Bil_PlayerIndexGM, Bil_GetTask, 3) == 0 then
			return AskClientForString(bilTableOption[8], "", 1, (410), Bil_MsgSupportNewPl[9]); 
		elseif CallPlayerFunction(Bil_PlayerIndexGM, Bil_GetTask, 3) > 0 then
			if CallPlayerFunction(Bil_PlayerIndexGM, Bil_GetTask, 3) == PlayerIndex then
				return AskClientForString(bilTableOption[8], "", 1, (410), Bil_MsgSupportNewPl[9]); 
			else
				return Say(Bil_MsgSupportNewPl[10], 1, Bil_MsgSupportNewPl[4])
			end
		end
	end
end

function Bil_ChatWithGM_SendMessage2GM(Bil_Msg)
	local Bil_PlayerIndexGM = SearchPlayer(GetNameAdmin);
	if CallPlayerFunction(Bil_PlayerIndexGM, Bil_GetTask, 3) ~= PlayerIndex and CallPlayerFunction(Bil_PlayerIndexGM, Bil_GetTask, 3) ~= 0 then
		return Say(Bil_MsgSupportNewPl[10]);
	end
	local Bil_MsgSend = 
		{
			format(Bil_MsgSupportNewPl[11], GetName())..Bil_Msg, 3,
			format(Bil_MsgSupportNewPl[12], GetName()),
			format(Bil_MsgSupportNewPl[13], GetName(), PlayerIndex),
			Bil_MsgSupportNewPl[14],
		}
	CallPlayerFunction(Bil_PlayerIndexGM, SetTaskTemp, 245, PlayerIndex)
	CallPlayerFunction(Bil_PlayerIndexGM, Bil_SetTask, 3, PlayerIndex)
	callPlayerFunctionParamList(Bil_PlayerIndexGM, Say, Bil_MsgSend)
end

function Bil_DelItem()
	return Say("B¹n cã ch¾c muèn <color=red>hñy vËt phÈm<color> chø, h·y suy nghÜ kü!<enter><color=0xffff5f>TÊt c¶ c¸c vËt phÈm ®­îc yªu cÇu hñy sÏ bŞ hñy bá <enter>hoµn toµn bëi hÖ thèng, bÊt kÓ lµ vËt phÈm nµo!", 2, "Ta nghÜ kü råi!/Bil_DelItem_Sure", "Th«i, ta nhÇm!/OnCancel")
end

function Bil_DelItem_Sure()
	GiveItemUI("Hñy vËt phÈm", "§¹i hiÖp h·y cÈn träng trong   viÖc hñy vËt phÈm!", "bilDisposeConfirm", "OnCancel", 1);
end

function bilDisposeConfirm(nCount)
	local bilLogDelItemFileName = openfile("script/global/bil4i3n/bil4i3n_log/del_item_"..date("%d_%m_%Y")..".log", "a");
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		Msg2Player("§· hñy vËt phÈm [<color=green>"..strItem.."<color>]")
		write(bilLogDelItemFileName, date("%H:%M:%S").."\t Account: "..GetAccount().."\tName: "..GetName().."\t DelItem: "..strItem, "\n")
	end
	closefile(bilLogDelItemFileName)
	Msg2Player("Thao t¸c hñy vËt phÈm thµnh c«ng")
	Talk(1, "", "Thao t¸c thµnh c«ng, kiÓm tra l¹i!<enter>§· hñy<color=yellow> "..nCount.."<color> vËt phÈm!");	
end

function cndh_CallFuncMain4Thp()
	return Bil_Main()
end

function OnCancel()
end

function GetDesc( nItemIdx )
	return "<color=White>     Lµ mét cuèn cÈm nang thÇn kú, bªn trong ghi chĞp tÊt c¶ c¸c ho¹t ®éng cña trang chñ      <enter>liªn tôc cËp nhËt nh÷ng tin tøc míi nhÊt, nh÷ng sù kiÖn s¾p vµ ®· diÔn ra<enter><color><color=Wood>      Mét cuèn cÈm nang mµ tÊt c¶ c¸c nh©n sÜ trung nguyªn ®Òu mang bªn m×nh      <enter>";
end

function Bil_SupportHealingMana_NguHoa()
	if GetLevel() >= 150 then
		return bil.Talk("§¹i hiÖp ®· ®¹t cÊp 150, còng cÇn ph¶i nhËn hç trî cña bËt hËu bèi n÷a sao?")
	end

	if GetPK() >= 7 then
		return bil.Talk("Tói m¸u chØ dµnh cho t©n thñ, ng­¬i lµ s¸t thñ th× cÇn g× ®Õn m¸u?")
	end

	local a = GetTask(5885)
	local b = GetGameTime()
	local c = 0
	
	if (b - a) < 150 then
		_, c = bil.SplitTime(150 - (b - a))
		return bil.Talk("B¹n ph¶i chê thªm "..c.." míi cã thÓ nhËn m¸u hç trî t©n thñ!")
	end
	
	SetTask(5885, b)
	
	local d = CountFreeRoomByWH(1, 1)
	
	if d < 1 then
		return bil.Talk("B¹n ph¶i ®Ó trèng İt nhÊt 1 « hµnh trang míi cã thÓ nhËn hç trî!")
	end
	
	return bil.Say({{P = {i = {{v = {1,2,0,5,0,0,0}, n = d, b = -2, e = 0, ne = "Ngò hoa ngäc lé hoµn - t©n thñ"},}}},})
end






function nguabikip()
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>10<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
tbAwardTemplet:GiveAwardByList({{szName="Ngùa",tbProp={0,10,2,9,0,0,0},nCount=1, nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="BK",tbProp={6,1,2424,1,0,0},nCount=1, nBindState=-2},} ,"test", 1);
tbAwardTemplet:GiveAwardByList({{szName="BK2",tbProp={6,1,2426,1,0,0},nCount=1, nBindState=-2},} ,"test", 1);
end













