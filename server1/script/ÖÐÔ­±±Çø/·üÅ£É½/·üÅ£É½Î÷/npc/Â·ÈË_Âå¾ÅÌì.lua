-- 中原北区 伏牛山 伏牛山西 路人_洛九天.lua　（拳倾天下任务(野球拳任务)）
-- By: Dan_Deng(2004-05-24)

Include("\\script\\global\\repute_head.lua")

function main(sel)
	-- Uworld75 = GetTask(75)
	-- U75_sub1 = GetTask(52)
	-- U75_sub2 = GetTask(53)
	-- U75_sub3 = GetTask(54)
	-- U75_sub4 = GetTask(55)
	-- U75_sub5 = GetTask(56)
	-- if (Uworld75 == 10) and (U75_sub1 == 20) and (U75_sub2 == 20) and (U75_sub3 == 20) and (U75_sub4 == 20) and (U75_sub5 == 20) and (HaveItem(384) == 1) then			-- 任务完成
		-- DelItem(384)
		-- Talk(2,"U75_prise","好小子，我果然没有看错人，来这里，学快点."," 武学一道，天外有天。你要不断练习，这里有个试工夫的碑，只要一拳就能打烂，那时你的拳就成为天下神仙级别了. ")
	-- elseif (Uworld75 == 10) and (HaveItem(384) == 0) then			-- 任务中，信丢了
		-- AddEventItem(384)
		-- Msg2Player("又收到洛九天的介绍信了. ")
		-- Talk(1,"","老是这样丢，怎么可以做大事?算了，再给你有个机会，我再写一封信给你，记得不要弄丢了")
	-- elseif (Uworld75 == 10) then
		-- Talk(1,""," 首先你要超过七天五个师弟，我才能教你!")
	-- elseif (Uworld75 == 255) then
		-- Talk(1,""," 野球拳要每天练习才能练成，你需要有忍耐.")
	-- else
		-- Talk(1,""," 拳法天，掌门地，指法心。拳法....很难记得 ")
	-- end
end;

function U75_get()
	Say(" 该拳法不能喝其他内功一起练习，如果你想加入其他门派，就不能学了。你想好了吗?",2,"我想仔细了，请给我学野球拳. /U75_get_yes","让我想想!/no")
end

function U75_get_yes()
	Talk(5,"U75_go","因为想学野球拳，不想加入其他门派."," 哈哈，真是天赐奇才，我看你筋骨很强壮，江湖上很少。但是要麻烦其他兄弟才能教你.","多谢师父? ","这里有一封信，你带去成都，大理，凤翔，汴京找方适，花农，蔡大叔，傅南冰和张俊。这五个人都同意你 练习技能. ","好的，师伯")
end

function U75_go()
	Talk(1,""," 路很危险，你需要准备好。从古到今，做大事业的人，每人不经过苦难")
	AddEventItem(384)				-- 洛九天介绍信
	SetTask(75,10)
	SetTask(52,0)					-- 子变量初始化
	SetTask(53,0)
	SetTask(54,0)
	SetTask(55,0)
	SetTask(56,0)
	AddNote("接拳倾天下任务：拿洛九天的介绍信去成都找方适，大理找花农，凤翔找蔡大叔，汴京找傅南冰，临安找张俊，求学野球拳. ")
	Msg2Player("接拳倾天下任务：拿洛九天的介绍信去成都找方适，大理找花农，凤翔找蔡大叔，汴京找傅南冰，临安找张俊，求学野球拳. ")
end

function U75_prise()
	Talk(1,"","弟子接受指教.")
	DelItem(384)
	SetTask(75,255)
	AddRepute(30)
	if (HaveMagic(395) == -1) then		-- 必须没有技能的才给技能
		AddMagic(395)
	end
	AddNote("拳倾天下任务：任务完成，学到野球拳技能，你的名望增加30点. ")
	Msg2Player("拳倾天下任务：任务完成，学到野球拳技能，你的名望增加30点. ")
end

function no()
end
