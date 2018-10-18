function OnDeath ()
	Uworld128 = GetTask(128)
	Uworld134 = GetTask(134)
	if (Uworld128 == 30) then
		Uworld134 = SetBit(Uworld134,10,1)
		if (Uworld134 == 1023) then
			SetTask(128,40)
			Msg2Player("§· giÕt ®­îc s¸t thñ, trë vÒ gÆp giíi v« tµ!!! ")
			AddNote("§· giÕt ®­îc s¸t thñ, trë vÒ gÆp giíi v« tµ!!! ")
		elseif (Uworld134 ~= GetTask(134)) then
			SetTask(134,Uworld134)
			Msg2Player("Ta víi ng­¬i cã thï o¸n g× sao?")
		else
			-- ÖØ¸´É±ËÀÍ¬Ò»Ö»NPC£¬²»¸øÌáÊ¾
		end
	end
end
