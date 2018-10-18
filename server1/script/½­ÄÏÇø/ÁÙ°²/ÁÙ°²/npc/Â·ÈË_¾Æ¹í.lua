-- ÁÙ°²¡¡¢·ÈË¡¡¾Æ¹í
-- by£ºDan_Deng(2003-09-16)
Include("\\script\\task\\newtask\\branch\\xiepai\\branch_xiepaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
function main()
	i = random(0,6)
	Uworld1059 = nt_getTask(1059)
	if ( Uworld1059 ~= 0 ) then
		branch_zuihan()
	else
		if (i == 0) then
			Talk(1,"","Töu quû : uèng r­îu mµ kh«ng say th× ai uèng lµm g×.")
		elseif (i == 1) then
			Talk(1,"","Töu quü : uèng r­îu còng ph¶i biÕt vÒ r­îu kh«ng ph¶i c¸i g× ta còng uèng.")
		elseif (i == 2) then
			Talk(1,"","T÷u quû : r­îu ngon th× n­íc ph¶i trong, mïi ph¶i th¬m, uèng vµo kh«ng cay cæ, ng¾m vµo ngùc, uèng nhiÒu kh«ng ®au ®Çu.")
		elseif (i == 3) then
			Talk(1,"","T÷u quü : trªn thÕ gian cã mu«n v¹n lo¹i r­îu kh«ng lo¹i nµo gièng nhau, cã thÓ th­ëng thøc r­îu ngon th× sèng còng nh­ tiªn.")
		elseif (i == 4) then
			Talk(1,"","T÷u quü : mäi ng­êi ®Òu nãi ta lµ con s©u r­îu, nhµ ng­¬i còng vËy µ !")
		elseif (i == 5) then
			Talk(1,"","T÷u quû : cuéc ®êi ta mong ­íc lín nhÊt lµ ®­îc uèng thiªn h¹ ®Ö nhÊt töu, dï cã chÕt lµm con ma còng kh«ng tiÕc.")
		else
			Talk(1,"","T÷u quû : uèng r­îu ph¶i biÕt phÈm gi¸ cña nã , nãi víi ng­¬i còng kh«ng hiÓu hÕt ®­îc.")
		end
	end
end;
