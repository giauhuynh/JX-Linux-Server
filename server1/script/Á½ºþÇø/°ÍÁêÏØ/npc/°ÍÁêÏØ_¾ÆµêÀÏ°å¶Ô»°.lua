--description: ¸½ºşÇø °İ¸êÏØ ¾ÆµêµÏ°å¶Ô»° ÌìİõÈë·ÅÈÎÎñ
--author: yuanlan	
--date: 2003/4/24
-- Update: Dan_Deng(2003-08-16)

Include("\\script\\global\\timerhead.lua")

function main(sel)
	-- Uworld38 = GetByte(GetTask(38),1)
	-- if (Uworld38 == 20) then 							--Ììİõ°ïÈë·ÅÈÎÎñ
-- Talk(4, "", "gia40", "gia41<color=Red>gia42<color>gia43", "gia44", "gia45<color=Red>gia46<color>gia47<color=Red>gia48<color>gia49<color=Red>gia411<color>gia4111<color=Red>gia412<color>gia513")
		-- SetTask(38,SetByte(GetTask(38),1,40))
		-- AddNote("gia415")
		-- Msg2Player("gia416")
	-- elseif (Uworld38 == 40) then
		-- if (HaveItem(116) == 1) and (HaveItem(135) == 1) and (HaveItem(144) == 1) then
			-- if (GetTimerId() > 0) then		-- ¸íÓĞ¼ÆÊ±Æ÷ÔóÔËĞĞÖĞ
				-- Talk(1,"","gia417")
				-- return
			-- end
			-- Talk(2,"","gia418","gia419")
			-- DelItem(116)
			-- DelItem(135)
			-- DelItem(144)
			-- SetTask(38,SetByte(GetTask(38),1,60))
			-- SetTimer(1 * CTime * FramePerSec, 1)									--¿ªÆô¼ÆÊ±Æ÷
			-- AddNote("gia420")
			-- Msg2Player("gia421")
		-- else
			-- Talk(1,"","gia422<color=Red>gia423<color>gia424")
		-- end
	-- elseif (Uworld38 == 60) then			-- Îª¼ÆÊ±Æ÷Èİ´í¼ÓÈëÊÖ¶¯³¬Ê±´¦µí
		-- i = GetRestSec(1)
		-- if (i > 0) then
			-- Talk(1,"","gia425"..i.."427")
		-- else
			-- StopTimer()						--½áÊø¼ÆÊ±
			-- SetTask(38,SetByte(GetTask(38),1,80))
			-- TWenroll_getitem()
		-- end
	-- elseif (Uworld38 == 80) and (HaveItem(90) == 0) then
		-- TWenroll_getitem()
	-- elseif (Uworld38 >= 80) then		-- İê³É´ËÈÎÎñºó
		-- Talk(1,"","N¬i ®©y chóng ta cã ®ñ thøc ¨n, h¶i s¶n phong phó. Kh¸ch quan muèn ¨n g×? Muèn uèng r­îu g×? ")
	-- else
		Talk(1,"","N¬i ®©y chóng ta cã ®ñ thøc ¨n, h¶i s¶n phong phó. Kh¸ch quan muèn ¨n g×? Muèn uèng r­îu g×?")
	-- end
end;

function TWenroll_getitem()
	AddEventItem(90)
	Msg2Player("gia429")
--	SetTask(3, 8)
	AddNote("gia430")
end
