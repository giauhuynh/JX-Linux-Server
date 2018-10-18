function OnDeath()
	Uworld125 = GetTask(125)
	if (Uworld125 == 10) or (Uworld125 == 15) then
		SetTask(125,15)
		AddEventItem(388)
		Msg2Player("LÊy ®­îc V« tù thiªn th­ ")
		AddNote("LÊy ®­îc V« tù thiªn th­ ")
--	elseif (Uworld125 == 20) and (HaveItem(387) == 0) then
--		AddEventItem(387)
--		Msg2Player("ÖØ»ñ¶ëáÒÎŞ×ÖÌìÊé¡£")
--		AddNote("ÖØ»ñ¶ëáÒÎŞ×ÖÌìÊé¡£")
	end
end
