-- 学“劫富济贫”技能的乞丐
-- By: Dan_Deng(2003-08-22)
-- 给钱数第一次100，第二次200，第三次400...依此赖推，估计8次(12800)之后还没学到的就没什么意义了，只能怨太命康。

function main(sel)
	-- UTask_world16 = GetTask(16)
	-- if (UTask_world16 == 255) then			-- 任务已完成
		-- Talk(1,"","G苝 ph秈 chuy謓 t鑤!")
	-- else
		-- i = (2 ^ UTask_world16) * 100
		-- Say("Ch骳 ngi kh醗 m筺h , ng thng ng thng ta y t猲 ╪ m祔 甶! ",2,"Cho ngi "..i.." ng﹏ lng./W53_pay"," ngon l祄 li, nh蕋 nh kh玭g cho/W53_no")
	-- end
	Say("B� t竧 ph� h�, ng礽 c� th� b� th� cho ta 1 b鱝 c琺 頲 kh玭g!")
end;

-- function W53_pay()
	-- UTask_world16 = GetTask(16)
	-- i = (2 ^ UTask_world16) * 100
	-- if (GetCash() >= i) then
		-- Pay(i)
		-- if (random(0,99) < 20) then			-- 20%机⑹学到“劫富济贫”技能
			-- Talk(3,"W53_prise"," t� h秓 t﹎ c馻 ngi, mu鑞 h鋍 m閠 輙 chuy謓 a tr� ch琲 sao? ","Chuy謓 a, tr� ch琲? ","ng. ")
		-- else
			-- SetTask(16,UTask_world16 + 1)
		-- end
	-- else
		-- Talk(1,"","B﹜ gi� ta kh玭g c� ti襫 l� ")
	-- end
-- end;

-- function W53_no()
	-- Talk(1,"","Ngi kh玭g c� t﹎ �, B� T竧 s� kh玭g ph� h�.")
-- end;

-- function W53_prise()
	-- AddNote("B� th� t猲 kh蕋 c竔, h鋍 頲 k� n╪g cp c馻 ngi gi祏 gi髉 ngi ngh蘯 kh�.")
	-- Msg2Player("b� th� t猲 kh蕋 c竔 , h鋍 頲 k� n╪g cp c馻 ngi gi祏 gi髉 ngi ngh蘯 kh�.")
	-- if (HaveMagic(400) == -1) then		-- 必须没有技能的才给技能
		-- AddMagic(400,1)
	-- end
	-- SetTask(16,255)
-- end;
