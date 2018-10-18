-- ÖĞÔ­ÄÏÇø ÑïÖİ¸® Ò©µêÀÏ°å¶Ô»°£¨Îå¶¾40¼¶ÈÎÎñ£©
-- Update£ºDan_Deng ¼ÓÈëÎå¶¾ÈÎÎñ£¨2003-10-12£©

-- Á¶ÖÆ»ìÔªÁéÂ¶
-- function refine()
	-- DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
-- end

function main()
	-- UTask_wu = GetTask(10)
	-- if (UTask_wu == 40*256+10) and (HaveItem(142) == 0) then 		--ÈÎÎñÖĞ
		-- Say("½ñÌì÷êÏãµÄ¼Û¸ñÎª500Á½¶øÒÑ!",
			-- 4,
			-- "Âòµ½÷êÏã/L40_buy_yes",
			-- "½»Ò×/yes",
			-- "ÎÒÏëÁ¶ÖÆ»ìÔªÁéÂ¶ /refine",
			-- "²»½»Ò×/no")
	-- else
		Say("Ta lµ thÇy lang duy nhÊt ë ®©y, cã bÖnh g× cø ®Õn t×m ta, tr­íc hÕt nªn mua İt thuèc phßng th©n ®·.",
			3,
			"Giao dŞch/yes",
			-- "Á¶ÖÆ»ìÔªÁéÂ¶/refine",
			"th«i./no")
	-- end
end;

function L40_buy_yes()
	-- if (GetCash() >= 500) then
		-- Pay(500)
		-- AddEventItem(142)
		-- AddNote("Âòµ½÷êÏã.")
		-- Msg2Player("Âòµ½÷êÏã.")
	-- else
		-- Talk(1,"","Õâ¸ö¼Û¶¼Âò²»ÁË£¬¸øÎÒ³öÈ¥!")
	-- end
end;

function yes()
Sale(96);  			--µ¯³ö½»Ò×¿ò
end;

function no()
end;
