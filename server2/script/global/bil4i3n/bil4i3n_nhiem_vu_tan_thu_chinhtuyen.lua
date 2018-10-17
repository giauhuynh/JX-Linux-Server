Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\task\\task_addplayerexp.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

-- Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

bilNvTanThu = {
	Msg_LongNgu = {
		[0] = "<npc>Trªn giang hå hiÖn ®ang v× b¶o vËt Thiªn Hoµng Long Khİ, §Şnh Quèc Hoµng Kim mµ lo¹n thÕ phong v©n, binh khëi tø ph­¬ng, ta cã vµi nhiÖm vô muèn nhê ng­¬i gióp!<enter><enter>§Çu tiªn h·y mang theo 5 miÕng thŞt t­¬i vµ ®Õn gÆp vâ s­",
		[2] = "<npc>Thiªn Hoµng Long Khİ vµ §Şnh Quèc Hoµng Kim bªn trong cßn Èn chøa rÊt nhiÒu bİ mËt, tr­íc m¾t ng­¬i h·y më CÈm nang ®ång hµnh nhËn phÇn th­ëng hç trî cÊp 20 råi h·y quay l¹i gÆp ta!",
		[4] = "<npc>NÕu ng­¬i thËt sù muèn t×m hiÓu vÒ tung tİch cña Thiªn Hoµng Long Khİ vµ §Şnh Quèc Hoµng Kim h·y ®Õn thµnh §¹i Lı t×m gÆp M¹c SÇu (183,198) cã thÓ c« ta cã th«ng tin vÒ 2 mãn b¶o vËt nµy!",
		[19] = "<npc>- Kh¸ l¾m! ta thÊy rÊt hµi lßng khi giao phã nhiÖm vô giang hå cho ng­¬i.<enter>- §a t¹ Ngò Gia ®· tin t­ëng.<enter>- Nh­ vËy Bİ MËt TÇm Long Héi ®· ®­îc s¸ng tá, nhµ ng­¬i còng cã chót c¨n c¬ trªn giang hå råi!<enter>- Trong lóc chuyÖn trß víi M¹c SÇu vµ Nam Cung Phi V©n, 2 vŞ ®ã cã nh¾c ®Õn tæ chøc L©m Uyªn Nhai, kh«ng biÕt Ngò Gia cã biÕt chuyÖn nµy?<enter>- L©m Uyªn Nhai?... ChuyÖn nµy liªn quan ®Õn c¶ mét tæ chøc s¸t thñ, ng­¬i thËt sù muèn t×m hiÓu chø?<enter>- RÊt nãng lßng th­a Ngò Gia!<enter>- VËy ®­îc... H·y ®Õn BiÖn Kinh gÆp Phã Nam B¨ng, «ng ta sÏ cã c¸ch gióp ng­¬i t×m hiÓu chuyÖn nµy!<enter>- §a t¹ Ngò Gia, ®Ö tö xin c¸o tõ!",
		[35] = "<npc>RÊt tèt, ®­îc tin b¸o ng­¬i ®· hoµn thµnh toµn bé c¸c nhiÖm vô s¸t thñ cña Phã Nam B¨ng giao cho, Long mç rÊt tù hµo, trªn giang hå ng­¬i còng cã ®­îc mét İt danh tiÕng, tuy nhiªn còng kh«ng ph¶i lµ viÖc tèt ®Ñp g×, kh¾p n¬i ®Òu cã tai m¾t theo dâi, hay lµ ng­¬i ®Õn Chu Tiªn TrÊn t×m V©n Nhi ®i!",
		[60] = "<npc>- T¹i sao l¹i ®Õn, t¹i sao l¹i ®Õn?<enter>- ......Ngò Gia, l©u ngµy kh«ng gÆp, «ng ®· giµ nhiÒu råi.<enter>- Kim CÈu mÊy ngµy tr­íc ®i qua ®©y, Bµ chñ tiÖm t¹p hãa bŞ......<enter>- Ngò Gia!<enter>- Th«i råi, uæng c«ng ta phİ nhiÒu c«ng søc, ®Õn cuèi cïng còng ®¸nh kh«ng l¹i Kim CÈu, ta ®· giµ råi, thÕ giíi nµy lµ cña tuæi trÎ c¸c ng­¬i. Nh­ng tr­íc khi ng­¬i b«n tÈu giang hå ta muèn dµnh tÆng nhµ ng­¬i mét mãn b¶o vËt sau khi ®· hoµn thµnh viÖc nµy.<enter>- ViÖc g× Ngò gia cø nãi!<enter>- §Çu tiªn h·y hoµn thµnh mét nhiÖm vô D· TÈu bÊt kú<enter>- RÊt ®¬n gi¶n th­a Ngò Gia!",
		[68] = "<npc>- RÊt tèt. Long mç rÊt hµi lßng vÒ b¶n th©n cña ng­¬i, tÊt c¶ c¸c kh¶o nghiÖm cña ta ng­¬i ®Òu ®· hoµn thµnh, ë ®©y cã mét mãn b¶o vËt ng­¬i h·y cÇm lÊy vµ b¾t ®Çu hµnh tr×nh b«n tÈu giang hå.<enter>- §a t¹ Long gia<enter>- Phiªu b¹t giang hå rÊt cùc khæ, ng­¬i nªn tù luyÖn tËp thªm. Long mç ta thêi gian tíi sÏ bËn mét sè c«ng viÖc, hÑn gÆp l¹i ng­¬i vµo mét dŞp kh¸c, Giang hå hiÓm ¸c, mäi chuyÖn ng­¬i nªn cÈn thËn. Sau nµy ta kh«ng thÓ lo cho ng­¬i, h·y b¶o träng!<enter>- V·n bèi biÕt råi!",
		[9999] = {"<npc>Trªn giang hå hiÖn ®ang v× b¶o vËt Thiªn Hoµng Long Khİ, §Şnh Quèc Hoµng Kim mµ lo¹n thÕ phong v©n, binh khëi tø ph­¬ng!", {{"KÕt thóc ®èi tho¹i", bil.OnCancel}}},
	},
	Msg_MacSau = {
		[5] = "<npc>- Xin hái ng­êi cã ph¶i lµ M¹c SÇu<enter>- VŞ ®©y lµ...?<enter>- Ta cã bøc th­ nµy, ng­êi xem qua sÏ biÕt. <enter>- M¹c SÇu nhËn th­.  Trong th­ cã ®éc!<enter>- C¸i g×? <enter>- Ng­¬i….Ng­¬i thËt ¸c ®éc! Nãi! Ai ph¸i ng­¬i ®Õn? <enter>- Ta kh«ng muèn tiÕt lé danh tİnh ng­êi ®ã! <enter>- Tèt! Ng­¬i kh«ng nãi, h«m nay ®õng hßng rêi khái ®©y!<enter>- Cho dï cã bá m¹ng n¬i ®©y ta còng kh«ng tiÕt lé danh tİnh h¾n. <enter>- Ta ë bÕn tµu ngoµi thµnh ®îi ng­¬i! Cã b¶n lÜnh h·y ®Õn ®ã!",
		[7] = "<npc>- Kh«ng ngê vâ nghÖ ng­¬i thËt cao c­êng.<enter>- Ng­¬i cßn kh«ng nãi, ta sÏ phÕ vâ c«ng cña ng­¬i, cã nãi hay kh«ng?<enter>- Kh«ng nãi.<enter>- M¹c SÇu:......<enter>- Ng­¬i giÕt ta ®i. <enter>- ThËt kh«ng ngê, thñ h¹ cña Long Ngò l¹i gan d¹ nh­ vËy. <enter>- Ng­¬i t­ëng ®e däa lµ ta sî ­? <enter>- ¸i chµ! B»ng h÷u! Ta ®©y chØ thö ng­¬i mµ th«i. Kh«ng tin ng­¬i tù xem th­ ®i sÏ râ. <enter>- .....Rèt cuéc lµ chuyÖn g× vËy? <enter>- V× muèn xem C¸c h¹ cã ph¶i lµ ng­êi ®¸ng ®Ó giao phã chuyÖn lín kh«ng. <enter>- ChuyÖn lín?<enter>- §óng vËy, nãi ra dµi l¾m. GÇn ®©y Thiªn Hoµng Long Khİ mÊt tİch ®· l©u nay t¸i xuÊt giang hå. §ã lµ mét bé ¸o gi¸p tuyÖt thÕ. N¨m x­a tÇn Thñy Hoµng tÊn c«ng Lôc quèc, triÖu tËp thî rÌn b¶y n­íc ®óc thµnh ë Hµm D­¬ng. VÒ bé Thiªn Hoµng Long Khİ vµ §Şnh Quèc Hoµng Kim ng­¬i cã thÓ ®Õn Thµnh §« gÆp TiÕu C«ng Tö (403,319), ng­êi nµy ®ang n¾m gi÷ Hoµng Kim L©n, 1 phÇn cña bé Thiªn Hoµng Long Khİ",
		[10] = "<npc>Kh«ng ph¶i ®©y lµ Hoµng Kim L©n ®ã chø, xem ra b¶n lÜnh cña ng­¬i còng kh«ng ®Ó nçi tÖ. NÕu ®· cã b¶n lÜnh nh­ thÕ th× ta nhê ng­¬i ®i 1 chuyÕn ®Õn D­¬ng Ch©u gÆp H¹ V« Th­, c« ta lµ ng­êi phô tr¸ch m¹ng l­íi t×nh b¸o, ch¾c ch¾n ng­êi nµy cã th«ng tin vÒ Thiªn Hoµng Long Khİ vµ §Şnh Quèc Hoµng Kim.",
		[13] = "<npc>§· bŞ b¾t cãc!<enter><color=orange>M¹c S¶o Nhi: <color>Tû tû M¹c SÇu ®· bŞ b¾t cãc, tû Êy cã dÆn muéi b¸o l¹i víi vŞ huynh ®µi h·y ®Õn L©m An t×m M¹nh Phµm, chØ cã «ng Êy míi gi¶i quyÕt ®­îc chuyÖn nµy!",
		[18] = "<npc> - Kh«ng cã g× ®Ó nãi! Giao M¹c SÇu ra ®©y! <enter> - Ng­¬i cho r»ng ta b¾t M¹c SÇu ®i? <enter> - Ch¼ng lÏ kh«ng ph¶i sao! <enter> - Ai chµ! Ng­¬i hiÓu lÇm råi. <enter> - ı cña ng­¬i lµ...? <enter> - Ta lµ chñ nh©n cña TÇm Long Héi, M¹c SÇu ®­îc ta gi¶i cøu,  nay ®ang ë T­¬ng D­¬ng trŞ th­¬ng. <enter> - Cßn muèn nãi nh¶m n÷a? <enter> - Kh«ng ®­îc v« lÔ! VŞ nµy lµ Chñ nh©n TÇm Long héi --Nam Cung Phi V©n! <enter> - Nam Cung......Phi V©n. Lµ Nam Cung ®¹i hiÖp nhiÒu n¨m tr­íc bŞ Thiªn NhÉn Gi¸o chñ ®êi tr­íc ®¸nh r¬i xuèng vùc! <enter> - §óng vËy.<enter> - Lµ ta sai. <enter> Kh«ng cÇn ¸y n¸y! Ng­¬i còng lo l¾ng cho an nguy cña M¹c SÇu. <enter> - C¸m ¬n ng­êi ®· hiÓu, Nam Cung §¹i HiÖp! <enter> Ta bŞ ®¸m H¾c Y nh©n b¾t ®i, chİnh S­ phô cøu ta.<enter> - Nh÷ng ng­êi ®ã lµ ai? <enter> - Ta kh«ng râ, nh­ng nghi ngê lµ cao thñ cña L©m Uyªn Nhai lµm. <enter> - Lµ tæ chøc g×? <enter> Lµ tæ chøc s¸t thñ gi÷a trung lËp. <enter> - Bän hä v× Long Khİ? <enter> - §óng, hä muèn thu thËp ®ñ Long Khİ, ®Ó gi¶i cøu Bang chñ Phu nh©n Hoµn Nhan Nh­îc TuyÕt. <enter> - µ! Nh­îc TuyÕt phu nh©n n¨m ®ã ®·......? <enter> - µ! Phu nh©n ch­a chÕt, chØ bŞ giam ë mét n¬i bİ mËt. ChØ cã t×m ®ñ Long Khİ, lÊy ®­îc b¶n ®å n¬i ®ã míi cã thÓ gi¶i cøu Phu nh©n. <enter> - Ta sÏ cïng Chñ nh©n ®Õn  Thiªn Long tù mét chuyÕn, ng­¬i h·y vÒ gÆp Long Ngò. Ta sÏ liªn l¹c sau. <enter> - §­îc! Mong mäi ng­êi vui vÎ. <enter> C¸m ¬n ng­¬i ®· gióp ®ì trong thêi gian qua, ta sÏ kh«ng quªn ng­¬i.",
		[9999] = {"<npc>C¶ trung nguyªn nµy ng­êi hiÒn th× İt, kÎ giang ¸c th× nhiÒu, ngay c¶ b¶n th©n ta còng kh«ng biÕt ta n»m ë ®©u trong 3 ph¸i chİnh, trung, tµ!", {{"KÕt thóc ®èi tho¹i", bil.OnCancel}}},
	},
	Msg_PhoNamBang = {
		[20] = "<npc>- ¤ng lµ Phã Nam B¨ng?<enter>- Kh«ng sai.<enter>- Ngò Gia ph¸i ta ®Õn, ë ®©y cã th­ cã bót tİch cña «ng ta. <enter>- Ng­¬i ®· tõng giÕt ng­êi ch­a? <enter>- ......Ch­a tõng.<enter>- ThÕ ng­¬i dùa vµo c¸i g× mµ vµo L©m Uyªn Nhai. Th­ tiÕn cö cña Ngò Ca ch¾c kh«ng ®ñ. <enter>- Nãi ®iÒu kiÖn cña «ng xem. <enter>- GiÕt ng­êi! GiÕt mét ng­êi khã giÕt. <enter>- Lµ ai?<enter>- Ninh T­íng Qu©n.<enter>- Ninh T­íng Qu©n lµ ai? <enter>- §¹i t­íng Nam Tèng, th«ng ®Şch ph¶n quèc, téi kh«ng thÓ tha. <enter> - §¸ng chÕt! <enter>- H¾n gÇn ®©y du ngo¹n ë La Tiªu S¬n, kh«ng biÕt bao giê vÒ Doanh tr¹i. §îi ®Õn h¾n vÒ trong qu©n doanh th× rÊt khã kh¨n. Ng­¬i chØ cã mét c¬ héi duy nhÊt nµy th«i. <enter>- §­îc!",
		[22] = "<npc>- H¾n chÕt råi. <enter>- Ta biÕt råi, ta ®· xem th­êng ng­¬i. HiÖn t¹i trªn giang hå cã 3 kÎ kh«ng thÓ giÕt, 3 ng­êi nµy kh«ng nh­ ng­êi ng­¬i võa míi h¹ thñ, trong ®ã cã L­u ThiÖn T­îng, nghe nãi hiÖn nay h¾n ta ®ang ë Kho¸i Ho¹t L©m, nÕu ng­¬i cã thÓ h¹ thñ ®­îc ng­êi nµy th× chuyÖn chóng ta cã thÓ bµn b¹c tiÕp",
		[24] = "<npc>- H¾n chÕt råi.ta ®· giÕt ®­îc L­ ThiÖn T­îng. <enter>- Ta ®· thÊy râ n¨ng lùc cña ng­¬i. S¬n tr¹i cã mét kÕ ho¹ch lín, ta hy väng ng­¬i tham gia. <enter>- lµ kÕ ho¹ch g×? <enter>- HiÖn vÉn ®ang thu xÕp, ®Õn lóc ta sÏ b¸o cho ng­¬i, nh­ng tr­íc m¾t ng­¬i h·y ®Õn Thóy Yªn M«n gÆp LÖ Thu Thñy, c« Êy sÏ nãi cho ng­¬i biÕt b­íc tiÕp theo lµ g×.<enter>- Ta biÕt råi!",
		[28] = "<npc>Chñ nh©n cña L©m Uyªn Nhai hiÖn t¹i lµ Bang chñ Thiªn V­¬ng Bang -- D­¬ng Anh cho r»ng Hµn Giang §éc §iÕu TÈu cã liªn quan ®Ó viÖc mÊt tİch cña ChiÕn Th­¬ng Long §o¹n, ng­¬i h·y ®Õn Thiªn V­¬ng Bang mét chuyÕn xem sao.",
		[31] = "<npc>HiÖn nay TÇm Long Héi ®· thu thËp ®­îc hai mãn thÇn vËt , nÕu ®Ó hä t×m ®­îc th× kÕ ho¹ch L©m Uyªn Nhai sÏ thÊt b¹i, ta muèn nhê ng­¬i ®Õn ThiÕu L©m Tù gÆp §¹i S­ Kh«ng TŞch mét chuyÕn, trong tay «ng ta ®ang gi÷ 1 phÇn cña bé Thiªn Hoµng Long Khİ!",
		[34] = "<npc>- ThÕ nµo? <enter>- Mäi thø ë ®©y. <enter>- Tèt qu¸! Ta còng biÕt ng­¬i nhÊt ®Şnh sÏ thµnh c«ng. <enter>- ......Long Khİ cã ®ñ, cã thÓ thay ®æi vËn mÖnh Thiªn h¹ sao? <enter>- T¹i sao l¹i hái vËy? <enter>- Ta......Lßng ta cã chót nghi vÊn.<enter>-  Ta còng kh«ng biÕt. Ta chØ nghe qua 'ThËp Long Tô Thñ, Thiªn H¹ Khëi §Şnh, §o¹n Kú Chóy Cèt, T©n Chñ XuÊt HiÖn'. <enter> §­îc! Trong thêi gian nµy cã thÓ ta sÏ kh«ng t×m ng­¬i. Hoa S¬n ph¸i ®ang cã mét sè vÊn ®Ò cÇn ng­êi gióp ®ì. Ng­¬i h·y quay vÒ diÖn kiÕn Ngò ca ®i!",
		[9999] = {"<npc>Giang hå hiÓm ¸c, m­êi ba huynh ®Ö giê chØ cßn m×nh ta.", {{"KÕt thóc ®èi tho¹i", bil.OnCancel}}},
	},
	Msg_VanNhi = {
		[36] = "<npc>- ¤!Chµo hiÖp kh¸ch! T×m ta cã viÖc g×?<enter>- µ......Nghe nãi muéi biÕt 'Thiªn Hoµng Long Khİ'?<enter>- Ai da! §õng nh¾c ®Õn Long khİ Hæ khİ, nãi chót chuyÖn vui víi n« gia ®­îc kh«ng?<enter>- ViÖc nµy...... NÕu muéi biÕt tin tøc 'Thiªn Hoµng Long Khİ'......cã thÓ nãi víi ta ®­îc kh«ng......<enter>- Hõm! Muèn moi tin cña ta ®©u cã dÔ!<enter>- Muéi muèn thÕ nµo míi chŞu nãi ra tung tİch cña Long Khİ?<enter>- §Ó xem ng­¬i cã thÓ lµm l·o n­¬ng vui kh«ng?<enter>- ChuyÖn nµy......<enter>- ChuyÖn nµy c¸i g×? Ta chØ muèn b¶o ng­¬i ®Õn L©m An t×m <color=yellow>Th¸i C«ng C«ng<color> lÊy 1 b×nh Thiªn H­¬ng Ngäc Chi Cao.<enter>- Ta t­ëng......®¬n gi¶n th«i, t×m <color=yellow> Th¸i C«ng C«ng<color> lÊy Thiªn H­¬ng Ngäc Chi Cao ®óng kh«ng? H·y chê tin ta!",
		[40] = "<npc>- §©y thËt sù lµ Thiªn H­¬ng Ngäc Chi Cao ®©y sao. Qu¶ thËt nhµ ng­¬i còng cã chót İt b¶n lÜnh, vÒ chuyÖn Thiªn Hoµng Long Khİ nhµ ng­¬i muèn hái g× nµo.<enter>- T¹i h¹ muèn biÕt vÒ TrÊn Minh Chi Liªn<enter>- Sao d¹o nµy nhiÒu ng­êi ®Õn t×m ta hái vÒ viÖc nµy vËy nhØ?<enter>- Tû cã biÕt lµm viÖc nµy khã kh¨n l¾m kh«ng, h·y cho ta biÕt tû thÊy 'TrÊn Minh Chi Liªn' ë ®©u?<enter>- Ng­¬i nãi sîi d©y chuyÒn nµy µ......ThËt ra mÊy n¨m tr­íc ta cã nghe mét ng­¬i ®µn «ng tõng nãi......<enter>- HoÆc lµ mÊy n¨m tr­íc nghe qua...<enter>- §óng vËy! Cho nªn tr­íc tiªn b¶o ng­¬i gióp ta t×m b×nh g× ®ã mµ th«i, nÕu nh­ ta cã ta ®· b¶o ng­¬i ®i lÊy viªn minh ch©u trªn ®Çu Hoµng Th­îng vÒ råi.<enter>- Ng­êi ch¬i:......ThÕ c« gÆp qua ng­êi ®µn «ng cã sîi d©y chuyÒn ®ã kh«ng?<enter>- Lµ mét vŞ Tiªu s­ ®Õn tõ <color=yellow>D­¬ng Ch©u<color>, ngoµi ra ta còng kh«ng ®­îc râ.<enter>- Tiªu S­ ë <color=yellow>D­¬ng Ch©u<color>? §­îc! Ta ®i t×m h¾n!",
		[43] = "<npc>- Ng­¬i véi v· quay l¹i t×m ta cã viÖc g×?<enter>- Ta ®Õn hái th¨m hµnh tung 1 ng­êi con g¸i.<enter>- C« g¸i nµo khiÕn ng­¬i ®iªn ®¶o thÕ?<enter>- HiÓu lÇm råi! Ng­êi ®ã lµ Th¸i Nghª vî tr­íc cña Tiªu s­ H¹ HÇu Phôc.<enter>- Ng­¬i muèn biÕt chuyÖn g×?<enter>- .....….<enter>- Ng­¬i h·y ®Õn Long TuyÒn th«n t×m <color=yellow>Phã L«i Th­<color>, Y tù x­ng lµ Giang Nam V¹n Sù Th«ng, c¶ vïng Giang Nam chuyÖn g× còng biÕt.<enter>- Cã ng­êi nh­ thÕ ­? §Ó ta ®i xem thö.<enter>- LÇn sau ®õng ®i tay kh«ng ®Õn!",
		[9999] = {"<npc>Nh×n n­íc ch¶y d­íi cÇu khiÕn ta cø thÊy lßng m×nh b©ng khu©ng! Gi¸ nh­ hiÖn giê lµ thêi b×nh th× hay biÕt mÊy!", {{"KÕt thóc ®èi tho¹i", bil.OnCancel}}},
	},
	Msg_Npc = {
		[37] = "<npc>- Nghe nãi Th¸i C«ng C«ng cã 1 lo¹i Thiªn H­¬ng Ngäc ChØ Cao?<enter>- Cã th× cã ®Êy, nh­ng ng­¬i muèn lµm g×?<enter>- Xem ra Th¸i C«ng C«ng h«m nay t©m tr¹ng kh«ng tèt l¾m?<enter>- H«m tr­íc bŞ 1 tªn TiÓu Th¸i gi¸m lÊy trém cña ta 1 pho t­îng Kim PhËt, ®ã lµ Tóc Kim Xİch PhËt, thËt lµ tøc qu¸!<enter>- Trong cung còng cã chuyÖn mÊt trém sao? Tªn Th¸i gi¸m ®ã hiÖn giê ë ®©u?<enter>- Hõm! Tªn sóc sinh ®ã ®· trèn lªn <color=yellow>Phôc Ng­u s¬n<color>.<enter>- T×m ng­êi lµ trß mµ ta thİch nhÊt, nÕu ta ®em t­îng PhËt trë vÒ C«ng C«ng cã thÓ cho ta 1 b×nh Thiªn H­¬ng Ngäc Chi Cao kh«ng?<enter>- ChØ cÇn ng­¬i ®em t­îng Kim PhËt vÒ ®õng nãi 1 b×nh c¶ r­¬ng ta còng cho ng­¬i!",
		[39] = "<npc>- Th¸i C«ng C«ng! §©y cã ph¶i t­îng Kim PhËt cña «ng bŞ c­íp ®i?<enter>- A! Kh«ng ngê ng­¬i cã thÓ lÊy vÒ cho ta!<enter>- B¹n trÎ lµm tèt l¾m! §©y Thiªn H­¬ng Ngäc ChØ Cao cña ng­¬i.",
		[41] = "<npc>- Xin hái vŞ §¹i ca cã biÕt tung tİch cña 'TrÊn Minh Chi Liªn' kh«ng?<enter>- B¹n trÎ, ng­¬i nghe tin nµy tõ ®©u vËy? Tr­íc ®©y cã nghe Tiªu ®Çu H¹ HÇu Phôc cã mét sîi d©y chuyÒn ®Æc biÖt, nh­ng kh«ng biÕt lµ 'TrÊn Minh Chi Liªn' g× ®ã.<enter>- ThÕ b©y giê H¹ HÇu Phôc ë ®©u?<enter>- H¾n hiÖn ®ang chuyÓn tiªu ë <color=yellow>Thanh Thµnh s¬n<color>, kh«ng biÕt lóc nµo míi vÒ.",
		[44] = "<npc>- Võa ®óng 1 v¹n l­îng. Th¸i Nghª vèn lµ vî cña H¹ HÇu Phôc, nh­ng do H¹ HÇu Phôc ®am mª töu s¾c, phô rÉy Th¸i Nghª. Cuèi cïng Th¸i Nghª quyÕt ®Şnh chän con ®­êng cña m×nh, Th¸i Nghª quyÕt t©m khæ luyÖn ®éc thuËt, trong 10 n¨m ng¾n ngñi ®· luyÖn thµnh......<enter>- ThÕ c« ta ®ang ë ®©u?<enter>- Th¸i Nghª b©y giê lµ 1 trong Ngò §¹i H­¬ng chñ <color=yellow>Ngò §éc gi¸o<color> <color=yellow> MÆc Thï H­¬ng chñ<color>!<enter>- Th× ra lµ vËy....ThÕ t¹m biÖt ë ®©y vËy.<enter>- LÇn sau nhí ®em nhiÒu tiÒn qua..",
		[45] = "<npc>- Sao ng­¬i d¸m tù tiÖm x«ng vµo ®©y?<enter>- MÆc H­¬ng chñ thø lçi! T¹i h¹ m¹o muéi ®Õn hái th¨m tung tİch  'TrÊn Minh Chi Liªn'.<enter>- TrÊn Minh Chi Liªn? Ta ch­a tõng nghe qua mãn nµy.<enter>- Ta nghe..... chång tr­íc cña bµ nãi, lóc bµ bá «ng ta cã ®em theo sîi d©y chuyÒn ®ã.<enter>- Hõ! Th× ra lµ thÕ! Ta còng muèn biÕt tung tİch cña nã, nã ë trªn m×nh ®øa con ®· bŞ thÊt l¹c cña ta!<enter>- MÆc H­¬ng chñ cßn cã mét ®øa con?<enter>- Hõ......N¨m ®ã sau khi rêi khái tªn phô b¹c ®ã ta ®· mang thai..Lóc ®øa con ch­a ®ñ tuæi trong mét lÇn chiÕn lo¹n ta ®· thÊt l¹c nã. Bao n¨m tr«i qua cø nghÜ ®Õn chuyÖn nµy th× ta..<enter>- Th× ra lµ thÕ......Ta cã thÓ gióp bµ t×m tung tİch cña ®øa con g¸i.<enter>- NÕu ng­¬i cã thÓ gióp ta t×m ®­îc ®øa con th× qu¸ tèt!<enter>- VËy MÆc H­¬ng chñ cø ®îi tin tøc cña ta. Th¶m råi! Thiªn h¹ lín nh­ vËy biÕt ®Õn ®©u mµ t×m ®øa con thÊt l¹c nhiÒu n¨m hay lµ quay vÒ gÆp «ng giµ gi÷ ®å hái xem.?",
		[46] = "<npc>- L·o......tiªn sinh.?l¹i tèn tiÒn råi!?<enter>- B¹n trÎ, lÇn nµy l¹i muèn hái g×?<enter>- Ta muèn biÕt con g¸i cña Tang Chu ®ang ë ®©u? Muèn bao nhiªu tiÒn cø nãi!<enter>- õ......C¸i nµy......ta kh«ng lÊy tiÒn.<enter>- ¤i! V¹n lÇn c¶m ¬n!<enter>- Bëi v× ta còng kh«ng biÕt.<enter>- L·o...<enter>- Ta ®ïa th«i! Ng­¬i h·y ®Õn <color=yellow>Vâ §ang ph¸i<color>, kh«ng chõng cã chót manh mèi.<enter>- C¶m ¬n l·o tiªn sinh!",
		[47] = "<npc>(Trªn cæ h¾n ®eo sîi d©y chuyÒn g× l¹ qu¸??)<enter>- Sîi d©y chuyÒn nµy huynh tõ ®©u mµ cã?<enter>- Sîi d©y chuyÒn nµy? Ta còng kh«ng râ......S­ phô nãi lóc nhÆt ta vÒ trªn ng­êi ®· cã nã<enter>- (§óng lµ huynh råi!_ VËy sîi nµy nhÊt ®Şnh lµ TrÊn Minh Chi Liªn råi!?<enter>- ThÕ ThiÕu hiÖp cã tõng nghÜ sÏ ®i t×m mÑ kh«ng?<enter>- ChuyÖn nµy ta tr­íc giê ch­a nghÜ tíi, S­ phô hiÖn nay Quèc gia l©m n¹n, chóng ta nh÷ng ng­êi tËp vâ nªn gãp mét phÇn søc lùc.<enter>- Nh­ng cã thÓ mÑ ng­¬i ®ang chê ng­¬i? Ta t­ëng cã thÓ gióp huynh t×m l¹i mÑ m×nh.<enter>- ThËt µ? Ng­¬i ®· gÆp qua mÑ ta?<enter>- Cã lÏ cã mét ng­êi ®óng thËt lµ mÑ ng­¬i......ta còng kh«ng ch¾c l¾m, hay lµ cïng ta ®i th¨m bµ ta mét chuyÕn?<enter>- Nh­ng b©y giê kh«ng ®­îc! Vâ §ang ph¸i ta hiÖn cã mét tªn ph¶n ®å, y ®· lÊy l­îc ®å qu©n sù c¶ vïng Giang Nam ®­a cho Kim quèc! HiÖn Vâ l©m Trung nguyªn tÊt c¶ ®Òu truy b¾t tªn nµy. Ngµy nµo ch­a lÊy l¹i ChiÕn l­îc ®å ta ¨n ngñ kh«ng yªn!<enter>- (§©y ®©u ph¶i lµ viÖc cña mét m×nh ng­¬i!)<enter>- Chi b»ng thÕ nµy, ta gióp ng­¬i xö lı tªn b¹i ho¹i cña Vâ §ang, sau ®ã cã thÓ cïng ta ®i t×m mÑ ng­¬i?<enter>- NÕu ng­¬i t×m ®­îc tªn ph¶n ®å ®ã thËt sù lµ phóc lín cña Vâ l©m! Ta nghÜ ng­¬i còng nªn gãp chót søc cho §¹i Tèng!<enter>- §óng vËy!?ChØ cÇn lÊy ®­îc sîi d©y chuyÒn cña huynh c¸i g× còng dÔ nãi?<enter>- Ph¶n ®å ®ã tªn <color=yellow>Tiªu V« Th­êng<color>, ®ang trèn trªn <color=yellow>Thôc C­¬ng S¬n<color>.",
		[49] = "<npc>- A! §· do¹t l¹i ChiÕn l­îc ®å! Ng­¬i ®· gióp Vâ l©m thanh trõ tªn b¹i lo¹i ®ã! ThËt sù ®¸ng chóc mõng!<enter>- Ha ha! ChuyÖn nhá th«i mµ! Chóng ta ®i t×m mÑ cña huynh ®i!<enter>- Bµ ta hiÖn ®ang ë ®©u?<enter>- Chİnh lµ MÆc Thï Ngò §éc gi¸o Tang Chu.<enter>- C¸i g×?<enter>- ¥? Sao vËy?<enter>-  Ng­¬i b¶o ta ®i gÆp ng­êi cña Ngò §éc gi¸o!? Kh«ng bao giê!<enter>- ?......Kh«ng cÇn thay ®æi nhanh vËy??<enter>- Nh­ng......bµ ta lµ mÑ cña huynh! D©y chuyÒn trªn cæ huynh chİnh lµ lóc bµ sinh huynh ®· ®Ó l¹i<enter>- X­a nay Chİnh Tµ bÊt ph©n l­ìng lËp, ta thµ kh«ng cã ng­êi mÑ nµy!<enter>- Sîi d©y chuyÒn nµy ®­a ng­¬i, nãi víi bµ ta sau nµy sÏ gÆp l¹i ë trªn chiÕn tr­êng!<enter>- C«ng Tö ®· quyÕt nh­......vËy ta kh«ng lµm phiÒn n÷a. (Ha ha! ThËt kh«ng phİ c«ng, Vâ §ang l¹i cã nh©n tµi nh­ thÕ??)",
		[50] = "<npc>- Tiªn sinh! ¤ng biÕt lai lŞch cña d©y chuyÒn nµy?<enter>- VËt nµy......kh«ng ph¶i lµ 'TrÊn Minh Chi Liªn' trong 'Thiªn Hoµng Long Khİ' sao?<enter>- VËy cuèi cïng Long Khİ cã bİ mËt g×?<enter>- Ng­¬i cã biÕt  'Thiªn Hoµng Long Khİ' tæng céng cã 8 c¸i, ®­îc chÕ t¹o t¹i Hµm D­¬ng. Sau ®ã TÇn Thñy Hoµng qua ®êi nã còng mÊt tİch theo. NÕu tËp hîp ®ñ 8 mãn sÏ biÕt ®­îc 1 bİ mËt kinh ng­êi.<enter>- Mét bİ mËt kinh ng­êi? VËy cuèi cïng lµ thÕ nµo?<enter>- ViÖc nµy...... Ng­¬i chØ cã t×m ®ñ 8 mãn Long Khİ míi cã thÓ biÕt.<enter>- ¤ng biÕt tung tİch c¸c mãn Long Khİ cßn l¹i kh«ng?<enter>- NÕu nh­ ta biÕt ta cßn cã m¹ng trªn ®êi sao? Trong Vâ l©m gÇn ®©y sè ng­êi chÕt v× mÊy mãn ®å nµy kh«ng İt......<enter>- LÏ nµo thËt sù hiÓm nguy ®Õn vËy sao?<enter>- B¹n trÎ nghe nãi ng­¬i rÊt cã chİ? Tin tøc Long Khİ hÇu nh­ ai còng biÕt chót İt......<enter>- Nh­ng ph¶i nép tiÒn ®óng kh«ng?<enter>- Khµ! Khµ! ChØ lµ ®ñ uèng r­îu th«i mµ! Tin tøc kh«ng ®óng ta kh«ng lÊy tiÒn.<enter>- Kim  quèc ®ang ph¸t sinh kh«ng İt chuyÖn, h×nh nh­ cã liªn quan ®Õn 'Bµn Long C«i'!<enter>- Kim quèc?.....ta sÏ ®Õn <color=yellow>BiÖn Kinh<color> t×m chót manh mèi! C¸m ¬n tiªn sinh!",
		[51] = "<npc>- GÇn ®©y Kim binh kh«ng biÕt ®ang lµm g×, c¶ ngµy triÖu tËp binh m· trong thµnh, h×nh nh­ ®ang t×m thø g×......<enter>- C« biÕt bän ta ®ang t×m g× µ?<enter>- ChuyÖn cña ng­êi Kim ta nµo d¸m hái! NÕu nhiÒu chuyÖn sÏ bŞ ®i tï n÷a n¨m, ta cßn ph¶i lo viÖc nhµ n÷a!<enter>- Thêi nay chØ cã nh÷ng kÎ chŞu luån cói Kim quèc míi ®­îc sèng an nhµn, ng­¬i h·y nh×n <color=yellow>TrÇn Tam B¶o<color> xem, h¾n ®­îc bao nhiªu ng­êi ng­ìng mé.<enter>- ThÕ µ......xem ra <color=yellow>TrÇn Tam B¶o<color> tiÕp xóc víi ng­êi Kim kh«ng İt.",
		[52] = "<npc>- Ai......<enter>- VŞ ®¹i ca nµy sao l¹i ë ®©y than ng¾n thë dµi?<enter>- Xem ra tİnh m¹ng c¶ gia ®×nh mÊt trong tay ta......<enter>- ChuyÖn g× mµ nghiÖm träng thÕ?<enter>- §å §¬n §¹i nh©n trong triÒu muèn mét b×nh Lam Hoa, ai ngê ta nhê ng­êi vËn chuyÓn tõ C¶nh §øc trÊn bŞ giÆc c­íp ®i!<enter>- LÇn nay e r»ng tİnh m¹ng c¶ gia ®×nh khã b¶o toµn......<enter>- Xem ra lÇn nµy tİnh m¹ng c¶ nhµ «ng thËt sù mong manh! Kh«ng sao ®©u, ta sÏ gióp «ng.<enter>- ThËt µ......?<enter>- §­¬ng nhiªn, c¸i b×nh «ng nãi bŞ c­íp ë ®©u?<enter>- Cã mét tªn ®¹o tÆc tªn <color=yellow>Lôc Phi<color=> ë gÇn <color=yellow>Nh¹n §·ng S¬n<color>......<enter>- §­îc råi! H·y chê ë ®©y ta gióp «ng lÊy l¹i!",
		[54] = "<npc>- §©y lµ b×nh Lam Hoa «ng ®Æt mua ph¶i kh«ng?Ta ®· ®em vÒ råi.<enter>- A! §óng lµ b×nh §å §¬n §¹i nh©n thİch! Ta thËt kh«ng d¸m tin vµo m¾t m×nh!<enter>- Ng­¬i ®· cøu tİnh m¹ng c¶ nhµ ta, kh«ng biÕt ®Òn ¬n ng­¬i thÕ nµo?<enter>- ChØ lµ chuyÖn nhá! Ta chØ muèn biÕt gÇn ®©y §å §¬n §¹i nh©n ®ang lµm g×?<enter>- §å §¬n §¹i nh©n gÇn ®©y nhËn ®­îc 1 b¶o vËt, nh­ng h×nh nh­ «ng ta kh«ng muèn ai biÕt chuyÖn nµy.<enter>- A? Ch¼ng lÏ ®ã lµ 'Bµn Long C«i'? VËy §å §¬n §¹i nh©n th­êng ®i ®©u?<enter>- ¤ng ta gÇn ®©y hay ®i <color=yellow>ThiÕt Th¸p<color>, ng­¬i ®Õn ®ã cã thÓ gÆp<enter>- §­îc! C¶m ¬n tiªn sinh!",
		[56] = "<npc>- Ng­êi t×m Hoµn Nhan Hïng Khang lµm g×?<enter>- V× muèn mét mãn ®å.<enter>- Ha ha ha...... LÇn ®Çu tiªn thÊy mét ng­êi nh­ ng­¬i.<enter>- T¹i sao?<enter>- D¸m tr­íc mÆt Quèc s­ §¹i Kim ®ßi vËt, trªn thÕ gian nµy e lµ chØ cã m×nh ng­¬i.<enter>- Nh­ng ta thİch tİnh c¸ch cña ng­¬i,  ng­¬i ®Õn <color=yellow>Long M«n TrÊn<color> t×m muéi muéi cña ta <color=yellow> §oan Méc Thanh<color>, chØ cã c« ta míi biÕt Hoµn Nhan Hïng Khang ë ®©u.",
		[57] = "<npc>- C« lµ T¶ Hé sø cña Thiªn NhÉn Gi¸o muéi muéi cña §oan Méc DuÖ?<enter>- Hõ, ch¾c lµ anh ta b¶o ng­¬i ®Õn ph¶i kh«ng? Ng­¬i vÒ nãi víi huynh Êy, ta kh«ng bao giê trë vÒ!<enter>- ......<enter>- Tuy anh c« b¶o ta ®Õn, nh­ng y kh«ng cã b¶o c« quay vÒ.<enter>- VËy ng­¬i ®Õn ®©y lµm g×?<enter>- Ta muèn biÕt tung tİch cña Hoµn Nhan Hïng Khang.<enter>- Ng­¬i t×m Hïng Khang ®Ó lµm g×?<enter>- V× trong tay h¾n cã mãn ®å ta cÇn.<enter>- Hµ? ViÖc ®ã cßn ph¶i xem ng­¬i cã kh¶ n¨ng lÊy mãn ®å trong tay h¾n kh«ng.<enter>- Ta ph¶i lµm thÕ nµo míi cã thÓ gÆp y?<enter>- ViÖc nµy......®Ó  ta nghÜ xem,  T­íng lÜnh Liªu §Şnh n­íc Tèng ®ang chèng l¹i §¹i Kim ta, nÕu ng­¬i cã thÓ ®¸nh th¾ng h¾n cã lÏ ta sÏ cho ng­¬i gÆp Hïng Khang.<enter>- T¹i sao ta ph¶i nghe lêi c«?<enter>- Ha ha! ChØ sî trªn thÕ gian nµy ngoµi ta ra kh«ng cã ai biÕt hµnh tung cña Hïng Khang.<enter>- VËy ®­îc, cho ta biÕt Liªu §Şnh ®ang ë ®©u?<enter>- Tªn kh«ng biÕt trêi cao ®Êt réng ®ang ë <color=yellow> Linh Cèc ®éng<color>, ng­¬i ®Õn lÊy thñ cÊp h¾n vÒ cho ta.<enter>- ... ...",
		[59] = "<npc>- (nĞm ®Çu Liªu §Şnh xuèng ®Êt)<enter>- §©y lµ ®Çu cña Liªu §Şnh.<enter>- RÊt tèt! Qu¶ nhiªn kh«ng phô lßng ta.<enter>- §õng nhiÒu lêi! Hoµn Nhan Hïng Khang hiÖn ®ang ë ®©u?<enter>- Hïng Khang ®ang bËn, t¹m thêi kh«ng thÓ gÆp h¾n ®­îc.<enter>- Ng­¬i giìn víi ta h¶?<enter>- Ha ha...... Ng­¬i t­ëng bæn c« n­¬ng lµ kÎ hai lêi sao? ThËt ra Hïng Khang ®· sím biÕt ng­¬i muèn g×.<enter>- VËy lµ ı g×?<enter>- Y biÕt ®­îc ng­¬i lµ ng­êi d¸m b¸n m¹ng v× §¹i Kim, cho nªn dÆn ta tÆng ng­¬i mãn ®å nµy.<enter>- Nhí lÊy! Sau nµy lµm viÖc cho §¹i Kim sÏ kh«ng thiÖt thßi ®©u. Ha! Ha! Ha!<enter>- .....….",
	},
	Msg_Player = {
		[0] = "B¹n ch­a nhËn nhiÖm vô T©n Thñ, h·y ®Õn gÆp Long Ngò ®Ó tiÕp nhËn nhiÖm vô. PhÇn th­ëng nhiÖm vô: <color=orange>bé trang bŞ Kim Phong, l­îng lín ®iÓm kinh nghiÖm",
		[1] = "Long Ngò b¶o b¹n ra ngoµi th«n ®¸nh qu¸i ®Ó lÊy 5 miÕng thŞt t­¬i vµ mang ®Õn gÆp Vâ S­ t×m hiÓu vÒ thÕ giíi vâ l©m!",
		[2] = "Quay vÒ gÆp Long ngò ®Ó hái th¨m tin tøc cña b¶o vËt Thiªn Hoµng Long Khİ vµ §Şnh Quèc Hoµng Kim!",
		[3] = "Long Ngò yªu cÇu b¹n sö dông CÈm nang ®ång hµnh ®Ó nhËn phÇn th­ëng hç trî cÊp 20!",
		[4] = "Quay vÒ gÆp Long ngò, cã thÓ cã vµi th«ng tin vÒ b¶o vËt Thiªn Hoµng Long Khİ vµ §Şnh Quèc Hoµng Kim!",
		[5] = "<color=yellow><Ch­¬ng I - Bİ MËt TÇm Long Héi><color> §Õn thµnh §¹i Lı t×m gÆp M¹c SÇu (183,198) cã thÓ tra ®­îc İt th«ng tin vÒ 2 mãn b¶o vËt tõ c« ta!",
		[6] = "M¹c SÇu nghi ngê b¶n th©n b¹n, c« ta hÑn b¹n ph©n cao thÊp t¹i ngo¹i thµnh §¹i Lı (204,186) (cã thÓ tæ ®éi)",
		[7] = "M¹c SÇu bŞ ®¸nh b¹i d­íi tay cña b¹n, c« ta hÑn b¹n vÒ thµnh §¹i lı (183,198) nãi chuyÖn!",
		[8] = "M¹c SÇu b¶o b¹n ®Õn Thµnh §« t×m gÆp TiÕu C«ng Tö (403,319), ng­êi nµy ®ang n¾m gi÷ 1 phÇn cña Thiªn Hoµng Long Khİ!",
		[9] = "C«ng Tö TiÕu b¶o b¹n ®i t×m thuéc h¹ cña «ng lµ Giíi L­u Phong ë D­îc v­¬ng ®éng tÇng 1 (192,207) ®Ó ®o¹t l¹i Hoµng Kim L©n (cã thÓ tæ ®éi)!",
		[10] = "LÊy ®­îc Hoµng Kim L©n trong tay cña Giíi L­u Phong, b¹n cã thÓ quay vÒ §¹i Lı gÆp M¹c SÇu (183,198)!",
		[11] = "NhËn ®­îc lêi ®Ò nghŞ cña M¹c SÇu, h·y mau ®Õn D­¬ng Ch©u gÆp H¹ V« Th­ (212,195), ®iÒu tra tin tøc vÒ Cöu ThiÖn Chi ChØ.",
		[12] = "Theo Lêi cña H¹ V« Th­, h·y lªn §iÓm Th­¬ng §éng tÇng 3 ®¸nh T¶ §ao HiÖp (194,190) ®Ó ®o¹t l¹i Cöu ThiÖn Chi ChØ (cã thÓ tæ ®éi)",
		[13] = "Mang Cöu ThiÖn Chi ChØ lÊy ®­îc tõ tay cña T¶ §ao HiÖp vÒ §¹i Lı giao cho M¹c SÇu!",
		[14] = "M¹c SÇu ®· bŞ b¾t cãc, h·y ®Õn L©m An t×m gÆp M¹nh Phµm (203,187), nhê «ng Êy gi¶i quyÕt mäi chuyÖn!",
		[15] = "M¹nh Phµm yªu cÇu lªn H­ëng Thñy §éng lÊy thñ cÊp cña O¸n §éc (264,207) råi «ng ta míi chŞu gióp ®ì (cã thÓ tæ ®éi)",
		[16] = "Sau khi h¹ thñ ®­îc O¸n §éc, h·y quay vÒ L©m An t×m M¹nh Phµm (203,187)",
		[17] = "NhËn ®­îc tin b¸o cña M¹nh Phµm, lËp tøc lªn ®­êng ®Õn Nha M«n T­¬ng D­¬ng h¹ thñ ThÇn Bİ Nam Nh©n (211,195) (cã thÓ tæ ®éi)",
		[18] = "ThÇn Bİ Nam Nh©n sau khi bŞ ®¸nh b¹i, «ng ta hÑn b¹n ®Õn chç M¹c SÇu ë §¹i Lı ®Ó nãi chuyÖn!",
		[19] = "Hãa gi¶i Èn khuÊt gi÷ Nam Cung Phi V©n vµ M¹c SÇu, b¹n trë vÒ gÆp Long Ngò, t×m hiÓu vÒ c©u chuyÖn L©m Uyªn Nhai mµ M¹c SÇu ®· nh¾c ®Õn!",
		[20] = "<color=yellow><Ch­¬ng II - C©u chuyÖn L©m Uyªn Nhai><color> Long Ngò giíi thiÖu b¹n ®Õn thµnh BiÖn Kinh t×m gÆp Phã Nam B¨ng (212,197), b¾t ®Çu mét ch­¬ng míi!",
		[21] = "Theo lêi ®Ò nghŞ cña Phã Nam B¨ng, b¹n ®Õn La Tiªu S¬n lÊy thñ cÊp cña tªn ph¶n quèc Ninh T­íng Qu©n (254,172) (cã thÓ tæ ®éi)",
		[22] = "H¹ thñ ®­îc Ninh T­íng Qu©n, b¹n cÊp tèc quay vÒ BiÖn Kinh gÆp Phã Nam B¨ng (212,197)",
		[23] = "Theo lêi ®Ò nghŞ cña Phã Nam B¨ng, b¹n nhanh chãng ®Õn Kho¸i Ho¹t L©m h¹ thñ 1 trong 3 cao thñ giang hå L­u ThiÖn T­îng (201,199) (cã thÓ tæ ®éi)",
		[24] = "H¹ thñ ®­îc tªn tù x­ng ®Ö nhÊt kho¸i thñ L­u ThiÖn T­îng, b¹n nhanh chãng quay vÒ BiÖn Kinh b¸o c¸o Phã Nam B¨ng (212,197)",
		[25] = "Theo lêi giíi thiÖu cña Phã Nam B¨ng, ®Õn Thóy Yªn M«n gÆp LÖ Thu Thñy (43,84), c« Êy sÏ cho b¹n biÕt b­íc tiÕp theo ph¶i lµm g×.",
		[26] = "§Ó chøng tá b¶n lÜnh víi LÖ Thu Thñy, b¹n nhanh ch©n lªn ®­êng ®Õn Kinh Hoµng §éng h¹ thñ Tõ Tù Lùc (181,214) vµ lÊy l¹i chiÕn gi¸p (cã thÓ tæ ®éi)",
		[27] = "H¹ thñ ®­îc tªn t­íng qu©n ph¶n quèc Tõ Tù Lùc ®o¹t ®­îc b¶o vËt B¹ch Long Tøc, b¹n lËp tøc trë vÒ Thóy Yªn M«n gÆp LÖ Thu Thñy (43,84)",
		[28] = "C«ng viÖc cña LÖ Thuy Thñy ®· t­¬m tÊt, b¹n quay vÒ BiÖn Kinh gÆp Phã Nam B¨ng (212,197) ®Ó t×m hiÓu th«ng tin tiÕp theo!",
		[29] = "§Õn Thiªn V­¬ng Bang gÆp Hµn Giang §éc §iÕu TÈu (205,199) ®Ó t×m hiÓu vÒ b¶o vËt ChiÕn Th­¬ng Long §o¹n, mét b¶o vËt cña Thiªn V­¬ng Bang!",
		[30] = "Hµn Giang §éc §iÕu TÈu hÑn b¹n t¹i Mª Cung §éng §×nh Hå (199,206), «ng ta muèn kiÓm tra b¶n lÜnh cña b¹n (cã thÓ tæ ®éi)",
		[31] = "LÊy ®­îc ChiÕn th­¬ng Long §o¹n tõ tay cña Hµn l·o tiÒn bèi, quay vÒ BiÖn Kinh b¸o c¸o víi Phã Nam B¨ng (212,197)",
		[32] = "V× kÕ ho¹ch L©m Uyªn Nhai, b¹n ph¶i vÊt v¶ lªn ThiÕu L©m Tù gÆp §¹i S­ Kh«ng TŞch (221, 177) mét chuyÕn!",
		[33] = "§¹i S­ Kh«ng TŞch muèn thö søc cña b¹n, hÑn b¹n t¹i HËu s¬n ThiÕu L©m Tù (218/166) (cã thÓ tæ ®éi)",
		[34] = "B¹n mang hai mãn b¶o khİ cña ThiÕu L©m Tù vÒ BiÖn Kinh GÆp Phã Nam B¨ng (212,197)",
		[35] = "Mäi chuyÖn bªn chç Phã Nam B¨ng ®· s¾p xÕp æn tháa, Phã Nam B¨ng b¶o b¹n vÒ gÆp Long Ngò!",
		[36] = "<color=yellow><Ch­¬ng III - Long Khİ Chi Häa><color> BŞ v­íng vµo vßng xo¸y cña b¶o vËt Thiªn Hoµng Long Khİ, b¹n quyÕt ®Şnh ®Õn Chu Tiªn TrÊn t×m V©n Nhi (215,198)",
		[37] = "§Ó lÊy th«ng tin tõ chç V©n Nhi b¹n buéc ph¶i ®Õn L©m An t×m Th¸i C«ng C«ng (203,200) lÊy Thiªn H­¬ng Ngäc ChØ Cao!",
		[38] = "§Ó lÊy Thiªn H­¬ng Ngäc ChØ Cao tõ tay cña Th¸i C«ng C«ng b¹n ph¶i gióp «ng Êy lªn chç tiÓu th¸i gi¸m TiÓu Kú Nhi ë Phôc Ng­u S¬n §«ng (226,205) ®o¹t l¹i Kim PhËt (cã thÓ tæ ®éi)",
		[39] = "Mang Kim PhËt lÊy tõ tay cña TiÓu Kú Nhi vÒ L©m An trao ®æi víi Th¸i C«ng C«ng (203,200)",
		[40] = "LÊy ®­îc Thiªn H­¬ng Ngäc ChØ Cao chç Th¸i C«ng C«ng, b¹n lËp tøc mang vÒ Chu Tiªn TrÊn gÆp V©n Nhi (215,198) ®æi lÊy th«ng tin!",
		[41] = "LÊy ®­îc manh mèi tõ V©n Nhi, b¹n véi v· lªn ®­êng ®Õn D­¬ng Ch©u t×m Tiªu S­ (199,194 )",
		[42] = "Tiªu S­ cho biÕt, H¹ HÇu Phôc hiÖn ®ang ë Thanh Thµnh S¬n (338,246) h¾n ta ®ang gi÷ TrÊn Minh Chi Liªn (cã thÓ tæ ®éi)",
		[43] = "Kh«ng biÕt Th¸i Nghª vî cña H¹ HÇu Phôc lµ ai, b¹n chØ cßn c¸ch ®Õn Chu Tiªn TrÊn t×m V©n Nhi (215,198) nhê v¶ c« Êy!",
		[44] = "V©n Nhi b¶o b¹n ®Õn Long TuyÒn Th«n gÆp Phã L«i Th­ (199,203), «ng ta sÏ nãi cho b¹n biÕt Th¸i Nghª lµ ai! (khi ®i nhí ®em theo 1 v¹n l­îng)",
		[45] = "Th× ra Th¸i Nghª lµ 1 trong ngò ®¹i H­¬ng chñ cña Ngò §éc gi¸o, b¹n mau chãng lªn ®­êng ®Õn MÆc Thï Tr¹i cña Ngò §éc Gi¸o (186, 195) gÆp MÆc Thï H­¬ng Chñ!",
		[46] = "B¹n quay vÒ Long TuyÒn Th«n nhê Phã L«i Th­ (199,203) ®Ó t×m tung tİch ®øa con thÊt l¹c cña MÆc Thï H­¬ng Chñ",
		[47] = "Theo lêi cña Phã L«i Th­, b¹n ®Õn Vâ §ang Ph¸i vµo Phô MÉu §iÖn gÆp §µo Th¹ch M«n (203, 194) ®Ó dß la tin tøc!",
		[48] = "§Ó lÊy ®­îc sîi d©y chuyÒn cña §µo Th¹ch M«n, b¹n ®· nhËn lêi ®Õn Thôc C­¬ng S¬n lo¹i trõ tªn ph¶n ®å TiÕu V« Th­êng (243,200) (cã thÓ tæ ®éi)",
		[49] = "LÊy ®­îc ®Şa ®å chiÕn l­îc trung nguyªn, b¹n quay l¹i trao ®æi víi §µo Th¹ch M«n ë Vâ §ang Ph¸i (203, 194)",
		[50] = "LÊy ®­îc TrÊn Minh Chi Liªn tõ tay cña §µo Th¹ch M«n, do v× «ng ta kh«ng nhËn mÑ ruét cña m×nh nªn b¹n quay vÒ Long TuyÒn Th«n t×m Phã L«i Th­ (199,203)",
		[51] = "Phã L«i Th­ nãi Kim quèc cã liªn quan ®Õn Bµn Long C«i, b¹n quyÕt ®Şnh lªn thµnh BiÖn Kinh t×m gÆp Nh­ Ngäc (210,196)",
		[52] = "Nghe Nh­ Ngäc giíi thiÖu, b¹n nhanh ch©n ®Õn gÆp TrÇn Tam B¶o ë BiÖn Kinh (219,187)",
		[53] = "B¹n nhËn lêi TrÇn Tam B¶o ®Õn Nh¹n §·ng S¬n tiªu diÖt ®¹o tÆc Lôc Phi (74,191), lÊy l¹i b×nh Lam Hoa (cã thÓ tæ ®éi)",
		[54] = "LÊy ®­îc Thiªn Hoa Sø, b¹n mang vÒ BiÖn Kinh giao cho TrÇn Tam B¶o (219,187)",
		[55] = "Nghe TrÇn Tam B¶o nãi, b¹n lËp tøc vµo ThiÕt Th¸p BiÖn Kinh tÇng 3 h¹ thñ t­íng Kim §å §an (211,189) (cã thÓ tæ ®éi)",
		[56] = "Bµn Long C«i ®· bŞ Quèc s­ §¹i Kim Hoµn Nhan Hïng Khang c­íp ®i, b¹n chØ cã thÓ ®Õn Thiªn NhÉn Gi¸o tÇng 3 gÆp §o¹n Méc DuÖ (225,199) hái th¨m tin tøc",
		[57] = "§o¹n Méc DuÖ giíi thiÖu b¹n víi muéi muéi cña y lµ §o¹n Méc Thanh ë Long M«n TrÊn (251,280), chØ cã c« Êy míi biÕt tung tİch cña Quèc s­ §¹i Kim",
		[58] = "§Ó cã tung tİch cña Hoµn Nhan Hång Khang, §o¹n Méc Thanh yªu cÇu b¹n h¹ thñ anh hïng kh¸ng kim Liªu §Şnh t¹i Linh Cèc §éng (193,196) (cã thÓ tæ ®éi)",
		[59] = "Nghi ngê vµo lêi nãi tr­íc lóc chÕt cña Liªu §Şnh, b¹n mang thñ cÊp cña «ng Êy vÒ Long M«n TrÊn t×m §o¹n Méc Thanh (251,280)",
		[60] = "LÊy ®­îc b¶o vËt tõ ng­êi Kim, tuy nhiªn b¹n nhËn ra nhiÒu ®iÒu, nhËn thÊy nhiÒu sai lÇm, ®»ng sau Thiªn Hoµng Long Khİ cßn nhiÒu Èn khuÊt, b¹n quyÕt quay vÒ gÆp Long Ngò!",
		[61] = "<color=yellow><Ch­¬ng IV - TiÕu Ng¹o Giang Hå><color> Long Ngò muèn tÆng b¹n mét mãn b¶o vËt §Şnh Quèc Hoµng Kim, nh­ng tr­íc tiªn «ng Êy yªu cÇu b¹n hoµn thµnh mét nhiÖm vô D· TÈu bÊt kú!<color>",
		[62] = "TiÕp theo Long Ngò yªu cÇu b¹n tham gia hoµn thµnh mét lÇn V­ît ¶i (Th¸ch thøc thêi gian) ë chç cña NPC NhiÕp Thİ TrÇn",
		[63] = "Long Ngò kh¸ hµi lßng vÒ b¹n, nhiÖm vô tiÕp theo «ng Éy yªu cÇu b¹n hoµn thµnh mét lÇn v­ît ¶i Viªm §Õ chç NPC B×nh B×nh C« N­¬ng ë BiÖn Kinh",
		[64] = "V× ch­a ®ñ kinh nghiÖm b«n tÈu giang hå nªn Long Ngò yªu cÇu b¹n hoµn thµnh 1 lÇn Phong L¨ng ®é, sang ®Õn bê b¾c, cã thÓ ®Õn gÆp Xa Phu ®Ó truyÒn tèng ®Õn Phong L¨ng §é",
		[65] = "Thö th¸ch tiÕp theo Long Ngò yªu cÇu b¹n tham gia mét lÇn ho¹t ®éng Phong Kú, chç NPC DŞch Quan",
		[66] = "§Ó kiÓm tra kü n¨ng cña b¹n tr­íc khi b­íc vµo cuéc chiÕn, Long Ngò yªu cÇu b¹n hoµn thµnh mét lÇn nhiÖm vô s¸t thñ chç NPC NhiÕp Thİ TrÇn",
		[67] = "NhËn thÊy kh¶ n¨ng s¸t thñ cña b¹n kh¸ tèt, tham gia b«n tÈu ®· l©u Long Ngò yªu cÇu b¹n hoµn thµnh mét trËn Tèng Kim, cã thÓ sö dông ThÇn Hµnh Phï ®Ó truyÒn tèng ®Õn b¶n ®å",
		[68] = "Nh­ vËy ®· ®¹t ®ñ hoµn toµn c¸c kh¶o nghiÖm cña Long Ngò, hiÖn b¹n cã thÓ quay vÒ gÆp Long Ngò thØnh gi¸o",
	},
	Award = {
		[1] = {bilLevel = 10, bilExp = 6000, bilItem = {}},
		[7] = {bilLevel = 10, bilExp = 6000, bilItem = {{0, 0, "Kim Phong Thiªn Lı Th¶o Th­îng Phi", 184, 0}}},
		[10] = {bilLevel = 10, bilExp = 6000, bilItem = {}},
		[13] = {bilLevel = 10, bilExp = 10000, bilItem = {{0, 0, "Kim Phong Tr¹c Liªn Quang", 179, 0}}},
		[16] = {bilLevel = 10, bilExp = 10000, bilItem = {}},
		[17] = {bilLevel = 10, bilExp = 10000, bilItem = {}},
		[18] = {bilLevel = 10, bilExp = 10000, bilItem = {{0, 0, "Kim Phong Kú L©n HuyÕt", 178, 0}}},
		[22] = {bilLevel = 10, bilExp = 10000, bilItem = {}},
		[24] = {bilLevel = 10, bilExp = 20000, bilItem = {}},
		[27] = {bilLevel = 10, bilExp = 20000, bilItem = {{0, 0, "Kim Phong Thanh D­¬ng Kh«i", 177, 0}}},
		[31] = {bilLevel = 10, bilExp = 20000, bilItem = {}},
		[34] = {bilLevel = 10, bilExp = 20000, bilItem = {}},
		[40] = {bilLevel = 10, bilExp = 20000, bilItem = {{0, 0, "Kim Phong Lan §×nh Ngäc", 183, 0}}},
		[42] = {bilLevel = 10, bilExp = 25000, bilItem = {}},
		[49] = {bilLevel = 10, bilExp = 25000, bilItem = {}},
		[54] = {bilLevel = 10, bilExp = 25000, bilItem = {{0, 0, "Kim Phong C«ng CÈn Tam Th¸n", 180, 0}}},
		[55] = {bilLevel = 10, bilExp = 25000, bilItem = {}},
		[59] = {bilLevel = 10, bilExp = 50000, bilItem = {}},
		[61] = {bilLevel = 10, bilExp = 100000, bilItem = {{0, 0, "Kim Phong §o¹t Hån Ngäc ®¸i", 181, 0}}},
		[62] = {bilLevel = 10, bilExp = 200000, bilItem = {}},
		[63] = {bilLevel = 10, bilExp = 400000, bilItem = {}},
		[64] = {bilLevel = 10, bilExp = 800000, bilItem = {{0, 0, "Kim Phong HËu NghÖ dÉn cung", 182, 0}}},
		[65] = {bilLevel = 10, bilExp = 1200000, bilItem = {}},
		[66] = {bilLevel = 10, bilExp = 1600000, bilItem = {}},
		[67] = {bilLevel = 10, bilExp = 2000000, bilItem = {{0, 0, "Kim Phong §ång T­íc Xu©n Th©m", 185, 0}}},
		[68] = {bilLevel = 10, bilExp = 3000000, bilItem = {}},
	},
}

