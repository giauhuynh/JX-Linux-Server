--Ï´¼¼ÄÜµãµÄÅÑÉ®
-- By: Dan_Deng(2003-08-29)
-- Update: Dan_Deng(2004-02-04) Ï´µãĞŞ¸ÄÎª¿ÉÒÔÏ´255´Î
-- Update: Dan_Deng(2004-05-27) Ğ¡¶ùÊ§×ÙÈÎÎñ (Uworld42 = GetTask(42))
-- ÁÙÊ±±äÁ¿Éè¶¨: ³õ´Î¼¼ÄÜ(1),³õ´ÎË®¾§(257),¶à´ÎË®¾§(10),Ãâ·Ñ(1024)
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\vng_event\\tochieukynang150\\head.lua")


function main()
Say("Chµo vŞ thiÕu hiÖp")
	-- Uworld42 = GetTask(42)
	-- tbTrainSkill150:ResetDailyTask()
	-- if (Uworld42 == 40) then
		-- Talk(12,"","ÎÒÀ´ÕÒÊ§×ÙµÄĞ¡º¢! ","°¢ÃÖÍÓ·ğ£¬ÎÒÊÇÇå°×Ö®ÈË£¬²»¶®£¬²»¶®. ","Ï£Íû´óÊ¦´È±¯£¬Ëµ¸øÎÒÌı!","ÄÇÄêÎÒ±»Öğ³öÊ¦ÃÅ£¬·½ÕÉÓĞ´È±¯Âğ","²»¶®´óÊ¦ÎªºÎÊÂ¶ø±»Öğ³öÊ¦ÃÅ? ","ÄãÎÊÄÇÃ´¶à¸ÉÂï£¿¹ş¹ş¹ş£¬ÀÏñÄ²»½öÒªºÍÄãËµÎªÊ²Ã´±»Öğ³öÊ¦ÃÅ£¬»¹Òª¸æËßÄãÊ§×ÙĞ¡º¢µÄÊÂ","¹ş¹ş£¬Ô­À´ºÍÉĞ·¸½äÁË","°¢ÃÖÍÓ·ğ£¬ÉÆÔÕÉÆÔÕ!","¾ÆÈâÒÑ³Ô¹ı£¬ĞÄ²»Ïò·ğÁË. ","¹ş¹ş£¬ºÃ¡£ÄãÓëÎÒÓĞÔµ£¬ÎÒ¸æËßÄã!","´óÊ¦£¬Ê®¸öÈËµÄÃü²»ÊÇ¿ªÍæĞ¦µÄ","ºÃ£¬ÄãÈ¥ÕÒÒ»¸öÈË½ĞÁú×·Îè£¬Ö»ÓĞËû²ÅÖªµÀÄÇ¸öÈËÔÚÄÄÀï")
		-- SetTask(42,50)
		-- AddNote("Ê§×ÙĞ¡º¢ÈÎÎñ£ºÈ¥ÕÒÁú×·Îè£¬Ñ¯ÎÊÊ§×ÙĞ¡º¢µÄÏûÏ¢. ")
		-- Msg2Player("Ê§×ÙĞ¡º¢ÈÎÎñ£ºÈ¥ÕÒÁú×·Îè£¬Ñ¯ÎÊÊ§×ÙĞ¡º¢µÄÏûÏ¢. ")
		-- else		
		-- local szTitle = "ÊÍÃ÷£ºÏÖÔÚÖ»ÒªÕÒËæ±ãÄÄ¸ö³ÇÊĞµÄ³µ·ò£¬¶¼¿ÉÒÔËÍÄãÈ¥¡°Ï´Ëèµº¡±£¬±ÈÆ¶É®Ï´Ëè¸ü¼Ó·½±ã¡£"
		-- szTitle = szTitle .. "²»¹ıÎÒÕâ±ß¿ÉÒÔËÍÄãÃÇÈ¥<color=yellow>ÎŞÃûÃØ¾µ<color>£¬ÔÚÄÇÀï¿ÉÒÔÓÃ¾­ÑéÀ´»»È¡Ä³Ğ©¼¼ÄÜµÄÊìÁ·¶È¡£"
		
		-- local tbOpt = {}
		-- tinsert(tbOpt, {"½»ÎïÆ·", tbTrainSkill150.LoadItem, {tbTrainSkill150}})
		-- tinsert(tbOpt, {"ËÍÎÒÈ¥ÎŞÃûÃØ¾µ", toWumingmijin})	
		-- tinsert(tbOpt, {"ÎÒÔÙ¿¼ÂÇÏÂ", no})
		
		-- CreateNewSayEx(szTitle, tbOpt)

	-- end
end;

