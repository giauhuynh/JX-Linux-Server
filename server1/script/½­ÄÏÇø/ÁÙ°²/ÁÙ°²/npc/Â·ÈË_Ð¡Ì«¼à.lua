-- ÁÙ°² ¢·ÈËNPC Ð¡Ì«¼µ£¨Ø¤°ï50¼¶ÈÎÎñ£©
-- by£ºDan_Deng(2003-07-28)

function main()
	UTask_gb = GetTask(8)
	if (UTask_gb == 50*256+40) then				--´ø×Å50¼¶ÈÎÎñ
		Talk(2,"L50_pay","Ng­êi nµo?","Ta lµ tµo c«ng c«ng,tõ quª lªn cã mang Ýt quµ biÕt cho l·o gia, xin phiÒn ngµi vµo b¸o mét tiÕng!")
	else
		Talk(1,"","TiÓu th¸i gi¸m : Mau ®i ®i ®õng cã l·ng v·ng ë ®©y.")
	end
end;

function L50_pay()
	Say("quen biÕt g× mµ quen biÕt, nÕu ®· lµ quen biÕt sao kh«ng biÕt luËt ë ®©y.",2,"Hèi lé 3000 ng©n l­îng! /L50_pay_yes","kh«ng cho/L50_pay_no")
end;

function L50_pay_yes()
	if (GetCash() >= 3000) then
		Pay(3000)
		Talk(1,"after_pay","V©ng v©ng, ®©y lµ 3000 l­îng biÕu ngµi uèng r­îu!")
	else
		Talk(1,"","ThËt keo kiÖt ®i mau")
	end
end;

function after_pay()
	NewWorld(177, 1569, 3169)
	Msg2Player("Hèi lé 3000 l­îng cho tiÓu th¸i gi¸m h¾n cho ng­¬i vµo v­ên hoa")
	Talk(1,"","Kh«ng cßn nhiÒu thêi gian, tµu c«ng c«ng ®¨ng ngù ë v­ên hoa mau vµo t×m h¾n!")
end

function L50_pay_no()
end;
