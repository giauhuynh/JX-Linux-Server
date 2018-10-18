--ÖĞÔ­±±Çø ãê¾©¸® ÑÃÃÅÎÀ±ø2¶Ô»°

--function main(sel)
--Say("ÑÃÃÅÎÀ±ø£ºÕâ³ÇÖĞµÄÀÏ°ÙĞÕÔç¾Í¶ÔÎÒÃÇ½ğÈË¸©Ê×³Æ³¼£¬ÄÑµÀÄãÏëÄÖÊ¢²»³É£¿", 0);
--end;

--Í¨¼©ÏµÍ³×¨ÓÃÑùÀı½Å±¾(BlackBay.2003.12.30)

FESTIVAL06_NPCNAME = "<color=yellow>Nha m«n vÖ binh:<color>";
Include([[\script\global\¢·ÈË_ÑÃÃÅÎÀ±ø.lua]]);

function main(sel)
    -- gsoldier_entance();
	Say("D©n chóng trong thµnh nµy ®· cói ®Çu ®èi víi ng­êi Kim chóng ta, ch¼ng lÏ nhµ ng­¬i kh«ng thuËn?", 0); 
end;

function main_former()
	--Ï¢ÃæÕâ¸öÖ¸ÁîÏòÏµÍ³Ñ¯ÎÊµ±Ç°PlayerµÄÍ¨¼©Ïµ¹Ø×´Ì¬ĞÅÏ¢
	--²éÑ¯µÄ½á¹û·µ»ØÒÔºó£¬ÏµÍ³»Øµ÷²ÎÊıÖĞÖ¸¶¨µÄº¯ÊıÃû
	--AskRelayForKillerStatus("KillerCallBack")
	Say("Trong thµnh nµy d©n chóng ®· sím ®èi víi chóng ta ng­êi Kim cói ®Çu x­ng thÇn, ch¼ng lÏ ng­¬i nghÜ g©y chuyÖn bÊt thµnh ?", 0);
end;

--Ï¢ÃæÕâ¸öº¯ÊıÊÇ²éÑ¯½á¹ûµÄ»Øµ÷º¯Êı£¬²ÎÊı¸öÊıºÍË³Ğò²»ÔÊĞí¸Ä±ä
function KillerCallBack(RewardMoney, RewardTaskID, CancelMoney, CancelTaskID, OwnCount, MyTaskCount)
	-- if (RewardMoney > 0) then
		--Ï¢ÃæÕâ¸öº¯ÊıÍ¨ÖªÏµÍ³Íæ¼ÒÒÑ¾­ÁìÈ¡ÁËÉÍ½ğ£¬×¢ÒâµÚÒ»¸ö²ÎÊı0±íÊ¾ÁìÉÍ½ğ£¬µÚ¶ş¸ö²ÎÊı±íÊ¾ÎªÄÄ¸öÈÎÎñÁìÉÍ½ğ
		-- GetTaskMoney(0, RewardTaskID)
		-- Earn(RewardMoney)
	-- elseif (CancelMoney > 0) then
		--Ï¢ÃæÕâ¸öº¯ÊıÍ¨ÖªÏµÍ³Íæ¼ÒÒÑ¾­ÁìÈ¡ÁËÍË»ØµÄ±êµÄ½ğ£¬×¢ÒâµÚÒ»¸ö²ÎÊı1±íÊ¾ÁìÍË½ğ£¬µÚ¶ş¸ö²ÎÊı±íÊ¾ÎªÄÄ¸öÈÎÎñÁìÍË½ğ
		-- GetTaskMoney(1, CancelTaskID)
		-- Earn(CancelMoney)
	-- elseif (OwnCount + MyTaskCount > 0) then
		-- Say("Ng­¬i thËt lµ gan lín, tù tiÖn x«ng vµo c«ng ®­êng cïng nha m«n ®İch téi danh ng­¬i ®¶m ®­¬ng khëi sao ?", 4, "Thµnh lËp nhiÖm vô ®uæi b¾t/CreateTask", "NhËn nhiÖm vô ®uæi b¾t/QueryTask", "Xem nhiÖm vô cña m×nh/ModifyTask", "Kh«ng lµm g× c¶/DoNothing")
	-- else
		-- Say("Ng­¬i thËt lµ gan lín, tù tiÖn x«ng vµo c«ng ®­êng cïng nha m«n ®İch téi danh ng­¬i ®¶m ®­¬ng khëi sao ?", 3, "Thµnh lËp nhiÖm vô ®uæi b¾t/CreateTask", "NhËn nhiÖm vô ®uæi b¾t/QueryTask", "Kh«ng lµm g× c¶/DoNothing")
	-- end
end;

function CreateTask()
	--Ï¢ÃæÕâ¸öº¯ÊıÍ¨Öª¿Í»§¶Ë´ò¿ª´´½¨ÈÎÎñµÄ½çÃæ
	OpenCreateTask()
end;

function QueryTask()
	--Ï¢ÃæÕâ¸öº¯Êı½«ËùÓĞÄÜÁìÈ¡µÄÈÎÎñ´«ËÍ¸øÍæ¼Ò¿Í»§¶Ë
	OpenAllTask()
end;

function ModifyTask()
	--Ï¢ÃæÕâ¸öº¯Êı½«ËùÒÑÁìÈ¡µÄÈÎÎñÒÔ¼°ÒÑ´´½¨µÄÈÎÎñ´«ËÍ¸øÍæ¼Ò¿Í»§¶Ë
	OpenOwnTask()
end;

function DoNothing()
	Say("Trong thµnh nµy d©n chóng ®· sím ®èi víi chóng ta ng­êi Kim cói ®Çu x­ng thÇn, ch¼ng lÏ ng­¬i nghÜ g©y chuyÖn bÊt thµnh ?", 0)
end;
