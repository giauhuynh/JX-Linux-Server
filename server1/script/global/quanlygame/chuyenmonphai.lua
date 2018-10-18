-------------------------------------------------Script*By* nguyenkhai-----------------------------------------
IncludeLib("LEAGUE");
Include("\\script\\global\\skills_table.lua")
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\global\\translife.lua")


function myplayersex()
	if GetSex() == 1 then 
		return "N÷ hiÖp";
	else
		return "§¹i hiÖp";
	end
end

function ChuyenPhaiMenu()
	local tbDialog = 
{ 
"<dec><npc> Ta chuyªn phô tr¸ch chuyÓn m«n ph¸i free t¹i KiÕm Thiªn ng­¬i cã muèn ta gióp kh«ng?", 
" B­íc 1 : CÇn giao nép tİn vËt cho ch­ëng m«n t¹i ®©y/nop_tinvat", 
" B­íc 2 : Khi ®· giao xong tiÕn hµnh chän vµo ®©y ®Ó chuyÓn m«n ph¸i /chon_phai", 
" KÕt thóc ®èi tho¹i /0", 
} 
CreateTaskSay(tbDialog) 
end

function nop_tinvat()
	if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> vÉn ch­a gia nhËp m«n ph¸i ?")
	else if GetLastFactionNumber() == 0 then  ------thieu lam
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt ThiÕu L©m/#daiyitoushi_main(0)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber() == 1 then --------thien vuong vuong
			local tbDialog = 
			{	"<dec><npc> "..myplayersex().." muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt Thiªn V­¬ng/#daiyitoushi_main(1)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog) 
	else if GetLastFactionNumber() == 2 then ---------duong mon
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt §­êng M«n/#daiyitoushi_main(2)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber() == 3 then  ----------ngu doc
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt Ngò §éc/#daiyitoushi_main(3)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber == 4 then  -------nga my		
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt Nga my/#daiyitoushi_main(4)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber == 5 then  -------thuy yen
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt Thóy Yªn/#daiyitoushi_main(5)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
	elseif GetFaction() == "cuiyan" then -----thuy yen
					local tbDialog = 
			{	"<dec><npc> "..myplayersex().." muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt Thóy Yªn/#daiyitoushi_main(5)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber() == 6 then -----gaibang
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt C¸i Bang/#daiyitoushi_main(6)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber() == 7 then -----thien nhan
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt Thiªn NhÉn/#daiyitoushi_main(7)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber() == 8 then -------vo dang
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt Vâ §ang/#daiyitoushi_main(8)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)	
	else if GetLastFactionNumber() == 9 then ------con luon
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt C«n L«n/#daiyitoushi_main(9)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber() == 10 then ------hoa son
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				--" Giao nép tİn vËt Hoa S¬n /dieukiengianhaphs", 
				--" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetFaction() == "emei" then  ----nga my
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt Nga my/#daiyitoushi_main(4)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
		else  ----nga my
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt Nga my/#daiyitoushi_main(4)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)		
end
end
end
end
end
end
end
end
end
end
end
end
end
end

function chon_phai()
	local tbDialog = 
{ 
"<dec><npc> B¹n muèn chuyÓn sang ph¸i nµo?", 
" ThiÕu L©m/#daiyitoushi_main(0)",
" Thiªn V­¬ng/#daiyitoushi_main(1)",
" §­êng M«n/#daiyitoushi_main(2)",
" Ngò §éc/#daiyitoushi_main(3)",
" Nga Mi/#daiyitoushi_main(4)",
" Thóy yªn/#daiyitoushi_main(5)",
" C¸i Bang/#daiyitoushi_main(6)",
" Thiªn NhÉn/#daiyitoushi_main(7)",
" Vâ §ang/#daiyitoushi_main(8)",
" C«n L«n/#daiyitoushi_main(9)",
--" Hoa S¬n/chuyen_hsz",
" KÕt thóc ®èi tho¹i /0", 
} 
CreateTaskSay(tbDialog) 
end

function chuyen_hoason_fix()
if GetFaction() == "huashan" then 
Talk(2,""," Ta cho phĞp ng­êi xuèng nói t×m con ®­êng vâ häc míi..! Khi nµo muèn lµm <color=yellow>LÖnh Hå Xung<color> th× quay l¹i gÆp ta..!")
return end
if GetLastFactionNumber() == 10 then
	SetFaction("huashan") 
	SetTask(11,10*256)	--mac dinh		
	SetCamp(3)
	SetCurCamp(3)
	SetLastFactionNumber(10)
	SetRank(89)
	for i=1,1122 do
		DelMagic(i,0)
	end
	add_hs(150)
	AddMagic(1368,20) --Skill Hoa son --------Doc Co Cuu Kiem
	SetSex(0) ---nu 1
	KickOutSelf()
return end
Talk(2,""," Nh×n ng­¬i cã vÎ l¾m la l¾m lót..! Cã thÓ x¸c ®Şnh râ ng­êi kh«ng ph¶i<color=yellow> LÖnh Hå Xung<color> råi..!")
end

function chuyen_hs()
local nFlag	= GetTask(TSK_TOUSHI_FLAG);
if (nFlag == 0) then	
	local tbDialog = 
	{ 
		"<dec><npc> Tr­íc tiªn ph¶i giao nép tİn vËt m«n ph¸i?", 
		" Giao Nép Tİn VËt M«n Ph¸i/#daiyitoushi_main(10)",
		" KÕt thóc ®èi tho¹i /thonghonafk", 
	} 
	CreateTaskSay(tbDialog)
elseif (nFlag == 1) then
	local tbDialog = 
	{ 
		"<dec><npc> <dec><npc>Thiªn h¹ ®¹i lo¹n nh­  ngµy h«m nay, c¸c ®¹i m«n ph¸i trong vâ l©m ai còng chØ biÕt lo cho c¸i lîi cña m×nh, tïy theo chiÕn sù mµ bÕ quan,  trung nh©n vâ l©m th× bŞ tæn thÊt h¬n qu¸ nöa. VŞ kÕ vâ l©m h­¬ng háa, trïng t©n chÊn h­ng vâ l©m. T«n mÖnh vâ l©m minh chñ, kÓ tõ h«m nay c¸c ®¹i m«n ph¸i xãa bá c¸c quy t¾c, më réng m«n quy, cho phĞp c¸c ®Ö tö gia nhËp c¸c m«n ph¸i kh¸c, ®Ó cïng nhau Ên chøng vâ häc, s¸ng lËp ra nh÷ng tuyÖt häc vâ c«ng míi l¹, trung h­ng ng· vâ l©m.", 
		" Gia NhËp Ph¸i Hoa S¬n/chuyen_hsz",
		" KÕt thóc ®èi tho¹i /thonghonafk", 
	}
	CreateTaskSay(tbDialog)
	elseif (nFlag == 2 and GetLastFactionNumber() == 10) then
	local tbDialog = 
	{ 
		"<dec><npc> <dec><npc>NÕu nh­ ng­¬i ®· muèn gia nhËp bæn ph¶i, sau nµy ph¶i chuyªn t©m mµ khæ luyÖn, sím cã ngµy ngé ra ®­îc tuyÖt kü vâ häc", 
		" KÕt thóc ®èi tho¹i /thonghonafk", 
	}
	else
	local tbDialog = 
	{ 
		"<dec><npc>Xem ra, vŞ <sex> nµy mang g¸nh nÆng trªn vai trïng t©n chÊn h­ng vâ l©m.", 
		" KÕt thóc ®èi tho¹i /thonghonafk", 
	}
	end	
end

function chuyen_hsz()
	if GetLevel() < 200 then
		Talk(1, "", "CÊp 200 trë lªn míi cã thÓ gia nhËp hoa s¬n.")
		return
	end
--if GetFaction() == "huashan" then 
	local bFlag			= GetTask(TSK_TOUSHI_FLAG);				-- »ñµÃ×ªÍ¶Ê¦ÃÅµÄ±ê¼Ç
	local nMyFacNumb	= GetLastFactionNumber();				-- »ñµÃÔ­ÃÅÅÉID
	local nSex			= GetSex();								-- ½ÇÉ«ĞÔ±ğ
	local nLastChange   = GetTask(TSK_LAST_CHANGE_FACTION)      -- ÉÏ´Î×ªÍ¶Ê¦ÃÅ±ê¼Ç
	local nCurTime      = tonumber( GetCurServerTime() );
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Muèn chuyÓn m«n ph¸i mi ph¶i c­ëi trÇn truång chïi chôi hÕt tÊt c¶ trang bŞ míi ®­îc chuyÓn m«n ph¸i.",0);

		end
if GetLastFactionNumber() == 10 then
Talk(2,"","Ng­¬i ®· lµ ®Ö tö hoa s¬n råi cßn muèn chuyÓn hoa s¬n n÷a µ.!")
return end
	local i = HaveMagic(210)		-- Çá¹¦ÁíÍâ²Ù×÷
	local j = HaveMagic(400)		-- ¡°½Ù¸»¼ÃÆ¶¡±ÁíÍâ²Ù×÷
	local n = RollbackSkill()		-- Çå³ı¼¼ÄÜ²¢·µ»ØËùÓĞ¼¼ÄÜ?ã£¨°üÀ¨Çá¹¦µÈÌØÊâ¼¼ÄÜ£?
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		-- ÕâÁ½¾äÅĞ¶ÏÊÇÅÅ³ı´ÓÎ´Ñ§¹ıÇá¹¦µÄÈË·µ»Ø-1´Ó¶øµ¼ÖÂµãÊı¼ÆËã´íÎóÇé¿ö
	if (j ~= -1) then x = x + j end
	local rollback_point = n - x			-- °Ñ¼¼ÄÜµãµ±×ö¿ÕÏĞµãÊı·µ»¹£¬µ«ÏÈ?Û³ıÇá¹¦µ?
	if (rollback_point + GetMagicPoint() < 0) then		-- Èç¹ûÏ´³ÉÁË¸ºÊı£¬Ôòµ±×÷0£¨ÎªÒÔºó¶à´ÎÏ´µã±£?ô£?
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			-- Èç¹ûÑ§¹uÇá¹¦Ô?¼Ó»ØÔ­ÓĞµÈ¼¶
	if (j ~= -1) then AddMagic(400, j) end			-- Èç¹ûÑ§¹u¡°½Ù¸»¼AÆ¶¡±Í¬Ñù´¦Àí
	Msg2Player("TÈy tñy thµnh c«ng! Ng­¬i ca "..rollback_point.." ®iÓm kü n¨ng ®Ó ph©n phèi l¹i.")
	SetTask(11,10*256)	--mac dinh			-- Ö±½ÓÈëÃÅ
	SetFaction("huashan")       			--Íæ¼Ò¼ÓÈëÃÅÅÉ
	SetCamp(3)
	SetCurCamp(3)
	SetLastFactionNumber(10)
	SetRank(89)
	Msg2Player("Chóc mõng b¹n gia nhËp thµnh c«ng Hoa S¬n Ph¸i!")
	Msg2Faction("huashan",GetName().."§· gia nhËp Hoa S¬n ph¸i, tõ h«m nay mong c¸c s­ huynh chiÕu cè.!",GetName())
	--Ms2Global("huashan",GetName().."§· gia nhËp Hoa S¬n Ph¸i , c¸c s­ Huynh, s­ Tû cïng n©ng chĞn chóc mõng nµo!",GetName())	
	for i=1,5000 do
	DelMagic(i)
	end
	add_hs(150)
	AddMagic(1368,20) --Skill Hoa son --------Doc Co Cuu Kiem
	AddMagic(1364,20) --Skill Hoa son --------Doc Co Cuu Kiem
                                                                                  AddMagic(1369, 20)
                                                                                  AddMagic(1365, 20)
	--SetTask(TSK_TOUSHI_FLAG,GetTask(TSK_TOUSHI_FLAG)+1)
local n_solan = ST_GetTransLifeCount();
if n_solan < 1 then
	KickOutSelf()
elseif 	n_solan >= 1 then
	--AddMagicPoint(100)
	KickOutSelf()
end
end

function ChuyenPhaix()
	 Talk(3,"nop_tinvat",
			"<color=pink>ChuyÓn Ph¸i:<color>\nB­íc 1: Mua Tİn VËt M«n Ph¸i T¹i Kú Tr©n C¸c gi¸ <color=green>300 xu <color>\nB­íc 2: VÒ gÆp Tr­ëng M«n <color=yellow> M«n Ph¸i <color> cña b¹n...! ",
			"\nB­íc 3: Giao nép Tİn VËt M«n Ph¸i \nB­íc 4: Sau khi giao nép Tİn VËt M«n Ph¸i xong trë vÒ gÆp Tr­ëng M«n <bclr=blue> M«n ph¸i cÇn gia nhËp <bclr>", 
			"NhËn skill 150x vµ 180x t¹i <color=green>LÖnh Bµi T©n Thñ <color>\n <color=yellow>L­u ı:<color> <color=red>Hoa S¬n kh«ng thÓ chuyÓn ph¸i..!")
end


------------------------------------------CHUYENHOASON--------------------------
function dieukiengianhaphs()
	local bFlag			= GetTask(TSK_TOUSHI_FLAG);				-- »ñµÃ×ªÍ¶Ê¦ÃÅµÄ±ê¼Ç
	local nMyFacNumb	= GetLastFactionNumber();				-- »ñµÃÔ­ÃÅÅÉID
	local nSex			= GetSex();								-- ½ÇÉ«ĞÔ±ğ
	local nLastChange   = GetTask(TSK_LAST_CHANGE_FACTION)      -- ÉÏ´Î×ªÍ¶Ê¦ÃÅ±ê¼Ç
	local nCurTime      = tonumber( GetCurServerTime() );
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Muèn chuyÓn m«n ph¸i mi ph¶i c­ëi trÇn truång chïi chôi hÕt tÊt c¶ trang bŞ míi ®­îc chuyÓn m«n ph¸i.",0);

		end
if GetLastFactionNumber() == 10 then
batdauhoasonok()
else
		Say("ChØ cã ph¸i hoa s¬n míi chän chøc n¨ng nµy",0);
end
end




function batdauhoasonok()
	if GetLevel() < 200 then
		Talk(1, "", "CÊp 200 trë lªn míi cã thÓ gia nhËp hoa s¬n.")
		return
	end
	SetFaction("emei")       			--Íæ¼Ò¼ÓÈëÃÅÅÉ
	SetCamp(1)
	SetCurCamp(1)
	SetLastFactionNumber(4)
	local i = HaveMagic(210)		-- Çá¹¦ÁíÍâ²Ù×÷
	local j = HaveMagic(400)		-- ¡°½Ù¸»¼ÃÆ¶¡±ÁíÍâ²Ù×÷
	local n = RollbackSkill()		-- Çå³ı¼¼ÄÜ²¢·µ»ØËùÓĞ¼¼ÄÜ?ã£¨°üÀ¨Çá¹¦µÈÌØÊâ¼¼ÄÜ£?
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		-- ÕâÁ½¾äÅĞ¶ÏÊÇÅÅ³ı´ÓÎ´Ñ§¹ıÇá¹¦µÄÈË·µ»Ø-1´Ó¶øµ¼ÖÂµãÊı¼ÆËã´íÎóÇé¿ö
	if (j ~= -1) then x = x + j end
	local rollback_point = n - x			-- °Ñ¼¼ÄÜµãµ±×ö¿ÕÏĞµãÊı·µ»¹£¬µ«ÏÈ?Û³ıÇá¹¦µ?
	if (rollback_point + GetMagicPoint() < 0) then		-- Èç¹ûÏ´³ÉÁË¸ºÊı£¬Ôòµ±×÷0£¨ÎªÒÔºó¶à´ÎÏ´µã±£?ô£?
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			-- Èç¹ûÑ§¹uÇá¹¦Ô?¼Ó»ØÔ­ÓĞµÈ¼¶
	if (j ~= -1) then AddMagic(400, j) end			-- Èç¹ûÑ§¹u¡°½Ù¸»¼AÆ¶¡±Í¬Ñù´¦Àí
	Msg2Player("TÈy tñy thµnh c«ng! Ng­¬i ca "..rollback_point.." ®iÓm kü n¨ng ®Ó ph©n phèi l¹i.")
			DelMagic(1347) --Skill Hoa son
		DelMagic(1372) --Skill Hoa son
		DelMagic(1349) --Skill Hoa son
		DelMagic(1374) --Skill Hoa son
		DelMagic(1350) --Skill Hoa son
		DelMagic(1375) --Skill Hoa son
		DelMagic(1351) --Skill Hoa son
		DelMagic(1376) --Skill Hoa son
		DelMagic(1354) --Skill Hoa son
		DelMagic(1378) --Skill Hoa son
		DelMagic(1355) --Skill Hoa son
		DelMagic(1379) --Skill Hoa son
		DelMagic(1358) --Skill Hoa son
		DelMagic(1360) --Skill Hoa son
		DelMagic(1380) --Skill Hoa son
		DelMagic(1364) --Skill Hoa son
		DelMagic(1382) --Skill Hoa son
		DelMagic(1365) --Skill Hoa son
		DelMagic(1370) --Skill Hoa son
		DelMagic(1369) --Skill Hoa son
		DelMagic(1384) --Skill Hoa son
		DelMagic(1368) --Skill Hoa son
		DelMagic(1347) --Skill Hoa son

ConsumeEquiproomItem(1,6,1,1670,1)
		Say("Chóc mõng ta ®· chuyÓn nhµ ng­¬i thµnh Nga Mi nh­ng ch­a cã skill ng­¬i h·y l¹i NPC ®Ó chuyÓn Nga Mi sang ph¸i nh­ b×nh th­êng",0);

end
