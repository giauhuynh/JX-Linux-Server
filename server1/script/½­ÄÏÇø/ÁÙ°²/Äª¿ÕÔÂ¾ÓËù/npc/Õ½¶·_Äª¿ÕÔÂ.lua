-- ½­ÄÏÇø ÁÙ°² Õ½¶·_Äª¿ÕÔ¢.lua £¨ÏûÃğ²É»¨ÔôÈÎÎñ£©
-- By: Dan_Deng(2004-05-28)

Include("\\script\\global\\repute_head.lua")

function OnDeath(sel)
	Uworld43 = GetTask(43)
	if (Uworld43 == 100) then
		Msg2Player("qua bao n¨m th¸ng luyÖn tËp vâ c«ng cña ng­¬i còng ®· tiÕn bé,sinh m¹ng,th©n ph¸p mçi tÇng t©n mét İt..")
		Talk(4,"U43_prise", 10869, 10870, 10871, 10872)
	end
end;

function U43_prise()
	SetTask(43,255)
	AddProp(2)
	AddStrg(1)
	AddDex(1)
	Task88_1 = GetByte(GetTask(88),1) + 1
	Task88_2 = GetByte(GetTask(88),2) + 1
	if (Task88_1 > 255) then Task88_1 = 255 end
	if (Task88_2 > 255) then Task88_2 = 255 end
	Task88 = GetTask(88)
	Task88 = SetByte(Task88,1,Task88_1)
	Task88 = SetByte(Task88,2,Task88_2)
	SetTask(88,Task88)			-- ¼Ç¢¼ÈÎÎñµÃÍâ¹¦µã×ÜÊı
	i = ReturnRepute(30,80,5)		-- È±Ê¡ÉùÍû£¬×î´óÎŞËğºÄµÈ¼¶£¬Ã¿¼¶µİ¼õ
	AddRepute(i)		-- ¼ÓÉùÍû
	Msg2Player("NhiÖm vô tiªu diÖt h¸i hoa tÆc : hoµn thµnh danh väng t¨ng cao"..i.."µã.")
	AddNote("NhiÖm vô tiªu diÖt h¸i hoa tÆc : hoµn thµnh..")
end