function bilNvTanThu:Npc_LongNgu()
	local bil_1 = GetTask(5905)
	if bil.False(self.Msg_LongNgu[bil_1]) then
		if bil.False(self.Msg_LongNgu[bil_1-1]) then
			return CreateNewSayEx(unpack(self.Msg_LongNgu[9999]))
		else
			return CreateNewSayEx(self.Msg_LongNgu[bil_1-1], {{"V·n bèi ®ang tiÕn hµnh nhiÖm vô", bil.OnCancel}})
		end
	else
		return CreateNewSayEx(self.Msg_LongNgu[bil_1], {{"§ång ı tiÕp nhËn nhiÖm vô!", self.NextTask}, {"KÕt thóc ®èi tho¹i", bil.OnCancel}})
	end
end

function bilNvTanThu:Npc_MacSau()
	local bil_1 = GetTask(5905)
	if bil.False(self.Msg_MacSau[bil_1]) then
		if bil.False(self.Msg_MacSau[bil_1-1]) then
			return CreateNewSayEx(unpack(self.Msg_MacSau[9999]))
		else
			return CreateNewSayEx(self.Msg_MacSau[bil_1-1], {{"T¹i h¹ biÕt råi!", bil.OnCancel}})
		end
	else
		return CreateNewSayEx(self.Msg_MacSau[bil_1], {{"T¹i h¹ biÕt sÏ ph¶i lµm g×!", self.NextTask}, {"KÕt thóc ®èi tho¹i", bil.OnCancel}})
	end
