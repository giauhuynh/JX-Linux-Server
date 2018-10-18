--Î÷ÄÏ±±Çø ³É¶¼¸® Ñ··Å²îÒÛ¶Ô»° Êµ½çÈÎÎñ£¨³É¶¼É±Ò°Öí£©
-- Update: Dan_Deng(2004-03-19)

FESTIVAL06_NPCNAME = "<color=yellow>:<color>";

Include("\\script\\global\\repute_head.lua")

Include([[\script\global\¢·ÈË_Ñ··ÅÎµ±ø.lua]]);

function main(sel)
    -- gsoldier_entance();
Talk(1,"","Ng­¬i d¸m x«ng vµo nha m«n? thËt ®óng lµ ¨n gan hïm mËt gÊu råi")
end;

function main_former()
	Uworld11 = GetTask(11)
	if (Uworld11 == 100) then			-- ÈÎÎñİê³É
		W11_prise()
	elseif (Uworld11 < 255) and (Uworld11 >= 1) then		-- ÈÎÎñÖĞ
		Talk(1,"","Muèn nhËn th­ëng µ, ®i giÕt 10 con heo rõng råi nãi")
	elseif (Uworld11 > 255) then		-- ÈÎÎñÒÑ¾­İê³É
		Talk(1,"","L©n cËn thµnh ®« cã rÊt nhiÒu nói , th­êng cã heo rõng xuÊt hiÖn , ph¶i diÖt chóng míi cã thÓ ®¶m b¶o thu ho¹ch n¨m nay.")
	else			-- Î´½ÓÈÎÎñ
		Talk(1,"","ng­¬i d¸m x«ng vµo nha m«n ? thËt lµ ¨n råi gan hïm mËt gÊu")
	end
end;

function W11_prise()
	Talk(1,"","®· giÕt chÕt m­êi con heo rõng ? thËt tèt qu¸ , ta thay mÆt d©n chóng thµnh ®« ®a t¹ vŞ anh hïng . §©y lµ 500 l­îng t­ëng th­ëng")
	Earn(500)
	SetTask(11,date("%Y%m%d"))
	i = random(0,99)
	if (i < 50) then			-- 50%¼¸¢Ê
		x = 3
	elseif (i < 85) then		-- 35%¼¸¢Ê
		x = 4
	else							-- 15%¼¸¢Ê
		x = 5
	end
	AddRepute(x)
	Msg2Player("nhiÖm vô hoµn thµnh , nhËn ®­îc 50 danh väng , danh väng t¨ng thªm"..x.."®iÓm.")
end;