function toWumingmijin()
	local tbSkill_150 = {1055,1056,1057,1059,1060,1058,1066,1067,1069,1070,1071,1061,1062,1114,1063,1065,1075,1076,1074,1073,1079,1078,1080,1081,}
	local bResult = 0
	for i=1, getn(tbSkill_150) do
		if HaveMagic(tbSkill_150[i]) ~= -1 then
			bResult = 1
			break
		end
	end

	if bResult == 1 then
		NewWorld(967,1634, 3231)
	else
		Talk(1,"","Ñ§µ½150¼¼ÄÜºóÔÙÈ¥ÎŞÃûÃØ¾³!")
	end
end

function rollback_0611()		-- Îª(2004-06-11)Éè¼ÆµÄÃâ·ÑÏ´µã
	if (GetCash() >= 100000) then
		SetTaskTemp(1,1024)		-- ´Ë´ÎÏ´µãÔöÁ¿Îª1024
		rollback_prise()
	else
		Talk(1,"","ÄãĞĞ×ß½­ºşÕâÃ´¾Ã£¬100000 Á½¶¼Ã»ÓĞÂğ?")
	end
end

function rollback_1212()		-- Îª(2003-12-12)Éè¼ÆµÄÃâ·ÑÏ´µã£¨ÒÑÈ¡Ïû£©
	if (GetCash() >= 100000) then
		SetTaskTemp(1,1)		-- ´Ë´ÎÏ´µãÔöÁ¿Îª1
		rollback_prise()
	else
		Talk(1,"","ÕâµãÇ®¶¼Ã»ÓĞ£¬ÔõÃ´ĞĞ×ß½­ºş?!")
	end
end

function found_jewel_yes()		-- ÕÒµ½±¦Ê¯£¬»»»Ø¼¼ÄÜµã
	if (GetCash() >= 100000) then
		j238 = GetItemCountEx(238)
		j239 = GetItemCountEx(239)
		j240 = GetItemCountEx(240)
		if (j238+j239+j240 == 3) then
			Pay(100000)
			SetTask(13,GetTask(13) + 256)	-- °Ñ±äÁ¿¸Ä³ÉÓÃ¹ı±¦Ê¯µÄ×´Ì¬
			for i = 1,j238 do DelItemEx(238) end
			for i = 1,j239 do DelItemEx(239) end
			for i = 1,j240 do DelItemEx(240) end
			AddMagicPoint(3)		-- ²¹»ØÏ´µã¿Û³ıµÄ3µã¡£
			Talk(1,"KickOutSelf","ºÃÁË£¬ÄãÏÖÔÚĞİÏ¢Ò»ÏÂ£¬»Ö¸´Ò»ÏÂ!")
		elseif (j238+j239+j240 > 3) then
			Say("Äã¸øÎÒ3¿ÅË®¾§ÏÈ£¬ÎÒ²ÅÄÜ°ïÄã!",1,"ÄÇÎÒÉÔºò»ØÀ´/rollback_no")
		else
			Talk(1,"","Äã²»¹»3¿ÅË®¾§")
		end
	else
		Talk(1,"","ºÃÁË£¬ÄãÏÖÔÚĞİÏ¢Ò»ÏÂ£¬»Ö¸´Ò»ÏÂ!")
	end
end

function rollback_get()
	Say("ºÃÁË£¬ÎÒºÜÀÛ¡£Äã¸øÎÒ´·´·±³!",2,"ÕâÊÇÊ®ÍòÁ½£¬Çë´óÊ¦ÊÕÏÂ. /pay_yes","ÄÇËãÁË/rollback_no")
end;

function rollback_no()
	Talk(1,"","ÕıµÈÄã´ó¼İ¹âÁÙ£¬¾ÍÊÕµ½Ê®ÍòÁ½£¬¹ş¹ş!. ")
end;

function pay_yes()					-- ³õ´ÎÏ´µã£¬ÊÇÓÃµÄ±¦Ê¯£¨²»¿Û¼¼ÄÜ£©
	if (GetCash() >= 100000) then
		if (GetByte(GetTask(13),2) == 0) then		-- ÈôÓÃ¹ıË®¾§¾Í²»ÔÙÔÊĞíÓÃË®¾§Ï´µã
			Say("ÄãÏÈ¸øÎÒ3¿ÅË®¾§£¬ÎÒ²ÅÄÜ°ïÄã!",3,"ÎÒÓĞ3¿Å /pay_jewel","ÎÒÃ»ÓĞ£¬¾­ÂöÊÜÉË£¬ÊÜ²»ÁËÁË. /jewel_none","ÄÇÎÒ¾ÍÍíµã°ïÄã /rollback_no")
		else
			jewel_none()
		end
	else
		Talk(1,"","ÕâÊÇÄãµÄ³ÏÒâÂğ£¿Äã»ØÈ¥°É! ")
	end
end