end

function bilNvTanThu:Npc_PhoNamBang()
	local bil_1 = GetTask(5905)
	if bil.False(self.Msg_PhoNamBang[bil_1]) then
		if bil.False(self.Msg_PhoNamBang[bil_1-1]) then
			return CreateNewSayEx(unpack(self.Msg_PhoNamBang[9999]))
		else
			return CreateNewSayEx(self.Msg_PhoNamBang[bil_1-1], {{"T¹i h¹ biÕt råi!", bil.OnCancel}})
		end
	else
		return CreateNewSayEx(self.Msg_PhoNamBang[bil_1], {{"T¹i h¹ biÕt sÏ ph¶i lµm g×!", self.NextTask}, {"KÕt thóc ®èi tho¹i", bil.OnCancel}})
	end
end

function bilNvTanThu:Npc_VanNhi()
	local bil_1 = GetTask(5905)
	if bil.False(self.Msg_VanNhi[bil_1]) then
		if bil.False(self.Msg_VanNhi[bil_1-1]) then
			return CreateNewSayEx(unpack(self.Msg_VanNhi[9999]))
		else
			return CreateNewSayEx(self.Msg_VanNhi[bil_1-1], {{"T¹i h¹ biÕt råi!", bil.OnCancel}})
		end
	else
		return CreateNewSayEx(self.Msg_VanNhi[bil_1], {{"T¹i h¹ biÕt sÏ ph¶i lµm g×!", self.NextTask}, {"KÕt thóc ®èi tho¹i", bil.OnCancel}})
	end
