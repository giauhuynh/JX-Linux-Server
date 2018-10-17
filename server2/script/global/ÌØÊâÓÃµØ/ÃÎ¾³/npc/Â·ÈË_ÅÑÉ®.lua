-- ÃÎ¾³ ¢·ÈË_ÅÑÉ®.lua  Ï´µã¹¦ÄÜNPC

Include("\\script\\missions\\clearskill\\clearhole.lua");

function main()
	-- ·Ç·¨×´Ì¬
	if (CSP_CheckValid() == 0) then
		CSP_WriteLog("Kh«ng thÓ ®Õn ®¶o tÈy tñy ");
		Say("GM: <color=red>B¹n kh«ng thÓ vµo tÈy tñy ®¶o, ®· ®­îc hÖ thèng l­u l¹i, vui lßng liªn hÖ GM ®Ó ®­îc hç trî! <color> ", 1, "Rêi khâi tÈy tñy ®¶o/LeaveHere_yes")
		return -1;
	end
	
	nLevel = GetLevel();
	if (nLevel < CSP_NEEDLEVEL) then
		Talk(1, "", "CÊp bËc cña ng­¬i ch­a ®ñ"..CSP_NEEDLEVEL.."Kh«ng thÓ rêi khâi tÈy tñy ®¶o. ")
		return -1;
	end

	nType = GetTask(CSP_TID_ClearType);
	if (nType == CSP_CTYPE_SKILL) then -- Ö»Ï´¼¼ÄÜµã
		local tbOpt = 
		{
			"TÈy ®iÓm kü n¨ng/DoClearSkill",
			"TÈy ®iÓm tiÒm n¨ng/add_prop",
			"Kh«ng tÈy/OnCancel",
			"Liªn quan ®Õn tÈy tñy/Help",
			"R¬i× khâi tÈy tñy ®¶o /LeaveHere",
		}
		Say("Ng­¬i muèn tÈy <color=blue> §iÔm kü n¨ng<color>. §ång ı tÈy?", getn(tbOpt), tbOpt)
	elseif (nType == CSP_CTYPE_PROP) then -- Ö»ÄÜÇ±ÄÜµã
		local tbOpt = 
		{
			"TÈy ®iÓm tiÒm n¨ng/DoClearProp",
			"T¨ng ®iÓm tiÒm n¨ng/add_prop",
			"Kh«ng tÈy/OnCancel",
			"Liªn quan ®Õn tÈy tñy /Help",
			"Rêi ®¶o tÈy tñy /LeaveHere",
		}
		Say("Ng­¬i muèn tÈy<color=blue> ®iÓm tiÒm n¨ng<color>. §ång ı tÈy ? ", getn(tbOpt), tbOpt)
	else -- if (nType == CSP_NEEDJEWEL_ALL) then -- È«Ï´(nType¿ÉÄÜÊÇ0£¬»ò3)
		local tbOpt = 
		{
			 "TÈy ®iÓm kü n¨ng/DoClearSkill",
			 "TÈy ®iÓm tiÒm n¨ng/DoClearProp", 
			 "T¨ng ®iÓm tiÒm n¨ng/add_prop", 
			 "Kh«ng tÈy /OnCancel", 
			 "Liªn quan ®Õn tÈy tñy/Help", 
			 "Rêi ®¶o tÈy tñy/LeaveHere"
		}
		Say("Ng­¬i ®ång ı tÈy tñy? ", getn(tbOpt),tbOpt)
	end;
end

function add_prop()
	Say("Ng­¬i ph¶i hiÓu râ c¸ch t¨ng ®iÓm", 4,
			"Søc m¹nh/add_prop_str",
			"Th©n ph¸p/add_prop_dex",
			"Sinh khİ/add_prop_vit",
			"Néi c«ng/add_prop_eng")
end

function add_prop_str()
	AskClientForNumber("enter_str_num", 0, GetProp(), "Mêi nhËp chØ sè søc m¹nh: ");
end

function add_prop_dex()
	AskClientForNumber("enter_dex_num", 0, GetProp(), "Mêi nhËp chØ sè th©n ph¸p: ");
end

function add_prop_vit()
	AskClientForNumber("enter_vit_num", 0, GetProp(), "Mêi nhËp chØ sè sinh khİ:");
end

function add_prop_eng()
	AskClientForNumber("enter_eng_num", 0, GetProp(), "Mêi nhËp chØ sè néi c«ng: ");
end

function enter_str_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddStrg(n_key);
end

function enter_dex_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddDex(n_key);
end

function enter_vit_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddVit(n_key);
end

function enter_eng_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddEng(n_key);
end

function DoClearSkill()
	Say("Ng­¬i ®ång ı t¨ng kü n¨ng ", 2, "T¨ng kü n¨ng/DoClearSkillCore","Kh«ng n¨ng/OnCancel")
