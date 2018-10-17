--ÖĞÔ­±±Çø ãê¾©¸® ÑÃÃÅÎÀ±ø1¶Ô»°

--function main(sel)
--Say("ÑÃÃÅÎÀ±ø£ºÈÎºÎÈËÖ»ÒªËµ³ö¶Ô´ó½ğ¹ú²»¾´µÄÑÔ´Ç£¬¾ÍÁ¢¿Ì×¥ÆğÀ´£¡", 0);
--end;

--Í¨¼©ÏµÍ³×¨ÓÃÑùÀı½Å±¾(BlackBay.2003.12.30)

FESTIVAL06_NPCNAME = "<color=yellow>Nha m«n v?binh:<color>";
Include([[\script\global\¢·ÈË_ÑÃÃÅÎÀ±ø.lua]]);

function main(sel)
    -- gsoldier_entance();
	Say("D©n chóng trong thµnh nµy ®· cói ®Çu ®èi víi ng­êi Kim chóng ta, ch¼ng lÏ nhµ ng­¬i kh«ng thuËn?", 0); 
end;

function main_former()
	--Ï¢ÃæÕâ¸öÖ¸ÁîÏòÏµÍ³Ñ¯ÎÊµ±Ç°PlayerµÄÍ¨¼©Ïµ¹Ø×´Ì¬ĞÅÏ¢
	--²éÑ¯µÄ½á¹û·µ»ØÒÔºó£¬ÏµÍ³»Øµ÷²ÎÊıÖĞÖ¸¶¨µÄº¯ÊıÃû
	Say("BÊt luËn k?nµo ch?cÇn nãi ra ®èi víi ®¹i kim quèc bÊt kİnh ®İch lêi nãi, liÒn lËp tøc b¾t l¹i! ", 0);
	--AskRelayForKillerStatus("KillerCallBack")
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
		-- Say("Ng­¬i thËt l?gan lín, t?tiÖn x«ng vµo c«ng ®­êng cïng nha m«n ®İch téi danh ng­¬i ®¶m ®­¬ng khëi sao ?", 4, "Thµnh lËp nhiÖm v?®uæi b¾t/CreateTask", "NhËn nhiÖm v?®uæi b¾t/QueryTask", "Xem nhiÖm v?cña m×nh/ModifyTask", "Kh«ng lµm g?c?DoNothing")
	-- else
		-- Say("Ng­¬i thËt l?gan lín, t?tiÖn x«ng vµo c«ng ®­êng cïng nha m«n ®İch téi danh ng­¬i ®¶m ®­¬ng khëi sao ?", 3, "Thµnh lËp nhiÖm v?®uæi b¾t/CreateTask", "NhËn nhiÖm v?®uæi b¾t/QueryTask", "Kh«ng lµm g?c?DoNothing")
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
	Say("BÊt luËn k?nµo ch?cÇn nãi ra ®èi víi ®¹i kim quèc bÊt kİnh ®İch lêi nãi , liÒn lËp tøc b¾t l¹i ! ", 0)
end;