end

function bilNvTanThu:Npc_Msg(bil_In_tb_1, bil_In_2)
	local bil_1, bil_2 = GetTask(5905), 0
	for bil_l_1 = 1, getn(bil_In_tb_1) do
		if bil_In_tb_1[bil_l_1] == bil_1 then
			bil_2 = bil_2 + 1
		end
	end
	if bil_2 == 0 then
		return CreateNewSayEx("<npc>"..bil_In_2, {{"KÕt thóc ®èi tho¹i!", bil.OnCancel}})
	end
	if bil.False(self.Msg_Npc[bil_1]) then
		return CreateNewSayEx("<npc>"..bil_In_2, {{"KÕt thóc ®èi tho¹i!", bil.OnCancel}})
	else
		return CreateNewSayEx(self.Msg_Npc[bil_1], {{"T¹i h¹ biÕt sÏ ph¶i lµm g×!", self.NextTask}, {"KÕt thóc ®èi tho¹i", bil.OnCancel}})
	end
end

function bilNvTanThu:NextTask()
	if bilAllowNvTanThu ~= 1 then return end
	if bil.True(bilNvTanThu.Award[GetTask(5905)]) then
		if getn(bilNvTanThu.Award[GetTask(5905)].bilItem) >= 1 then
			if CountFreeRoomByWH(2,3) < 1 then
				return Msg2Player(bil.C(10, "<bclr=red>B¹n ph¶i ®Ó trèng hµnh trang 2x3 « trèng míi cã thÓ hoµn thµnh nhiÖm vô lÇn nµy!<bclr>"))
			end
		end
	end
	bilNvTanThu:GetAward_MissionComplete(GetTask(5905))
	local bil_1 = GetTask(5905) + 1
	SetTask(5905, bil_1)
	if bil.False(bilNvTanThu.Msg_Player[bil_1]) then
		return
	else
		Msg2Player("<bclr=white><color=red>[NhiÖm vô t©n thñ]<color><bclr>  <color=green>"..bil_1.."/"..getn(bilNvTanThu.Msg_Player))
		Msg2Player(bil.C(10, bilNvTanThu.Msg_Player[bil_1]))
	end
