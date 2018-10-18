--description: ÖĞÔ­ÄÏÇø ÏåÑô¸® Ò©µêÀÏ°å¶Ô»° Îäµ±ÅÉ³öÊ¦ÈÎÎñ
--author: yuanlan	
--date: 2003/5/17
-- Update: Dan_Deng(2003-08-17)

-- Á¶ÖÆ»ìÔªÁé¢¶
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main(sel)
	UTask_wd = GetTask(5)
	UTask_wd60sub = GetByte(GetTask(17),1)
	if (UTask_wd == 60*256+20) then
		if (UTask_wd60sub == 2) then 
			Talk(2, "", "B©y giê chiÕn tr­êng dŞch t×nh lan trµn, xin hái cã biÖn ph¸p g×? ", "Muèn trŞ dŞch bÖnh cÇn 5 lo¹i thuèc <color=Red> hîp hoan ? huyÒn tham ? ®­¬ng quy ? phßng kû ? chu sa <color>. §i <color=Red>Phôc Ng­u S¬n §éng<color> t×m!")
			SetTask(17, SetByte(GetTask(17),1,5))
			AddNote("Chñ tiÖm thuèc (201,202) kªu ®i Phôc Ng­u S¬n §éng t×m 5 lo¹i thuèc.")
		elseif (UTask_wd60sub == 5) then
			if ( HaveItem(107) == 1 and HaveItem(134) == 1 and HaveItem(135) == 1 and HaveItem(136) == 1 and HaveItem(137) == 1) then
				Talk(2, "", "§· t×m ®­îc 5 lo¹i thuèc, mêi ng­¬i luyÖn chÕ thuèc cho binh lİnh ë chiÕn tr­êng dïng !!", "Quèc gia gÆp n¹n, thÊt phu h÷u tr¸ch. Yªn t©m, ta nhÊt ®Şnh luyÖn chÕ, kŞp thêi ®­a ®Õn!")
				DelItem(107)
				DelItem(134)
				DelItem(135)
				DelItem(136)
				DelItem(137)
				SetTask(17, SetByte(GetTask(17),1,8))
				AddNote("T×m ®ñ 5 lo¹i thuèc, giao cho Chñ tiÖm thuèc.")
				Msg2Player("T×m ®ñ 5 lo¹i thuèc, giao cho Chñ tiÖm thuèc.")
			else
				Say("Muèn trŞ dŞch bÖnh cÇn 5 lo¹i thuèc <color=Red>hîp hoan ? huyÒn tham ? ®­¬ng quy ? phßng kû ? chu sa <color>. ThiÕu mét thø còng kh«ng ®­îc, n¨m lo¹i d­îc liÖu nµy sinh tr­ëng ë<color=Red> Phôc Ng­u S¬n §éng<color>",
					2,
					"Giao dŞch/yes",
					"Kh«ng giao dŞch/no")
			end
		else
			Say("C¸c lo¹i thuèc trŞ th­¬ng bæn tiÖm ®Òu cã, ng­¬i muèn mua thuèc g× ?",
				2,
				"Giao dŞch/yes",
				-- "Ta muèn ®iÒu chÕ hçn nguyªn linh /refine",
				"Kh«ng giao dŞch/no")
		end
	else
		Say("C¸c lo¹i thuèc trŞ th­¬ng bæn tiÖm ®Òu cã, ng­¬i muèn mua thuèc g× ?",
			2,
			"Giao dŞch/yes",
			-- "Ta muèn ®iÒu chÕ hçn nguyªn linh /refine",
			"Kh«ng giao dŞch/no")
	end
end

function yes()
	Sale(12)  			--µ¯³ö½»Ò×¿ò
end

function no()
end
