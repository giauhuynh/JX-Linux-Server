--description: ³É¶¼Ò°ÍâÒ°Öí ÊÀ½çÈÎÎñ
--author: yuanlan	
--date: 2003/4/1

function OnDeath()
	Uworld11 = GetTask(11)
	if (GetTask(11) < 255) and (GetTask(11) >= 1) and (random(1,99) <= 10) then		-- ÈÎÎñÖĞ£¬10%¼¸ÂÊ
		if (GetTask(11) < 10) then					-- µ½´ïÊ®Ö»ºó²»ÔÙ¼ÆÊı
			Uworld11 = Uworld11 + 1
			SetTask(11,Uworld11)
			Msg2Player("Ta ®· giÕt chÕt 1 con heo rõng chuyªn quÊy nhiÔu d©n lµng, tr­íc m¾t tæng céng ®· giÕt chÕt "..(Uworld11 - 1).."Con ")
		else
			SetTask(11,100)
			Msg2Player("Ta ®· giÕt chÕt 10 con heo rõng, cã thÓ trë vÒ phôc mÖnh ®­îc råi ")
		end
	end
end;
