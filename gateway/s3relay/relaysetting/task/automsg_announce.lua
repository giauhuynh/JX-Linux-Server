	-- ®óng giê h­íng mét tæ phôc vô khİ së h÷u Gameserver ph¸t hÖ thèng th«ng c¸o

	function TaskShedule()

	TaskName( "Tù ®éng tin tøc - th«ng c¸o ");

	-- 20 phót mét lÇn

	TaskInterval(20);

	-- kh«ng thiÕt TaskTme, cßn l¹i lµ Relay khëi ®éng th× mµ b¾t ®Çu

	-- 0 ®iÓm 00 xa nhau thñy

	-- TaskTime(0, 0);

	TaskCountLimit(0);

	OutputMsg( "He thong thong bao tin tuc tu dong ");

	end

	g_strTipMsg =

	{

	-- "Tõng m«n ph¸i cã 2-3 con râ rµng kü n¨ng ph¸t triÓn lé tuyÕn, c¸c con lé tuyÕn ®Æc ®iÓm cµng tiªn minh",

	-- "ë trß ch¬i trªn thÕ giíi d÷ c¸c thµnh phè lín cöa thµnh vÖ binh vµ tay míi th«n m«n ph¸i tiÕp dÉn ®Ö tö ®èi tho¹i, nh­ng lı gi¶i b¶n m«n kü n¨ng ph¸t triÓn lé tuyÕn vµ thİch hîp nhÊt luyÖn cÊp n¬i",

	-- "ë trß ch¬i trªn thÕ giíi d÷ c¸c thµnh phè lín cöa thµnh vÖ binh vµ tay míi th«n m«n ph¸i tiÕp dÉn ®Ö tö ®èi tho¹i, nh­ng lı gi¶i b¶n m«n kü n¨ng ph¸t triÓn lé tuyÕn vµ thİch hîp nhÊt luyÖn cÊp n¬i",

	-- "ë trß ch¬i trªn thÕ giíi d÷ c¸c thµnh phè lín cöa thµnh vÖ binh vµ tay míi th«n m«n ph¸i tiÕp dÉn ®Ö tö ®èi tho¹i, nh­ng lı gi¶i b¶n m«n kü n¨ng ph¸t triÓn lé tuyÕn vµ thİch hîp nhÊt luyÖn cÊp n¬i",

	-- "ë trß ch¬i trªn thÕ giíi d÷ c¸c thµnh phè lín cöa thµnh vÖ binh vµ tay míi th«n m«n ph¸i tiÕp dÉn ®Ö tö ®èi tho¹i, nh­ng lı gi¶i b¶n m«n kü n¨ng ph¸t triÓn lé tuyÕn vµ thİch hîp nhÊt luyÖn cÊp n¬i",

	"ë trß ch¬i trªn thÕ giíi d÷ c¸c thµnh phè lín cöa thµnh vÖ binh vµ tay míi th«n m«n ph¸i tiÕp dÉn ®Ö tö ®èi tho¹i, nh­ng lı gi¶i b¶n m«n kü n¨ng ph¸t triÓn lé tuyÕn vµ thİch hîp nhÊt luyÖn cÊp n¬i.",

	-- "DÉn vµo ? kü n¨ng thªm ®­îc ? kh¸i niÖm, ®¼ng cÊp cao kü n¨ng ®iÓm nhiÒu vai tuång ­u thÕ t­¬ng cµng thªm xong thÓ hiÖn",

	-- "? kü n¨ng thªm ®­îc ? cÊp thÊp chiÕn ®Êu kü n¨ng ®èi cao cÊp chiÕn ®Êu kü n¨ng lµ chØ thªm ®­îc cao cÊp kü n¨ng th­¬ng tæn",

	-- "Hoµn toµn míi ? ngò hµnh t­¬ng kh¾c ? hÖ thèng, bÊt kú m«n ph¸i nµo ®ang cïng bŞ chİnh kh¾c m«n ph¸i PK th× sÏ chİnh m×nh cµng thªm râ rµng ­u thÕ",

	-- "7 nguyÖt 16 ngµy sau lÇn ®Çu tiªn lªn ®Êt liÒn trß ch¬i thÕ giíi, hÖ thèng héi c¨n cø vai tuång cò kü n¨ng tr¹ng huèng tù ®éng tu chØnh vi míi kü n¨ng, tiÒm n¨ng ®iÓm kh«i phôc l¹i nguyªn thñy ch­a ph©n phèi tr¹ng th¸i",

	-- "? kü n¨ng ®é thuÇn thôc ? ®i qua kh«ng ngõng sö dông thö kü n¨ng c«ng kİch ®Şch nh©n thu ®­îc ®Ò th¨ng, d÷ ®Şch nh©n ®¼ng cÊp vµ ngo¹n gia lÊy ®­îc luyÖn cÊp kinh nghiÖm kh«ng quan hÖ",

	-- "Con chuét chuyÓn qua NPC trªn ng­êi, nh­ng biÓu hiÖn ? ngò hµnh thuéc tİnh ®å tiªu ?",

	-- "NPC chØ r¬i xuèng t­¬ng øng ngò hµnh thuéc tİnh b¶o vËt, nÕu nh­ muèn cã ®­îc b¨ng th­¬ng, cã thÓ ®i móc n­íc hÖ NPC",

	-- "NPC chØ r¬i xuèng t­¬ng øng ngò hµnh thuéc tİnh b¶o vËt, nÕu nh­ muèn cã ®­îc may m¾n trang bŞ, cã thÓ ®i ®¶ méc hÖ NPC",

	-- "NPC ngò hµnh thuéc tİnh ®å tiªu: Kim s¾c - kim hÖ; lam s¾c - thñy hÖ; lôc s¾c - méc hÖ; mµu ®á - háa hÖ; n©u - thæ hÖ",

	-- "?NPC ®iÒu chØnh ? sa m¹c mª cung NPC kh«ng chØ cã ®¼ng cÊp cao, kinh nghiÖm ®a, n¶y sinh c¸i míi kho¸i, h¬n n÷a r¬i b¶o tû sè thŞ phæ th«ng NPC nhŞ ®¸o gÊp ba",

	-- "? häp thµnh ®éi ? mét kİch tèi hËu ngo¹n gia lÊy ®­îc kinh nghiÖm t­¬ng thŞ mét ng­êi kinh nghiÖm 1. 3 béi",

	-- "? häp thµnh ®éi ? ®éi ngò thµnh viªn may m¾n gi¸ trŞ t­¬ng c¨n cø trong ®éi ngò nh©n sè xong t­¬ng øng ®Ò th¨ng",

	-- "? häp thµnh ®éi ? ®éi ngò thµnh viªn may m¾n gi¸ trŞ t­¬ng c¨n cø trong ®éi ngò nh©n sè xong t­¬ng øng ®Ò th¨ng; r¬i xuèng trang bŞ thuéc tİnh t­¬ng c¨n cø mét kİch tèi hËu ngo¹n gia vai may m¾n gi¸ trŞ lai quyÕt ®Şnh",

	-- "? häp thµnh ®éi kiÕn nghŞ ? ®¼ng cÊp cao ngo¹n gia ®¸i cÊp bËc thÊp ngo¹n gia, ®¼ng cÊp kĞm 70 cÊp ®· ngoµi th×, ®Òu tù th¨ng cÊp tèc ®é t­¬ng ®Ò cao 20% ®· ngoµi",

	-- "? häp thµnh ®éi tö vong nghiªm ph¹t ? häp thµnh ®éi nh©n sè cµng nhiÒu, tö vong hËu r¬i kinh nghiÖm cµng İt; nÕu trong ®éi ngò nh©n sè ®¹t ®­îc t¸m ng­êi, tö vong hËu t­¬ng kh«ng xong kinh nghiÖm",

	-- "? hoa ®µo ®¶o ? h­íng hoa ®µo Èn sÜ mua ch¸o mång 8 th¸ng ch¹p, tŞch trªn ®¶o linh khİ, ch¸o mång 8 th¸ng ch¹p c«ng hiÖu thÇn kú t­¬ng trî ng­¬i dÔ dµng tu luyÖn.",

	"NÕu nh­ ph¸t triÓn chİnh dÜ häc ®­îc kü n¨ng bİ mËt, thØnh ®iÒu qu©n trë vÒ, t­¬ng häc ®­îc c¸c lo¹i kü n¨ng, nÕu nh­, huyÕt chiÕn b¸t ph­¬ng, V« T©m chĞm, thiªn v­¬ng chiÕn y (thiªn v­¬ng bang), ®Çu ãc, cïng víi la ®Şa vong (§­êng m«n) .",

	-- "? tÈy tñy ®¶o ? chİnh thøc më ra, 50 cÊp hoÆc trë lªn phi b¹ch danh ngo¹n gia cã ? mét lÇn miÔn phİ ? tiÕn nhËp c¬ héi. TiÕn ®¶o hËu nh­ng tïy ı t¾m ? tiÒm n¨ng ®iÓm ? d÷ ? kü n¨ng ®iÓm ?, tŞnh nh­ng ë trªn ®¶o hoÆc häp thµnh ®éi nhËp ®éng thÓ nghiÖm thªm giê hiÖu qu¶",

	-- "MiÔn phİ tiÕn nhËp ? tÈy tñy ®¶o ? c¬ héi chØ cã mét lÇn. Ly khai tÈy tñy ®¶o, cña ng­¬i ? tiÒm n¨ng / kü n¨ng ? ph©n phèi chÊp nhËn thö x¸c ®Şnh, lóc rêi ®i xin nghÜ l¹i lu«n m·i t­! !",

	"Mét bé phËn ngo¹n gia hoµn thµnh 90 gi¸o viªn chñ nhiÖm vô hËu, vÉn kh«ng thÓ thu ®­îc kü n¨ng, ®iÒu qu©n trë vÒ hËu, quay vÒ l©m an chØnh ®èn vµ c¶i c¸ch [183,182]) ",

	"Mét bé phËn §­êng m«n ngo¹n gia ë häc [ ¸m tiÔn thuËt. M­a xèi x¶ lª hoa ] gÆp ph¶i bÊt n¨ng sö dông m­a xèi x¶ lª hoa ®İch t×nh huèng, ®iÒu qu©n trë vÒ hËu, ®¸o l©m an ®iÒu chØnh [183,182]) .",

	"Mét bé phËn Vò §­¬ng ngo¹n gia gÆp ph¶i mÊt ®i kü n¨ng ®iÓm ®İch t×nh huèng, ®iÒu qu©n trë vÒ hËu, ®¸o l©m an ®iÒu chØnh [183,182]) ",

	-- "? danh väng tuÇn tra ? mêi ®­îc c¸c thµnh phè lín thÇy bãi ? tr­¬ng thiÕt chñy ? chç, T­¬ng D­¬ng [192,193]",

	-- "? thñy tinh mét c¬n lèc ?2004 niªn 7 nguyÖt 22 nhËt t¶o 11: 00 sau ®ã, sung trŞ 35 nguyªn h­ t¹p cã lÏ thùc t¹p ®Òu cã thÓ ë tay míi th«n d· tÈu n¬i nµo ngÉu nhiªn lÜnh mét viªn thñy tinh, ho¹t ®éng lïi l¹i ®¸o 2004 niªn 8 nguyÖt 8 nhËt kÕt thóc",

	-- "? vò khİ tËp tranh ¶nh t­ liÖu ? dïng vïng Trung Nguyªn vâ l©m thÇn kú ? thñy tinh ?, d÷ n­íc kh¸c thÇn bİ th­¬ng nh©n ®æi lÊy ? vò khİ tËp tranh ¶nh t­ liÖu ?. L¹i ®Ó cho ? thî rÌn ? tham chiÕu tËp tranh ¶nh t­ liÖu, tr¨m phÇn tr¨m ®Şa gióp ng­¬i mãn vò khİ ®Ò th¨ng mét cÊp bËc",

	-- "? vò khİ tËp tranh ¶nh t­ liÖu ? n­íc kh¸c thÇn bİ th­¬ng nh©n xuÊt hiÖn ë D­¬ng Ch©u [207,193] d÷ l©m an [164,177] l­ìng ®Şa, ph¶i thay ®æi tËp tranh ¶nh t­ liÖu th¨ng cÊp vò khİ ngo¹n gia thØnh tèc tèc hµnh ®éng",

	-- "? lam danh qu¸i vËt ? kinh hiÖn giang hå (tªn biÓu hiÖn lµ mµu lam), d¾t mang kh«ng İt tiÒn tµi vµ trang bŞ, cßn cã thÓ n¨ng cã chøa ? thñy tinh ?, ? tinh ru-bi ?, ? hoµng kim trang bŞ ?, ? kü n¨ng th­ ?",

	-- "? hoµng kim trang bŞ ?? ®Şnh n­íc ?? an bang ? hoµng kim trang bŞ s¸o trang hiÖn th©n giang hå, ®¶ ? lam danh qu¸i vËt ? tøc cã c¬ héi thu ®­îc. Tham gia ¸o vËn c¸nh sai ho¹t ®éng, mçi ngµy còng t­¬ng ngÉu nhiªn nhÊt kiÖn",

	" [ ¸o vËn huy ch­¬ng tèng ®¹i lÔ ] mçi lÇn Trung Hoa Trung Quèc ®éi thu ®­îc th­ëng cho, ngo¹n gia kh¶ dÜ ®¸o [ lÔ quan ] chç lÜnh t­ëng: Kim bµi - kim c©y cá lé, ng©n bµi - b¹ch c©u hoµn, huy ch­¬ng ®ång - ph¸o hoa",

	"? ¸o vËn huy ch­¬ng tèng ®¹i lÔ ? lÜnh quµ tÆng tr­íc tiªn ®o¹n: Giê B¾c kinh 10: 00~14: 00 lÜnh tiÒn mét ngµy ®ªm 22: 00~ cïng ngµy 4: 00 phÇn th­ëng",

	"? ¸o vËn huy ch­¬ng tèng ®¹i lÔ ? lÜnh quµ tÆng ®Ö nhŞ thêi gian ®o¹n: 19: 00~20: 00 lÜnh cïng ngµy 14: 00~18: 00 phÇn th­ëng",

	"? ¸o vËn huy ch­¬ng tèng ®¹i lÔ ? lÜnh quµ tÆng ®Ö tam thêi gian ®o¹n: 23: 00~ ngµy kÕ 0:00 lÜnh cïng ngµy 18: 00~22: 00 phÇn th­ëng",

	" [ ¸o vËn huy ch­¬ng tèng ®¹i lÔ ] lÜnh t­ëng cã lóc h¹n, ngo¹n gia h¼n lµ chó ı b¶n ®éi bØ t¸i, ®¸o [ lÔ quan ] chç ®óng lóc lÜnh t­ëng.",

	"Sö dông [ kim c©y cá lé ] ë mét giê néi luyÖn cÊp, t­¬ng thu ®­îc gÊp ®«i kinh nghiÖm gi¸ trŞ: ë trong vßng mét canh giê sö dông [ b¹ch c©u hoµn ] t­¬ng thu ®­îc [ tù ®éng ®¶ qu¸i ]. 2 lo¹i d­îc phÈm c«ng n¨ng t­¬ng ë lóc ®Çu më ",

	" [ dù ®o¸n ¸o vËn thi ®Êu sù ] ë thµnh phè [ lÔ quan ] chç tham gia ¸o vËn thi ®Êu sù dù ®o¸n ",

	"? ¸o vËn thi ®Êu sù c¸nh sai ? c¸nh ®o¸n ®óng t­ëng ngo¹n gia ë thu ®­îc tiÒn th­ëng håi b¸o ®ång thêi, hoµn míi cã thÓ thu ®­îc ? ®Şnh n­íc ?? an bang ? dÉy hoµng kim trang bŞ trung nhÊt kiÖn",

	"Së h÷u thi ®Êu sù sau khi kÕt thóc, hÖ thèng t­¬ng ë ®o¸n ®óng Trung Hoa Trung Quèc ®éi lÊy ®­îc kim, ng©n, huy ch­¬ng ®ång sè l­îng ngo¹n gia trung s¶n sinh mét vŞ siªu cÊp may m¾n ngo¹n gia, th­ëng cho ¸o vËn dÉy hoµng kim trang bŞ s¸o trang",

	"? ¸o vËn huy ch­¬ng c¸nh sai ? Trung Hoa Trung Quèc huy ch­¬ng con sè c¸nh sai, t­¬ng ë 2004. 8. 17 nhËt s¸ng sím gi÷ g×n tiÒn hÕt h¹n. YÕu tham gia ngo¹n gia thØnh n¾m chÆt thêi gian mua lo¹i nµy vĞ xæ sè",

	" [ ¸o vËn hoµng kim trang bŞ ] bao qu¸t 2 bé [ A-ten chi hån ], [ B¾c Kinh chi méng ]",

	"? ¸o vËn chi hån ?, ? ¸o vËn chi t©m ? thuéc tİnh ®Òu lµ ? së h÷u vâ c«ng ®¼ng cÊp gia 1?, mang ®ñ hËu tù ®éng kİch ho¹t toµn th©n trang bŞ së h÷u ¸m thuéc tİnh",

	" [ phóc duyªn hÖ thèng ] ®i qua ®ïa thêi gian t¨ng ®Ó ®æi thñ phóc duyªn gi¸ trŞ, dïng phóc duyªn gi¸ trŞ ®¸o [ thÇn bİ th­¬ng nh©n liÔu Êt ] chç ®æi lÊy c¸c lo¹i ®Æc biÖt vËt phÈm",

	" [ phóc duyªn hÖ thèng ] d÷ thµnh phè [ vâ l©m truyÒn thô ] ®èi tho¹i, lı gi¶i tin tøc cÆn kÏ.",

	" [ Trung thu ho¹t ®éng ] cËt Trung thu b¸nh trung thu, ng¾m tr¨ng, t×m ra lêi gi¶i ng÷ ---- ho¹t ®éng chİnh toµn diÖn tiÕn hµnh, phÇn th­ëng chê ng­¬i. Mêi ®­îc lÔ quan chç vÊn tin tøc cÆn kÏ.",

	" [ hoa ®µo ®¶o ] ¸o vËn v¹n nh©n cïng nh¹c, ë hÖ thèng quay xong b¶o tu, tõ 14/8/2004 ®¸o 30/8/2004, miÔn phİ ë hoa ®µo ®¶o tu luyÖn."

	};

	-- t©n c«ng n¨ng b¸o tr­íc tin tøc

	g_nFutureDate = 20200723;

	STR_HEAD_FUTURE = " [ giang hå t­¬ng truyÒn ] ";

	g_strFutureMsg =

	{

	-- "GÇn më ra ? ®¬n luyÖn ®Şa ®å ?, ? ®¶ b¶o ®Şa ®å ?",

	-- "? tÈy tñy ®¶o ? t¾m kü n¨ng ®iÓm c«ng n¨ng t­¬ng ë 2004 niªn 7 nguyÖt 24 nhËt më ra, 50 cÊp hoÆc trë lªn phi b¹ch danh ngo¹n gia cã mét lÇn miÔn phİ tiÕn nhËp c¬ héi",

	-- "M­în ? tö thñy tinh ? hoÆc thÇn bİ ? vò khİ tËp tranh ¶nh t­ liÖu ? kh¶ dÜ ®Ò th¨ng c¸c lo¹i vò khİ cÊp "

	-- "? lam danh qu¸i vËt ?(tªn biÓu hiÖn lµ mµu lam) rôc rŞch, cã ng­êi nãi t­¬ng d¾t mang kh«ng İt tiÒn tµi vµ trang bŞ h¸ s¬n, cßn cã thÓ n¨ng cã chøa ? thñy tinh ?, ? tinh ru-bi ?, ? hoµng kim trang bŞ ?, ? kü n¨ng th­ ?",

	-- "? hoµng kim trang bŞ ?? ®Şnh n­íc ?? an bang ? hoµng kim trang bŞ s¸o trang hiÖn th©n giang hå, ®¶ ? lam danh qu¸i vËt ? tøc cã c¬ héi thu ®­îc",

	-- "? gÊp ®«i tiÒn tµi gÊp ®«i kinh nghiÖm ?90 cÊp kü n¨ng ®Æc s¾c duy mü; vâng kiÕm häp thµnh ®éi thµnh phong trµo, ®¶ qu¸i luyÖn cÊp nãng n¶y. §¸p t¹ míi cò ngo¹n gia, s¾p tíi sÏ cã gÊp ®«i tiÒn tµi gÊp ®«i kinh nghiÖm ho¹t ®éng",

	};

	function TaskContent()

	str = "";

	nFutureCount = getn(g_strFutureMsg);

	nCount = getn(g_strTipMsg) + nFutureCount;

	nIndex = random(1, nCount);

	if (nIndex <= nFutureCount) then -- 1- thñ b¸o tr­íc tin tøc, 2- thñ nªu lªn tin tøc

	str = getFutureMsg();

	if (strlen(str) <= 0) then -- kh«ng cã b¸o tr­íc tin tøc, tùu thñ nªu lªn tin tøc

	str = getTipMsg();

	end

	else

	str = getTipMsg();

	end

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", str));

	end

	-- thñ nªu lªn tin tøc

	function getTipMsg()

	nCount = getn(g_strTipMsg);

	nIndex = random(1, nCount);

	return g_strTipMsg[nIndex];

	end

	-- thñ b¸o tr­íc tin tøc

	function getFutureMsg()

	nCurDate = tonumber(date( "%Y%m%d "));

	str = "";

	if (g_nFutureDate > nCurDate) then -- cã hay kh«ng ë chØ ®Şnh ngµy tr­íc, b»ng kh«ng kh«ng ph¸t

	nCount = getn(g_strFutureMsg);

	nIndex = random(1, nCount);

	str = STR_HEAD_FUTURE. . (g_strFutureMsg[nIndex]);

	end

	return str;

	end


