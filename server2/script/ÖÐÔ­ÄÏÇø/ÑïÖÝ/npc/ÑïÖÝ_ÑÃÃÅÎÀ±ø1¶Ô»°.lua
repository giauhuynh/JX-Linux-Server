--ÖĞÔ­ÄÏÇø ÑïÖİ¸® ÑÃÃÅÎÀ±ø1¶Ô»°
--function main(sel)
--Say("ÑÃÃÅÎÀ±ø£ºÀÏÒ¯ÓÖÈ¥³Ô»¨¾ÆÁË£¬ÔÛÃÇÈ´µÃÔÚÕâ¶ùµ±²î£¬Õæ²»Ë¬£¡", 0);
--end;

--Í¨¼©ÏµÍ³×¨ÓÃÑùÀı½Å±¾(BlackBay.2003.12.30)

FESTIVAL06_NPCNAME = "<color=yellow>ÑÃÃÅÎÀ±ø:<color>";
Include([[\script\global\Â·ÈË_ÑÃÃÅÎÀ±ø.lua]]);

function main(sel)
    gsoldier_entance();
end;

function main_former()
	--ÏÂÃæÕâ¸öÖ¸ÁîÏòÏµÍ³Ñ¯ÎÊµ±Ç°PlayerµÄÍ¨¼©Ïà¹Ø×´Ì¬ĞÅÏ¢
	--²éÑ¯µÄ½á¹û·µ»ØÒÔºó£¬ÏµÍ³»Øµ÷²ÎÊıÖĞÖ¸¶¨µÄº¯ÊıÃû
	Say("Nµy ®¹i hiÖp nªn ®i ®i th× h¬n, ®õng lang thang ë ®©y. ", 0);
	--AskRelayForKillerStatus("KillerCallBack")
end;

--ÏÂÃæÕâ¸öº¯ÊıÊÇ²éÑ¯½á¹ûµÄ»Øµ÷º¯Êı£¬²ÎÊı¸öÊıºÍË³Ğò²»ÔÊĞí¸Ä±ä
function KillerCallBack(RewardMoney, RewardTaskID, CancelMoney, CancelTaskID, OwnCount, MyTaskCount)
end;

function CreateTask()
	--ÏÂÃæÕâ¸öº¯ÊıÍ¨Öª¿Í»§¶Ë´ò¿ª´´½¨ÈÎÎñµÄ½çÃæ
	OpenCreateTask()
end;

function QueryTask()
	--ÏÂÃæÕâ¸öº¯Êı½«ËùÓĞÄÜÁìÈ¡µÄÈÎÎñ´«ËÍ¸øÍæ¼Ò¿Í»§¶Ë
	OpenAllTask()
end;

function ModifyTask()
	--ÏÂÃæÕâ¸öº¯Êı½«ËùÒÑÁìÈ¡µÄÈÎÎñÒÔ¼°ÒÑ´´½¨µÄÈÎÎñ´«ËÍ¸øÍæ¼Ò¿Í»§¶Ë
	OpenOwnTask()
end;

function DoNothing()
	Say("ÀÏÒ¯ÓÖÈ¥³Ô»¨¾ÆÁË£¬ÔÛÃÇÈ´µÃÔÚÕâ¶ùµ±²î£¬Õæ²»Ë¬!", 0)
end;


