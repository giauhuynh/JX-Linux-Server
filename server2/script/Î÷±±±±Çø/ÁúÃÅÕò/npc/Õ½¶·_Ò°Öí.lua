-- ÁúÃÅÕò Õ½¶· Ò°Öí Ğ¢ÊÖÈÎÎñ£ºÒ°ÖíÈâ
-- By£ºDan_Deng(2003-09-17)

function OnDeath()
	UTask_world27 = GetTask(27)
	if (UTask_world27 == 5) and (random(0,99) < 80) then
		AddEventItem(228)
		if (GetItemCount(228) >= 3) then
			Msg2Player("§· lÊy ®­îc 3 miÕng thŞt t­¬i, quay vÒ gÆp bµ chñ L÷ qu¸n.")
			AddNote("§· lÊy ®­îc 3 miÕng thŞt t­¬i, quay vÒ gÆp bµ chñ L÷ qu¸n.")
		else
			Msg2Player("GiÕt ®­îc heo rõng b¹n lÊy ®­îc mét miÕng thŞt t­¬i")
		end
	end
end;