end
function DoClearSkillCore()
--	if (Pay(100000) == 0) then
--		Say("TÈy tñy thµnh c«ng ng­¬i cã thÓ t¨ng l¹i ®iÓm", 0)
--		return
--	end

	i = HaveMagic(210)		-- Çá¹¦ÁíÍâ²Ù×÷
	j = HaveMagic(400)		-- ¡°½Ù¸»¼ÃÆ¶¡±ÁíÍâ²Ù×÷
	n = RollbackSkill()		-- Çå³ı¼¼ÄÜ²¢·µ»ØËùÓĞ¼¼ÄÜµã£¨°üÀ¨Çá¹¦µÈÌØÊâ¼¼ÄÜ£©
	x = 0
	if (i ~= -1) then x = x + i end		-- ÕâÁ½¾äÅĞ¶ÏÊÇÅÅ³ı´ÓÎ´Ñ§¹ıÇá¹¦µÄÈË·µ»Ø-1´Ó¶øµ¼Ö¢µãÊı¼ÆËã´íÎóÇé¿ö
	if (j ~= -1) then x = x + j end
	rollback_point = n - x			-- °Ñ¼¼ÄÜµãµ±×ö¿ÕÏĞµãÊı·µ»¹£¬µ«ÏÈ¿Û³ıÇá¹¦µÈ
	if (rollback_point + GetMagicPoint() < 0) then		-- Èç¹ûÏ´³ÉÁË¸ºÊı£¬Ôòµ±×÷0£¨ÎªÒÔºó¶µ´ÎÏ´µã±£Áô£©
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210,i) end			-- Èç¹ûÑ§¹ıÇá¹¦Ôò¼Ó»ØÔ­ÓĞµÈ¼¶
	if (j ~= -1) then AddMagic(400,j) end			-- Èç¹ûÑ§¹ı¡°½Ù¸»¼ÃÆ¶¡±Í¬Ñù´¦Àí
	Msg2Player("TÈy tñy thµnh c«ng ng­¬i cã thÓ t¨ng l¹i ®iÓm"..rollback_point.."§iÔm kü n¨ng cã thÓ ph©n phèi l¹i. ")
	Talk(1,"KickOutSelf","TÈy tñy thµnh c«ng ng­¬i cã thÓ t¨ng l¹i ®iÓm"..rollback_point.."§iÔm kü n¨ng cã thÓ ph©n phèi l¹i. ")
end;

function DoClearProp()
	Say("Ng­¬i ®ång ı tÈy ®iÓm tiÒm n¨ng? ", 2, "TÈy ®iÓm tiÒm n¨ng/DoClearPropCore", "Kh«ng tÈy/OnCancel")
end

function DoClearPropCore()
		base_str = {35,20,25,30,20}			-- ÎåĞĞÈËÎïµÄÌìÉúÊôĞÔÖµ
		base_dex = {25,35,25,20,15}
		base_vit = {25,20,25,30,25}
		base_eng = {15,25,25,20,40}
		player_series = GetSeries() + 1

		Utask88 = GetTask(88)
		AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88,1))			-- ½«ÒÑ·ÖÅäÇ±ÄÜÖØÖÃ£¨task(88)ÊÇÈÎÎñÖĞÖ±½Ó½±ÀøµÄÁ¦Á¿¡¢Éí·¨µÈ£©
		AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88,2))
		AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88,3))
		AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88,4))
end;

function OnCancel()
end;

function Help()
	strHelp = 
	{
		"Sau khi tÈy tñy ng­¬i cã thÓ ra ngoµi ®¸nh méc nhËn,hoÆc cã thÓ lËp nhãm vµo s¬n ®éng thùc hµnh chiÕn ®Êu,sau ®ã rêi ®¶o míi cã thÓ xem lµ ®¾c ®¹o. ",
		"ChØ c©n ng­¬i kh«ng rêi ®¶o, ta cã thÓ gióp ng­¬i tÈy tñy",
		"Bªn ngoµi cã c¸c cét gæ 3000 sinh lùc ;  bao c¸t 10000 sinh lùc ; Méc nh©n 30000 sinh lùc ®Ó ng­¬i tËp luyÖn hiÖu qu¶!",
		"NÕu nh­ muèn thùc hµnh cã thÓ vµo s¬n ®éng nÕu nh­ cã chÕt còng kh«ng mÊt m¸t g×",
		"Trong s¬n ®éng rÊt hÑp nhiÒu nhÊt chØ chøa 20 ng­êi nÕu ®· ®ñ ng­êi th× kh«ng nªn vµo trong. ",
		"Trong s¬n ®éng rÊt hÑp nhiÒu nhÊt chØ chøa 20 ng­êi nÕu ®· ®ñ ng­êi th× kh«ng nªn vµo trong ",
		"Cuèi cïng lóc nµo khi thÊy kü n¨ng ®· thµnh th¹o th× cã thÓ gÆp ta ®­a vÒ chæ cñ"
	}
	Talk(7, "", strHelp[1], strHelp[2], strHelp[3], strHelp[4], strHelp[5], strHelp[6], strHelp[7]);
end;

function LeaveHere()
	Say("Ng­¬i cho r»ng ®· thµnh th¹o muèn rêi ®¶o? ",2, "Muèn rêi khâi/LeaveHere2", "ViÖc nµy ta sÏ suy nghÜ l¹i/OnCanCel")
end

function LeaveHere2()
	Say("Muèn rêi khâi ®·o th× khi quay vÒ rÊt khã", 2, "Ta muèn rêi khâi n¬i quû qu¸i nµy/LeaveHere_yes", "Kh«ng ta sÏ ë l¹i/OnCanCel")
end

function LeaveHere_yes()
	W,X,Y = GetWorldPos();
	LeaveTeam()
	CSP_LeaveClearMap(W);
end
