-- 江南区 罗宵山 路人_雷部狼主.lua （消灭采花贼任务）
-- By: Dan_Deng(2004-05-28)

function main(sel)
	Uworld43 = GetTask(43)
	if (Uworld43 == 10) then
		Talk(6,"U43_10","狼主！ 一定有人知道山上少年的事情,手上常拿扇子, 常吟诗却又做贼","蠢货!做什么","我敬你在武林中有名声。说话不要粗鲁。","不要吓唬我!我叱咤江湖是你还没有出生呢","我知道近日你常与采花贼交游，奸淫妇女！你最好说出他的下落，不然的话也要被连累","我一直都知道所有事情！又怎么样？打赢我再说！哈哈哈哈!")
	elseif (Uworld43 == 30) then						-- 打完狂狼，来拿钥匙
		Talk(4,"U43_30","真对不住了，在下还么有下去见阎王但是你的一帮手下已经掉进奈河里面了！","额! 你小子想做英雄啊? 不是谁都能当英雄的!","不要多说了！不然的话你也就下去和你的弟子们合葬了","小子，看你是有本事的人，如果我把钥匙交给你是不是可以饶我一命?")
	elseif (Uworld43 >= 40) and (Uworld43 < 100) and (HaveItem(381) == 0) then				-- 或之后的任一步骤中钥匙丢失
		AddEventItem(381)
		Msg2Player("继续得到雷匙")
		Talk(1,"","我要看看你小子可以干嘛。钥匙在这，你要是可以接我3招就交给你。")
	elseif (Uworld43 >= 40) and (Uworld43 < 255) and (HaveItem(381) == 1) then
		Talk(1,"","你已经有钥匙了，还要问我什么?")
	elseif (Uworld43 == 20) then		-- 对话完成，打狂狼未完成
		Talk(1,"","傻子!你打赢我手下才有资格和我斗")
	elseif (Uworld43 >= 255) then
		Talk(1,"","你真把少主杀了?")
	else
		Talk(1,"","不要胡言乱语！从没看过现在的样子吗?")
	end
end;

function U43_10()
	SetTask(43,20)
	Msg2Player("你已经有钥匙了，还要问我什么? ")
end

function U43_30()
	SetTask(43,40)
	AddEventItem(381)
	Msg2Player("已经拿到雷匙，返回临安交给公差大哥，计划接下来的事情")
end