end

function bilNvTanThu:GetAward_MissionComplete(bil_In_1)
	local bil_1 = GetLevel()
	if bil.True(self.Award[bil_In_1]) then
		local bil_2 = self.Award[bil_In_1]
		if bil_1 < bil_2.bilLevel then
			while GetLevel() < bil_2.bilLevel do
				AddOwnExp(bil_2.bilExp)
			end
		else
			tl_addPlayerExp(bil_2.bilExp)
		end
		local bil_3_1, bil_3_2, bil_3_3 = getn(bil_2.bilItem), 0, ""
		if bil_3_1 >= 1 then
			bil_3_3 = " vµ b¶o vËt "
			for bil_l_1 = 1, bil_3_1 do
				bil_3_3 = bil_3_3..bil_2.bilItem[bil_l_1][3]
				if bil_2.bilItem[bil_l_1][2] == 0 then
					bil_3_2 = AddGoldItem(0, bil_2.bilItem[bil_l_1][4])
				else
					bil_3_2 = AddItem(unpack(bil_2.bilItem[bil_l_1][4]))
				end
				if bil_2.bilItem[bil_l_1][1] ~= 0 then
					ITEM_SetExpiredTime(bil_3_2, FormatTime2Date(bil_2.bilItem[bil_l_1][1] * 24 * 60 *60 + GetCurServerTime()))
					SyncItem(bil_3_2)
				end
				if bil_2.bilItem[bil_l_1][5] ~= 0 then
					SetItemBindState(bil_3_2, bil_2.bilItem[bil_l_1][5])
				end
			end
		end
		-- Msg2SubWorld(bil.C(9, GetName().." ®· hoµn thµnh Nv T©n Thñ ("..bil_In_1..") nhËn ®­îc mét l­îng ®iÓm Exp cùc lín"..bil_3_3..", Uy chÊn Thiªn h¹!"))
		AddSkillState( 509, 1, 0, 500);
	end
