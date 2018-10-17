-- \script\Î÷±±ÄÏÇø\»ªÉ½\npc\Õ½¶·_½ğ¹ú½«ÁìÍĞ¶ûºº.lua
-- by xiaoyang (2004\4\15) ÉÙÁÖ90¼¶ÈÎÎñ

function OnDeath()
Uworld122 = GetTask(122)
	if (Uworld122 == 55) then				-- ×´Ì¬ÖĞ£¬´Ë´¦²»¼ì²éÁîÅÆ
		Talk(1,"","ña, t víi nhµ ng­¬i cã thï o¸n g× sao?")
		SetTask(122,60)  -- ÉèÖÃÈÎÎñ±äÁ¿Îª60
		Msg2Player("§¸nh b¹i ®­îc Kim quèc t­íng lÜnh, quay vÒ gÆp Th­êng b¸ch lı vµ Lı ®Şch phong b¸o tin.")
		AddNote("§¸nh b¹i ®­îc Kim quèc t­íng lÜnh, quay vÒ gÆp Th­êng b¸ch lı vµ Lı ®Şch phong b¸o tin.")
	end
end
