-- ´óµí¡¡Ö°ÄÜ¡¡Ñ··ÅÎµ±ø
-- by£ºDan_Deng(2003-09-16)
--function main()
--	Talk(1,"","Ñ··ÅÎµ±ø£ººô¡­¡­ºô¡­¡­")
--end;

--İ¨¼©Ïµİ³×¨Ó·Ñùµı½Å±¾(BlackBay.2003.12.30)

FESTIVAL06_NPCNAME = "<color=yellow>Nha m«n vÖ binh:<color>";

Include([[\script\global\¢·ÈË_Ñ··ÅÎµ±ø.lua]]);

function main(sel)
    gsoldier_entance();
end;

function main_former()
	--Ï¢·æÕâ¸öÖ¸¸îÏòÏµİ³Ñ¯ÎÊµ±Ç°PlayerµÄİ¨¼©Ïµ¹Ø×´Ì¬ĞÅÏ¢
	--²éÑ¯µÄ½á¹û·µ»ØÒÔºó£¬Ïµİ³»Øµ÷²ÎÊıÖĞÖ¸¶¨µÄº¯Êı·û
	--AskRelayForKillerStatus("KillerCallBack")
	Talk(1,"","ºô...ºô...")
end;

--Ï¢·æÕâ¸öº¯ÊıÊÇ²éÑ¯½á¹ûµÄ»Øµ÷º¯Êı£¬²ÎÊı¸öÊıºİË³Ğò²»ÔÊĞí¸Ä±ä
function KillerCallBack(RewardMoney, RewardTaskID, CancelMoney, CancelTaskID, OwnCount, MyTaskCount)
	-- if (RewardMoney > 0) then
		--Ï¢·æÕâ¸öº¯Êıİ¨ÖªÏµİ³İæ¼ÒÒÑ¾­¸ìÈ¡¸ËÉİ½ğ£¬×¢ÒâµóÒ»¸ö²ÎÊı0±íÊ¾¸ìÉİ½ğ£¬µó¶ş¸ö²ÎÊı±íÊ¾ÎªÄÄ¸öÈÎÎñ¸ìÉİ½ğ
		-- GetTaskMoney(0, RewardTaskID)
		-- Earn(RewardMoney)
	-- elseif (CancelMoney > 0) then
		--Ï¢·æÕâ¸öº¯Êıİ¨ÖªÏµİ³İæ¼ÒÒÑ¾­¸ìÈ¡¸ËİË»ØµÄ±êµÄ½ğ£¬×¢ÒâµóÒ»¸ö²ÎÊı1±íÊ¾¸ìİË½ğ£¬µó¶ş¸ö²ÎÊı±íÊ¾ÎªÄÄ¸öÈÎÎñ¸ìİË½ğ
		-- GetTaskMoney(1, CancelTaskID)
		-- Earn(CancelMoney)
	-- elseif (OwnCount + MyTaskCount > 0) then
		-- Say("Ng­¬i to gan vËy, d¸m x«ng vµo nha m«n c«ng ®­êng, téi nµy ng­¬i kh«ng g¸nh næi ®©u.", 4, "ThiÕt lËp nhiÖm vô/CreateTask", "NhiÖm vô truy n·/QueryTask", "Xem nhiÖm vô/ModifyTask", "Th«i! Kh«ng lµm g× c¶/DoNothing")
	-- else
		-- Say("Ng­¬i to gan vËy, d¸m x«ng vµo nha m«n c«ng ®­êng, téi nµy ng­¬i kh«ng g¸nh næi ®©u.", 3, "ThiÕt lËp nhiÖm vô/CreateTask", "NhiÖm vô truy n·/QueryTask", "Th«i! Kh«ng lµm g× c¶/ DoNothing")
	-- end
end;

function CreateTask()
	--Ï¢·æÕâ¸öº¯Êıİ¨Öª¿İ»§¶Ë´ò¿ª´´½¨ÈÎÎñµÄ½ç·æ
	OpenCreateTask()
end;

function QueryTask()
	--Ï¢·æÕâ¸öº¯Êı½«ËùÓĞÄÜ¸ìÈ¡µÄÈÎÎñ´«Ëİ¸øİæ¼Ò¿İ»§¶Ë
	OpenAllTask()
end;

function ModifyTask()
	--Ï¢·æÕâ¸öº¯Êı½«ËùÒÑ¸ìÈ¡µÄÈÎÎñÒÔ¼°ÒÑ´´½¨µÄÈÎÎñ´«Ëİ¸øİæ¼Ò¿İ»§¶Ë
	OpenOwnTask()
end;

function DoNothing()
	Say("Hõ hõ ...", 0)
end;