end

function bilNvTanThu:GetTask()
	if bilAllowNvTanThu ~= 1 then return end
	local bil_1 = GetTask(5905)
	if bil.False(bilNvTanThu.Msg_Player[bil_1]) then
		return
	else
		Msg2Player("<bclr=white><color=red>[NhiÖm vô t©n thñ]<color><bclr>  <color=green>"..bil_1.."/"..getn(bilNvTanThu.Msg_Player))
		Msg2Player(bil.C(10, bilNvTanThu.Msg_Player[bil_1]))
	end
end

function bilNvTanThu:CompleteMissionWithTeam(bil_In_1, bil_In_2)
	local bil_1 = GetTeamSize()
	local bil_PlOld = PlayerIndex
	if bil_1 > 1 then
		for bil_l_1 = 1, bil_1 do
			PlayerIndex = GetTeamMember(bil_l_1)
			if GetTask(5905) == bil_In_1 then
				Msg2Player(bil.C(1, bil_In_2))
				Talk(1, "", bil_In_2)
				bilNvTanThu:NextTask()
			end
		end
		PlayerIndex = bil_PlOld
		return
	end
	if GetTask(5905) == bil_In_1 then
		Msg2Player(bil.C(1, bil_In_2))
		Talk(1, "", bil_In_2)
		bilNvTanThu:NextTask()
	end
