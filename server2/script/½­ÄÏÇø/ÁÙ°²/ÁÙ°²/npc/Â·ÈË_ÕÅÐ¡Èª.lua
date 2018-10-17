--½­ÄÏÇø\ÁÙ°²\ÁÙ°²\npc\¢·ÈË_ÕÅĞ¡Èª.lua 
--by xiaoyang (2004\4\20)

Include("\\script\\global\\repute_head.lua")

function main()
	Uworld121 = GetTask(121)
	Uworld38 = GetByte(GetTask(38),1)
	if ((Uworld121 < 10) and (GetLevel() >= 90) and (GetReputeLevel(GetRepute()) >= 5) and (Uworld38 == 127) and (GetFaction() ~= "tianwang")) or 
		(GetCamp() == 4 and GetLevel() >= 90 and GetTask(5897) == 0) then
		Talk(3,"Uworld121_get","C¸c vŞ h·o b»ng h÷u","T¹i h¹ ®· sím ng­ìng mé tµi lµm ®ao cña Tr­¬ng gia. thËt danh bÊt h­ truyÒn","Kh«ng biÕt c¸c h¹ cã thÓ gióp ta mét chuyÖn kh«ng?","Nãi ®i!")
	elseif (Uworld121 == 10) and (HaveItem(373) == 0) then
		Talk(1,"","Ta còng béi phôc c¸c h¹, c©y ®ao cßn ch­a cÇm ®· véi v· ®i.")
		AddEventItem(373)
		Msg2Player("NhËn lÊy ®ao ")
	else
		if (random(0,1) == 0) then
			Talk(1,"","Nhµ ta 3 ®êi ®Òu theo nghÒ lµm ®ao còng cã chóc danh tiÕng, phô th©n ta hy väng ta theo häc nghÒ nµy, sau sÏ mì mét cöa hiÖu nhá nh­ng ta l¹i kh«ng thİch. ")
		else
			Talk(1,"","TiÓu TuyÒn : nhµ ta ba ®êi ®Òu lµm ®ao còng cã chóc danh tiÕng, cha vÉn muèn ta nèi nghiÖp nh­ng ta l¹i kh«ng thİch.")
		end
	end
end

function Uworld121_get()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- °×ÃûÎ´Ñ§Ò°ÇòÈ­µÄ£¬²»ÔÊĞí½ÓÈÎÎñ
		Talk(1,"","Kh«ng ®­îc, ta kh«ng thÓ lµm viÖc nµy.")
	else
		Say("Ta cã mét thanh ®ao tinh luyÖn,hy väng c¸c h¹ cã thÓ chuyÖn ®Õn cho sø gi· thóy yªn.",2,"§· sím nghe tiÕng Hµ tiªn tö,®©y còng lµ c¬ héi gÆp mÆt/Uworld121_getjd","Xa qu¸ ta kh«ng ®i ®­îc! /Uworld121_no") --ÈÎÎñÆô¶¯
	end
end

function Uworld121_getjd()
	AddEventItem(373)
	Msg2Player("LÊy ®­îc tiÓu tuyÒn ®ao")
	AddNote("LÊy ®­îc ®ao lËp tøc tíi Thóy yªn gÆp Hµ tiªn tö.")
	SetTask(121,10) --ÉèÖÃÈÎÎñ±äÁ¿Îª10
	SetTask(5897,1) 
end

function Uworld121_no()
end
