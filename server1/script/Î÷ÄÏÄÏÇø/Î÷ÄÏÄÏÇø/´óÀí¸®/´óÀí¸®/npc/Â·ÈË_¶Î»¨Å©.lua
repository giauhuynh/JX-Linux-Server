-- ´óµí³Ç ¢·ÈËNPC ¶Î»¨Å©£¨´äÑÌ·Å30¼¶ÈÎÎñ£©
-- by£ºDan_Deng(2003-07-26)

function main()
	UTask_cy = GetTask(6)
	if (UTask_cy == 30*256+10) then		--30¼¶ÈÎÎñ½øĞĞÖĞ£¨¾ÈËïÅ®Æô¶¯£©
		Talk(6,"","§oµn ®¹i gia, nghe nãi ng­¬i cã nhiÒu loµi hoa ®éc ph¶i kh«ng, ta muèn lµm phiÒn ng­¬i truyÒn cho ta İt bİ quyÕt.","« « .... Ng· kh¶ liªn ®İch hµi chØ ....","§¹i gia, ng­¬i thÊy thø nµy nh­ thÕ nµo?","Nµng bŞ thæ phØ §iÓm Th­¬ng s¬n b¾t ®i, b©y giê kh«ng hiÓu sinh tö nh­ thÕ nµo .....","§oµn ®¹i gia, kh«ng cÇn lo l¾ng, ta sÏ gióp ng­¬i ®i cøu nµng.","§¹i hiÖp, ng­¬i thËt lµ mét ng­êi tèt, chØ cÇn ng­¬i gióp ta cøu liÔu ng·, chuyÖn g× ta còng ®¸p øng! ")
		SetTask(6,30*256+20)
		AddNote("§Õn §iÓm Th­¬ng S¬n, t×m thæ phØ cøu gióp §oµn gia.")
		Msg2Player("§Õn §iÓm Th­¬ng S¬n, t×m thæ phØ cøu gióp §oµn gia.")
	elseif (UTask_cy == 30*256+30) then		--30¼¶ÈÎÎñ½øĞĞÖĞ£¨¾ÈËïÅ®İê³É£©
		Talk(5,"","C¶m t¹ ng­¬i, ®¹i ©n ®¹i nghÜa cña ng­¬i ta sÏ kh«ng bao giê quªn.","§oµn ®¹i gia, ng­¬i biÕt Vò y nghª th­êng sao","TiÓu c« n­¬ng, coi nh­ ng­¬i hái ®óng ng­êi, lo¹i vò y nghª th­êng lµ bİ mËt chØ cã ta biÕt, cho tíi b©y giê kh«ng cã truyÒn cho ng­êi ngoµi, nh­ng lµ, ng­¬i ®· gióp ta, ta sÏ truyÒn cho ng­¬i.","Vò y nghª th­êng cÇn ph¶i cã 3 lo¹i nguyªn liÖu: mét lo¹i lµ nhŞ h¶i ®İch ng©n tuyÕt ng­ , lo¹i thø hai lµ hå ®iÖp tuyÒn bµng biªn ®İch bİch th­êng ph­îng ®iÖp, lo¹i thø ba lµ v©n n«ng ®×nh ®İch hång kh©u dÉn.","§a t¹ ®¹i gia! ")
		SetTask(6,30*256+40)
		AddNote("Vò y nghª th­êng cÇn ph¶i cã 3 lo¹i nguyªn liÖu: nhŞ h¶i ®İch ng©n tuyÕt ng­ , hå ®iÖp tuyÒn bµng biªn ®İch bİch th­êng ph­îng ®iÖp , v©n n«ng ®×nh ®İch hång kh©u dÉn.")
		Msg2Player("Vò y nghª th­êng cÇn ph¶i cã 3 lo¹i nguyªn liÖu: nhŞ h¶i ®İch ng©n tuyÕt ng­ , hå ®iÖp tuyÒn bµng biªn ®İch bİch th­êng ph­îng ®iÖp , v©n n«ng ®×nh ®İch hång kh©u dÉn.")
	elseif (UTask_cy == 30*256+20) then
		Talk(1,"","N÷ hiÖp, chØ cÇn ng­¬i gióp ta cøu ng­êi, chuyÖn g× ta còng ®¸p øng ng­¬i.")
	else
		Talk(1,"","Trång lo¹i hoa nµy võa lµ mét m«n häc võa lµ mét m«n nghÖ thuËt.")
	end
end