end

/*[[ HÖ thèng nhiÖm vô t©n thñ

	00 - ®Õn gÆp long ngò ®Ó tiÕp nhËn nhiÖm vô
	01 - ®em theo 5 miÕn thŞt t­¬i vµ ®Õn gÆp vâ s­ ë ngoµi th«n, nghe «ng ta nãi vÒ thÕ giíi vâ l©m, quay vÒ gÆp long ngò
	02 - më cÈm nang ®ång hµnh vµ nhËn phÇn th­ëng hç trî cÊp 20, quay l¹i gÆp long ngò
	03__[Bİ MËt TÇm Long Héi]__ long ngò giíi thiÖu ®Õn gÆp lı m¹c sÇu ë ®¹i lı (182,198)
	04 - lı m¹c sÇu ph¸t hiÖn trong th­ cã ®éc vµ hÑn ra ngoµi thµnh ®¹i lı 204,186 tû thİ
	05 - h¹ gôc lı m¹c sÇu quay vÒ thµnh gÆp lı m¹c sÇu, hãa ra lµ thö kh¶ n¨ng cña b¶n th©n, c« ta giíi thiÖu s¬ qua vÒ bé thiªn hoµng long khİ cña tÇn thñy hoµng vµ ®Şnh quèc
	06 - ®Õn thµnh ®« gÆp c«ng tö tiÕu 403,319, h×nh nh­ «ng ta ®ang gi÷ hoµng kim l©n 1 phÇn cña bé thiªn hoµng long khİ, v× thÕ «ng ta míi bŞ giang hå truy s¸t
	07 - ®Õn d­îc v­¬ng ®éng tÇng 1 ®¸nh giíi l­u phong 192,207 thuéc h¹ cña c«ng tö tiÕu ®Ó ®o¹t l¹i hoµng kim l©n
	08 - quay vÒ ®­a hoµng kim l©n cho lı m¹c sÇu
	09 - ®Õn t×m ng­êi phô tr¸ch m¹ng l­íi t×nh b¸o ë d­¬ng ch©u h¹ v« th­ 212,195, h×nh nh­ ®ang giÊu th«ng tin vÒ thiªn hoµng long khİ
	10 - ®Õn ®iÓm th­¬ng ®éng tÇng 3 ®¸nh b¹i t¶ ®ao hiÖp 194,190 lÊy cöu hiÖn chi chØ
	11 - vÒ gÆp m¹c s¶o nhi ®Ó hoµn thµnh nhiÖm vô vµ ®­îc biÕt m¹c sÇu ®· bŞ b¾t cãc
	12 - ®Õn l©m an gÆp m¹nh phµm 203,187 chØ cã «ng míi gi¶i quyÕt ®­îc mäi chuyÖn
	13 - ®Õn h­ëng thñy ®éng h¹ gôc o¸n ®éc 264,207, quay vÒ gÆp m¹nh phµm
	14 - m¹nh phµm ph¸t hiÖn m¹c sÇu bŞ b¾t cãc cã liªn quan ®Õn thiªn hoµng long khİ, ®Õn nha m«n t­¬ng d­¬ng ®¸nh thÇn bİ nam nh©n 211,195
	15 - quay vÒ ®¹i lı gÆp m¹c sÇu, hãa ra thÇn bİ nam nh©n lµ chñ nh©n cña tÇm long héi
	16 - quay vÒ gÆp long ngò hoµn thµnh nhiÖm vô
	17__[C©u ChuyÖn L©m Uyªn Nhai]__ ®Õn biÖn kinh gÆp phã nam b¨ng 212,197
	18 - ®Õn la tiªu s¬n ®¸nh tªn ph¶n quèc ninh t­íng qu©n 254,172 
	19 - quay vÒ gÆp phã nam b¨ng, «ng ta kh¸ bÊt ngê vÒ kh¶ n¨ng cña b¹n, «ng cho biÕt trong giang hå cã 3 kÎ kh«ng thÓ giÕt trong ®ã cã l­u thiÖn t­îng
	20 - ®i kho¸i ho¹t l©m ®¸nh b¹i l­u thiÖn t­îng 201,199
	21 - quay vÒ gÆp phã nam b¨ng hoµn thµnh nhiÖm vô
	22 - ®Õn thóy yªn m«n gÆp lÖ thu thñy 43,84 c« Êy sÏ cho biÕt nhiÖm vô tiÕp theo
	23 - ®Õn kinh hoµng ®éng giÕt tªn ph¶n quèc tõ tù lùc 181,214 lÊy ®­îc chiÕn gi¸p b¹ch long tøc trong bé thiªn hoµng long khİ 
	24 - quay vÒ thóy yªn m«n gÆp lÖ thu thñy ®­a chiÕn gi¸p 
	25 - ®Õn biÖn kinh gÆp phã nam b¨ng
	26 - ®Õn thiªn v­¬ng bang gÆp ®éc ®iÕu tÈu 205,199 
	27 - ®éc ®iÕu tÈu b¶o ®Õn mª cung ®éng ®×nh hå 199,206 gÆp «ng ta 
	28 - vÒ gÆp phã nam b¨ng giao chiÕn th­¬ng long ®o¹n
	29 - phã nam b¨ng b¶o ®Õn thiÕu l©m tù gÆp ®¹i s­ kh«ng tŞch 221/177 trong tay «ng ta ®ang gi÷ 1 phÇn cña bé thiªn hoµng long khİ
	30 - ®Õn hËu s¬n thiÕu l©m tù ®¸nh 1 trËn víi ®¹i s­ kh«ng tŞch 218/166
	31 - vÒ giao 2 mãn b¶o khİ cho phã nam b¨ng
	32 - quay vÒ gÆp long ngò ®Ó hoµn thµnh nhiÖm vô
	33__[Long Khİ Chi Häa]__ long ngò b¶o ®Õn chi tiªn trÊn gÆp v©n nhi 215,198
	34 - ®Õn l©m an gÆp th¸i c«ng c«ng 203,200 ®Ó thö kh¶ n¨ng cña b¶n th©n vµ lÊy thiªn h­¬ng ngäc chØ cao
	35 - ®Õn phôc ng­u s¬n ®«ng ®¸nh tiÓu th¸i gi¸m tiÓu kú nhi 226,205 ®o¹t l¹i kim phËt
	36 - quay vÒ l©m an gÆp th¸i c«ng c«ng tr¶ nhiÖm vô vµ lÊy ngäc chØ cao
	37 - quay vÒ gÆp v©n nhi ë chu tiªn trÊn ®Ó hoµn thµnh nhiÖm vô
	38 - v©n nhi b¶o ®i d­¬ng ch©u gÆp tiªu s­ 199,194 
	39 - ®Õn thanh thµnh s¬n ®¸nh b¹i h¹ hÇu phôc vµ lÊy trÊn minh chi liªn 
	40 - quay vÒ gÆp v©n nhi ë chu tiªn trÊn 
	41 - v©n nhi b¶o ®Õn long tuyÒn th«n gÆp phã l«i th­ 199,203 «ng ta cho biÕt mÆc thï h­¬ng cña ngò ®éc gi¸o cã liªn quan ®Õn trÊn minh chi liªn
	42 - ®Õn ngò ®éc gi¸o gÆp mÆc thï h­¬ng chñ trong mÆc thï tr¹i 186/195
	43 - quay vÒ long tuyÒn th«n gÆp phã l«i th­ ®Ó hái th¨m tin tøc vÒ con trai cña mÆc thï h­¬ng chñ
	44 - phã l«i th­ b¶o lªn vâ ®ang t¹i phô mÉu ®iÖn gÆp ®µo th¹ch m«n 203/194 ®ang ®eo trÊn minh chi liªn
	45 - ®Õn thôc c­¬ng s¬n ®¸nh b¹i vâ l©m b¹i ho¹i tiÕu v« th­êng 243,200 lÊy l¹i ®Şa ®å chiÕn l­îc trung nguyªn
	46 - quay l¹i vâ ®ang giao l­îc ®å cho ®µo th¹ch m«n
	47 - ®µo th¹ch m«n ®­a trÊn minh chi liªn quay vÒ giao cho phã l«i th­
	48 - lªn biÖn kinh gÆp nh­ ngäc 210,196
	49 - nh­ ngäc giíi thiÖu ®Õn gÆp trÇn tam b¶o 219,187
	50 - ®Ó th©m nhËp vµo kim triÒu lªn nh¹n ®·ng s¬n tiªu diÖt lÆc tôc phi 74,191 lÊy l¹i thiªn hoa sø
	51 - quay vÒ giao thiªn hoa sø cho trÇn tam b¶o
	52 - ®Õn thiÕt th¸p biÖn kinh tÇng 3 ®¸nh b¹i t­íng kim ®å ®an 211,189 khi ®¸nh h¾n cã nh¾c tíi hoµng nhan hång khang ë thiªn nhÉn gi¸o
	53 - lªn thiªn nhÉn gi¸o tÇng 3 gÆp ®o¹n méc duÖ 225,199 
	54 - ®Õn long m«n trÊn gÆp ®o¹n méc thanh 251,280 ®Ó hái th¨m tim tøc vÒ hoµng nhan hång khang
	55 - ®i linh cèc ®éng tiªu diÖt 	anh hïng kh¸ng kim liªu ®Şnh 193,196
	56 - quay vÒ long m«n trÊn giao cho ®o¹n méc thanh
	57 - ®»ng sau thiªn hoµng long khİ cßn chøa rÊt nhiÒu bİ Èn, quay vÒ gÆp long ngò ®Ó hoµn thµnh nhiÖm vô

]]*/
