function pay_jewel()
	j238 = GetItemCountEx(238)
	j239 = GetItemCountEx(239)
	j240 = GetItemCountEx(240)
	if (j238+j239+j240 == 3) then
		SetTaskTemp(1,257)		-- ¼Ç×¡ÊÇÓÃ±¦Ê¯Ï´µÄµã£¨Ï´µã±äÁ¿ÖµÎª257£¬·Ç1£©
		Talk(2,"rollback_prise","ºÃÁË£¬ÄãÏÖÔÚĞİÏ¢Ò»ÏÂ£¬»Ö¸´Ò»ÏÂ!","ÏÖÔÚ×øÔÚÎÒÇ°Ãæ")
	elseif (j238 + j239 + j240 > 3) then
		Say("ÄãÏÈ¸øÎÒ3¿ÅË®¾§£¬ÎÒ²ÅÄÜ°ïÄã!",1,"ÄÇÎÒÉÔºò»ØÀ´/rollback_no")
	else
		Talk(1,"","ÄãÃ÷Ã÷Ã»ÓĞ3¿ÅË®¾§")
	end
end

function NEWpay_yes()		-- µÚ¶ş´Î£¨¼°ÒÔºó£©Ï´µãÊ±µ÷ÓÃ£¬Ö±½Ó¼ì²éÇ®ºÍ±¦Ê¯£¬²»ÔÙ¼ÇÂ¼ÊÇ·ñ±¦Ê¯Ï´
	if (GetCash() >= 100000) then
		j238 = GetItemCountEx(238)
		j239 = GetItemCountEx(239)
		j240 = GetItemCountEx(240)
		if (j238+j239+j240 == 3) then
			SetTaskTemp(1,10)		-- ÒÑ¾­¿ªÊ¼Ï´µãÁ÷³Ì
			Talk(2,"rollback_prise","ºÃÁË£¬ÄãÏÖÔÚĞİÏ¢Ò»ÏÂ£¬»Ö¸´Ò»ÏÂ!","ÏÖÔÚ×øÔÚÎÒÇ°Ãæ")
		elseif (j238 + j239 + j240 > 3) then
			Say("ÄãÏÈ¸øÎÒ3¿ÅË®¾§£¬ÎÒ²ÅÄÜ°ïÄã!",1,"ÄÇÎÒÉÔºò»ØÀ´/rollback_no")
		else
			Talk(1,"","ÄãÃ÷Ã÷Ã»ÓĞ3¿ÅË®¾§")
		end
	else
		Talk(1,"","100000 Á½¶¼Ã»ÓĞ£¬ÎÒÔõÃ´°ïÄã?")
	end
end

function jewel_none()
--	SetTask(13,GetTask(13) + 1)
	SetTaskTemp(1,1)		-- ¼Ç×¡ÊÇÓÃ¼¼ÄÜµãÊıÏ´µÄµã£¨Ï´µã±äÁ¿ÖµÎª1£¬·Ç257£©
	Talk(2,"rollback_prise","ºÃÁË£¬ÄãÏÖÔÚĞİÏ¢Ò»ÏÂ£¬»Ö¸´Ò»ÏÂ!","ÏÖÔÚ×øÔÚÎÒÇ°Ãæ")
end

function rollback_cancel()		-- ÒÑ·ÅÆúµÄÎŞÓÃº¯Êı
	i = GetTaskTemp(1)
	if (i > 0) then		-- Èç¹ûÒÑ¾­¿ªÊ¼Á÷³Ì£¬·µ»¹10WÁ½Òø×Ó
		Talk(1,"","ÎÒ»¹ÄãÇ®!")
		Msg2Player("»¹Ç®¸øÄã. ")
	end
end

