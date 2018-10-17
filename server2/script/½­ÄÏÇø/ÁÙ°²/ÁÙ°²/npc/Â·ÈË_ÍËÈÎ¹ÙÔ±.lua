-- ÁÙ°²¡¡¢·ÈË¡¡ÍËÈÎ¹ÙÔ± (ÁÙ°²£º183/182)(NewWorld(176,1465,2927))
-- by£ºDan_Deng(2003-09-16)
-- Update: Dan_Deng(2004-07-19) ²¿·ÖÍæ¼ÒÍê³É90¼¶ÈÎÎñÎŞ·¨µÃµ½¼¼ÄÜµÄBUGµÄ²¹¶¡

Include("\\script\\global\\skills_table.lua")

function main()
	faction_task = {7,3,2,10,1,6,8,4,5,9}
	faction_name = {"shaolin","tianwang","tangmen","wudu","emei","cuiyan","gaibang","tianren","wudang","kunlun"}
	quest_task = {122,121,123,124,125,126,128,127,129,130}
	LastFactionNo = GetLastFactionNumber()
	if (LastFactionNo < 0) then					-- Ã»ÓĞÃÅÅÉµÄ²»ÔÊĞí½øĞĞĞŞ¸´Á÷³Ì£¨°üÀ¨°×Ãû£©
		if (GetFaction() ~= "") then
			WriteLog("Ng­êi ch¬i' "..GetAccount().."'nh©n vËt'"..GetName().."': m«n ph¸i kh«ng ®óng,kh«ng thÓ tu luyÖn kü n¨ng cÊp 90.")
			Say("Ng­¬i lµ ng­êi cña m«n ph¸i nµo?,ta cµng xem cµng kh«ng gièng.",0)
		else
			Talk(1,"","Ta võa bÈm b¸o hoµng th­îng muèn c¸o l·o vÒ quª,ta muèn ë ®©y mua mét m·nh v­ên an h­ëng tuæi giµ. ")
		end
		return
	end

	if (GetFaction() == "wudang") and (GetSeries() == 4) then	-- Ö»ÒªÊÇÎäµ±ÅÉ¾ÍÔÊĞí½øĞĞ¼ì²é£¬¼ì²éÓĞÎÊÌâµÄÖ±½ÓĞŞ¸´ÍË³ö£¬Ã»ÓĞÎÊÌâµÄ¼ÌĞøºóÃæµÄÁ÷³Ì
		MagicPoint_total = GetLevel() + GetByte(GetTask(86),2) + GetByte(GetTask(80),1) - 1		-- Ó¦ÓĞµãÊı
		GetMagic_total = 	GetTotalSkill() + GetMagicPoint()												-- ÊµÓĞµãÊı
		if (HaveMagic(210) == 1) then GetMagic_total = GetMagic_total - 1 end		-- ÕâÁ½¾äÅĞ¶ÏÊÇÅÅ³ı´ÓÎ´Ñ§¹ıÇá¹¦µÄÈË·µ»Ø-1´Ó¶øµ¼Ö¢µãÊı¼ÆËã´íÎóÇé¿ö
		if (HaveMagic(400) == 1) then GetMagic_total = GetMagic_total - 1 end
		n = MagicPoint_total - GetMagic_total
		if (n > 0) then						--¡¡ÊµÓĞµãÊı<Ó¦ÓĞµãÊı£¬¼´¼¼ÄÜµã¶ªÊ§
			SetTask(137,0)
			Say("ng­êi trÎ tuæi kh«ng nªn gÊp g¸p,h·y t×m c¸ch ®Ó trót bá ­u phiÒn,ai trªn ®êi mµ kh«ng lµm sai.",1,"Xin ®a t¹./KickOutSelf")
			return
		end
	end

	i = faction_task[LastFactionNo + 1]
	j = quest_task[LastFactionNo + 1]
	k = floor(LastFactionNo/2)
	if (GetTask(2) == 80*256) and (GetSeries() == 1) and (HaveMagic(302) == 0) then
		AddMagic(302,1)				-- ĞŞ¸´³ÔÊéµÃµ½±©ÓêÀæ»¨¼¼ÄÜµÈ¼¶Îª0¼¶µÄ´íÎó
		Say("Ng­¬i cßn trÎ kh«ng nªn v× mét chuyÖn nhá mµ n·n lßng,mäi chuyÖn ®Òu cã c¸ch gi¶i quyÕt,cè g¾ng lªn nµo! ",0)
	elseif (GetTask(i) == 80*256) and (GetFaction() == faction_name[LastFactionNo+1]) and (GetSeries() == k) and (GetTask(j) == 245) then
		SetTaskTemp(20,0)		-- Çå¿ÕÁÙÊ±±äÁ¿£¬×¼±¸Ê¹ÓÃ
		repair90(i)			-- 90¼¶¼¼ÄÜĞŞ¸´
		SetTask(j,255)			-- ÈÎÎñ×´Ì¬ĞŞ¸´
		WriteLog("Ng­êi ch¬i "..GetAccount().."'nh©n vËt'"..GetName().."': CÊp kü n¨ng 90 ph¶i truyÒn thô theo m«n ph¸i."..i..", nhiÖm vô "..j.." hoµn toµn håi phôc! ")
		Say("Ng­¬i cßn trÎ kh«ng nªn v× mét chuyÖn nhá mµ n·n lßng,mäi chuyÖn ®Òu cã c¸ch gi¶i quyÕt,cè g¾ng lªn nµo! ",0)
		SetTaskTemp(20,0)		-- Çå¿ÕÁÙÊ±±äÁ¿£¬ÒÔ±¸Ï¢´Î
	else
		Talk(1,"","Bæn quan võa míi tõ chøc,hoµng th­îng ®· ©n chuÈn, ta chuÈn bŞ tr­íc mét c¨n nhµ ë ngo¹i «, thËt tè ®Ó an h­ëng tuæi giµ.")
	end
end;

function repair90(x)
	if (x == 1) then
		SetTaskTemp(20,332)
		add_em(90)
	elseif (x == 2) then
		SetTaskTemp(20,351)
		add_tm(90)
	elseif (x == 3) then
		add_tw(90)
	elseif (x == 4) then
		SetTaskTemp(20,391)
		add_tr(90)
	elseif (x == 5) then
		add_wd(90)
	elseif (x == 6) then
		add_cy(90)
	elseif (x == 7) then
		add_sl(90)
	elseif (x == 8) then
		add_gb(90)
	elseif (x == 9) then
		SetTaskTemp(20,394)
		add_kl(90)
	elseif (x == 10) then
		SetTaskTemp(20,390)
		add_wu(90)
	end
end
