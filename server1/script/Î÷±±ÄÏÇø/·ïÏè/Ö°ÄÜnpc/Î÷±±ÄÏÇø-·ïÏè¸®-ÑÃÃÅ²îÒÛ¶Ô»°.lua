--Î÷±±ÄÏÇø ·ïÏè¸® Ñ··Å²îÒÛ¶Ô»°
--function main(sel)
--Say("Ñ··Å²îÒÛ£ºÑ··ÅÖØµØ£¬·»Ê¢¶ù²»ÒªÔóÕâ¶ùÏ¹×ªÓÆ£¡", 0)
--end;
-- VH by anhdung9992001 clbgamesvn--
--İ¨¼©Ïµİ³×¨Ó·Ñùµı½Å±¾(BlackBay.2003.12.30)
FESTIVAL06_NPCNAME = "<color=yellow>:<color>";

Include([[\script\global\¢·ÈË_Ñ··ÅÎµ±ø.lua]]);

function main(sel) 
-- gsoldier_entance(); 
Talk(1, "", "Ah ha, tªn kia l¸o, d¸m x«ng vµo nha m«n, bay ®©u b»m tªn nµy cuèn ch¶ cho ta <pic=6>")
end; 

function main_former()
	--Ï¢·æÕâ¸öÖ¸¸îÏòÏµİ³Ñ¯ÎÊµ±Ç°PlayerµÄİ¨¼©Ïµ¹Ø×´Ì¬ĞÅÏ¢
	--²éÑ¯µÄ½á¹û·µ»ØÒÔºó£¬Ïµİ³»Øµ÷²ÎÊıÖĞÖ¸¶¨µÄº¯Êı·û
	--AskRelayForKillerStatus("KillerCallBack")
	Say("§i mét chót ®i! N¬i nµy chİnh l?träng ®Şa", 0)
end;

--Ï¢·æÕâ¸öº¯ÊıÊÇ²éÑ¯½á¹ûµÄ»Øµ÷º¯Êı£¬²ÎÊı¸öÊıºİË³Ğò²»ÔÊĞí¸Ä±ä
function KillerCallBack(RewardMoney, RewardTaskID, CancelMoney, CancelTaskID, OwnCount, MyTaskCount)
	-- if (RewardMoney > 0) then
		-- GetTaskMoney(0, RewardTaskID)
		-- Earn(RewardMoney)
	-- elseif (CancelMoney > 0) then
		-- GetTaskMoney(1, CancelTaskID)
		-- Earn(CancelMoney)
	-- elseif (OwnCount + MyTaskCount > 0) then
		-- Say("Äã³Ô¸ËĞÛĞÄ±ª×Óµ¨¸Ë¢ğ£¿ÈÅ¢ÒÑ··Å×ïÄãµ£µ±µ·Æğ¢ğ", 4, "½¨¸¢×½Ä·ÈÎÎñ/CreateTask", "½ÓÊÜ×½Ä·ÈÎÎñ/QueryTask", "¿´×Ô¼ºµÄÈÎÎñ/ModifyTask", "Ê²·´Ò²²»×ö/DoNothing")
	-- else
		-- Say("Äã³Ô¸ËĞÛĞÄ±ª×Óµ¨¸Ë¢ğ£¿ÈÅ¢ÒÑ··Å×ïÄãµ£µ±µ·Æğ¢ğ?", 3, "½¨¸¢×½Ä·ÈÎÎñ/CreateTask", "½ÓÊÜ×½Ä·ÈÎÎñ/QueryTask","Ê²·´Ò²²»×ö/DoNothing")
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
	Say("×ß×ß×ß£¡²»ÒªÔóÕâ×ßµ´×ßÈ¥µÄ£¬Õâµï¿ÉÊÇÖØµØ", 0)
end;