function rollback_prise()
--- ÏÈ¿ÛÇ®ºÍ±¦Ê¯¡¢ÖÃ±äÁ¿
	UTask13 = GetTask(13)
	j238 = GetItemCountEx(238)
	j239 = GetItemCountEx(239)
	j240 = GetItemCountEx(240)
	addon = GetTaskTemp(1)
	if (addon == 1024) then			-- ÊÇÃâ·ÑÌØÊâÏ´µã
		Uworld137 = GetTask(137) + 40
		SetTask(137,Uworld137)
		AddMagicPoint(3)
	elseif (addon == 257) then		-- ÊÇ³õ´ÎÏ´µã£¬²¢ÇÒÊÇÓÃ±¦Ê¯Ï´µÄ
		for i = 1,j238 do DelItem(238) end
		for i = 1,j239 do DelItem(239) end
		for i = 1,j240 do DelItem(240) end
		AddMagicPoint(3)		-- ¼Ó3µã¼¼ÄÜ£¬µÖÏúÏ´µã¿Û³ıµÄ3µãÕıºÃ¶ÔÉÏ¡£
		SetTask(13,UTask13 + 257)	-- Ï´µã±äÁ¿µÄ¸Ä±äÎªÔ­±¾Öµ¼ÓÉÏ´Ë´ÎÔö¼ÓÖµ£¨Ãâ·ÑÌØÊâÏ´µãµÄ+0£©
	elseif (addon == 10) then		-- ²»ÊÇ³õ´ÎÏ´µã£¬±ØÓĞ±¦Ê¯¡£Ò²¼Ó3µã¼¼ÄÜ
		for i = 1,j238 do DelItem(238) end
		for i = 1,j239 do DelItem(239) end
		for i = 1,j240 do DelItem(240) end
		AddMagicPoint(3)
		SetTask(13,UTask13 + 1)	-- Ï´µã±äÁ¿µÄ¸Ä±äÎªÔ­±¾Öµ¼ÓÉÏ´Ë´ÎÔö¼ÓÖµ
	elseif (addon == 1) then		-- ³õ´ÎÏ´µã£¬ÓÃµÄÊÇ¼¼ÄÜ
		SetTask(13,1)	-- Ï´µã±äÁ¿µÄ¸Ä±äÎªÔ­±¾Öµ¼ÓÉÏ´Ë´ÎÔö¼ÓÖµ
	else
		Talk(1,"","Ï´Ëè×´Ì¬ÓĞµÄ´íÎó£¬ÇëÁªÏµGM½â¾ö!")
		return 0
	end
	Pay(100000)
--- È»ºó¿ªÊ¼Ï´µã
	i = HaveMagic(210)		-- Çá¹¦ÁíÍâ²Ù×÷
	j = HaveMagic(400)		-- ¡°½Ù¸»¼ÃÆ¶¡±ÁíÍâ²Ù×÷
	n = RollbackSkill()		-- Çå³ı¼¼ÄÜ²¢·µ»ØËùÓĞ¼¼ÄÜµã£¨°üÀ¨Çá¹¦µÈÌØÊâ¼¼ÄÜ£©
	x = 0
	if (i ~= -1) then x = x + i end		-- ÕâÁ½¾äÅĞ¶ÏÊÇÅÅ³ı´ÓÎ´Ñ§¹ıÇá¹¦µÄÈË·µ»Ø-1´Ó¶øµ¼ÖÂµãÊı¼ÆËã´íÎóÇé¿ö
	if (j ~= -1) then x = x + j end
	rollback_point = n - x - 3			-- °Ñ¼¼ÄÜµãµ±×ö¿ÕÏĞµãÊı·µ»¹£¬µ«ÏÈ¿Û³ıÇá¹¦µÈ
	if (rollback_point + GetMagicPoint() < 0) then		-- Èç¹ûÏ´³ÉÁË¸ºÊı£¬Ôòµ±×÷0£¨ÎªÒÔºó¶à´ÎÏ´µã±£Áô£©
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
--	AddMagic(53,1)				-- Òş²ØµÄ»ù´¡¼¼ÄÜ£¨³¤±ø¡¢¶Ì±ø¡¢Ô¶³Ì£©²»±Ø´¦Àí
--	AddMagic(1,1)
--	AddMagic(2,1)
	if (i ~= -1) then AddMagic(210,i) end			-- Èç¹ûÑ§¹ıÇá¹¦Ôò¼Ó»ØÔ­ÓĞµÈ¼¶
	if (j ~= -1) then AddMagic(400,j) end			-- Èç¹ûÑ§¹ı¡°½Ù¸»¼ÃÆ¶¡±Í¬Ñù´¦Àí
	if (UTask13 == 254) or (UTask_13 == 510) then		-- ÒÑ¾­Ã»ÓĞÏ´µã»ú»áÁË£¬ÌáĞÑÒ»ÏÂÍæ¼Ò
		Msg2Player("ÓÃ3¿ÅË®¾§½øĞĞ¼¼ÄÜÏ´Ëè£¬Äã¸Ã»Ø¼ÒĞİÏ¢Ò»ÏÂ!")
		Say("ÄãÏ´ËèÌ«¶à´ÎÁË£¬¾­ÂöÂÒÁË£¬ÏÖÔÚ <color=red>²»ÄÜÏ´ËèÁË<color> !",1,"ÎÒÖªµÀÁË. /KickOutSelf")
	else
		Msg2Player("ÒÑÏ´ËèÍê¼¼ÄÜµã£¬Äã¿ÉÒÔ½øĞĞÖØĞÂ·ÖÅä!")
		Say("ÒÑÏ´ËèÍê¼¼ÄÜµã£¬Äã¿ÉÒÔ½øĞĞÖØĞÂ·ÖÅä!",1,"ºÃ. /KickOutSelf")
	end
--	KickOutSelf()
end;

function no()
end
