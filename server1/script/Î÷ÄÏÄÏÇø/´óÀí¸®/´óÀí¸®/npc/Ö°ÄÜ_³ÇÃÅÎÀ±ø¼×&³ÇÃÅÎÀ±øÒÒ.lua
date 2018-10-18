-- ´óµí¡¡Ö°ÄÜ¡¡³Ç·ÅÎµ±ø¼×&³Ç·ÅÎµ±øÒÒ
-- by£ºDan_Deng(2003-09-16)
-- Update: Dan_Deng(2004-05-27) Ğ¡¶ùÊ§×ïÈÎÎñ

Include("\\script\\global\\repute_head.lua")
Include("\\script\\global\\map_helper.lua")
npc_name = "<#>Thµnh m«n vÖ binh"

function default_talk()
--	UTask_world42 = GetTask(42)	-- ÉèÖ·ÈÎÎñ±ä¸¿
--	if ((UTask_world42 == 0) and (GetLevel() >= 80) and (GetReputeLevel(GetRepute()) >= 7)) then		-- ÈÎÎñÆô¶¯£¬ÉùİûµÈ¼¶ºİÉùİûÖµµÄ¹ØÏµ²»ÊÇºÜ·÷È·£¬ÒªÎÊ·÷°×
--		Talk(6,"U42_get","³Ç·ÅÎµ±ø¼×£ºÌıËµ³Çµï×î½üµÏÓĞĞ¡º¢ÎŞ¹ÊÊ§×ï£¿","³Ç·ÅÎµ±øÒÒ£ºÊÇ°¡¡£ÎÒÔ­µ´µÄæ°İ·Ò¶»¨£¬Ëı¶şĞ¡×ÓÒ²²»¼û¸Ë£¬×î½ü³£µ´·³ÎÒ°ïËıÕÒ¶ù×Ó¡£","İæ¼Ò£º¸½Î»£¬¾¿¾¹Ôõ·´»ØÊ¢£¿","³Ç·ÅÎµ±ø¼×£ººÇºÇ£¬ÕâÎ»´óÏµÒÇ±íÌ·Ì·£¬Ó¢·÷ÉñÎä£¬¿´µ´ÊÇÏë¹Ü¹ÜÕâµµ×ÓÊ¢¿©£¿","İæ¼Ò£º¿İÆø£¬¢·¼û²»Æ½°Îµ¶ÏµÖúÊÇÎÒ±²±¾·Ö¡£","³Ç·ÅÎµ±øÒÒ£º°¥Ñ½£¬½ñİíµÄ¾ÆÇ®º·Ïó·»´ø¹»°¡£¡")
--	else
		Talk(4,"","H«m nay ta thÊy ®­îc 9 mü nh©n.","TiÓu tö ch¸n sèng ah!","Nhµn h¹ tùu h÷u nhµn h¹, kh¸n gi¸ kh¸n na, ®¹i liÔu d· h·o.","Kh«ng sai! ThËt tuyÖt ®Ñp! ")
--	end;
end;

function U42_get()
	Say("§óng råi, lµ 5 v¹n l­îng.",2,"Hai vŞ ®¹i hiÖp thËt thó vŞ/yes1","G¹t ®­îc ng­êi kh¸c, lµm sao g¹t ®­îc ta!/no")
end;

function yes1()
	if (GetCash()>=50000) then 
		Pay(50000)
		Talk(1,"","C¸c h¹ thËt hµo phãng. Nhanh ®i D­îc v­¬ng cèc hái Qu¶i nh©n ch©n nh©n. H¾n biÕt bİ mËt nµy.")
		SetTask(42, 10)
		AddNote("NhËn nhiÖm vô: §i D­îc V­¬ng Cèc t×m qu¶i ch©n ®¹o nh©n hái th¨m tin tøc ®øa trÎ. ")
		Msg2Player("NhËn nhiÖm vô: §i D­îc V­¬ng Cèc t×m qu¶i ch©n ®¹o nh©n hái th¨m tin tøc ®øa trÎ.")
	else
		Talk(1,"","§i ®i, kh«ng cã tiÒn th× ®ßi lµm c¸i g×, trë vÒ lµm n«ng ®i!")
	end
end;

function no()
	Talk(1,"","§i ®i, kh«ng cã tiÒn th× ®ßi lµm c¸i g×, trë vÒ lµm n«ng ®i!")
end;
