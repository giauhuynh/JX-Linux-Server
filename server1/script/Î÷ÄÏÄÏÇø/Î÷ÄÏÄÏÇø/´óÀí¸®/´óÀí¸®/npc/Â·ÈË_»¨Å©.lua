-- 大淀　⒎人　花农
-- by：Dan_Deng(2003-09-16)
-- Update: Dan_Deng(2004-05-24) 拳倾天息任务

function main(sel)
	Uworld75 = GetTask(75)
	U75_sub2 = GetTask(53)
	if (Uworld75 == 10) and (U75_sub2 < 10) then		-- 任务中，接取子任务
		if (HaveItem(384) == 1) then
			SetTask(53,10)
			AddNote("Nh薾 nhi謒 v�: 甶 Dc Vng C鑓 gi髉 Hoa N玭g h竔 3 a c萴 m鬰 t骳. ")
			Msg2Player("Nh薾 nhi謒 v�: 甶 Dc Vng C鑓 gi髉 Hoa N玭g h竔 3 a c萴 m鬰 t骳.")
			Talk(1,"","L筩 s� huynh l筰 t韎 kh秓 nghi謒? Th藅 t鑤 qu�, Чi L� b鑞 m颽 hoa, c遪 thi誹 dc vng c鑓 c鵦 ph萴 t� m鬰 t骳, ngi 甶 gi髉 ta 甶 h竔 3 a r錳 quay l筰 y.")
		else
		 	Talk(1,"","M閠 phong th� c騨g kh玭g c�. V� c�, l祄 sao  ta tin ngi 頲 y??")
		end
	elseif (Uworld75 == 10) and (U75_sub2 == 10) then		-- 子任务蓐成判断
		if (GetItemCount(112) >= 3) then
			DelItem(112)
			DelItem(112)
			DelItem(112)
			SetTask(53,20)
			AddNote("Nhi謒 v�: Ho祅 th祅h h竔 c萴 m鬰 t骳.")
			Msg2Player("Nhi謒 v�: Ho祅 th祅h h竔 c萴 m鬰 t骳.")
			Talk(1,"","Th藅 l� t鑤 qu�, ng l� nh蕋 ph萴, ta s� ph竔 ngi 甶 th玭g b竜 l筩 s� huynh, ta ng �.")
		else
			Talk(1,"","C遪 ch璦 c� t譵 頲 �?")
		end
	else
		i = random(0,99)
		if (i < 25) then
			Talk(1,"","g l穙 h� 祅 n祔 c� i y猽 hoa nh� th祅h c竔 b謓h, hoa tr� m� 玭g 蕐 ch� b竛 cho ngi c� duy猲 v韎 玭g 蕐, c遪 ngi kh竎 th� d� cho c� 甧m n骾 v祅g n骾 b筩 n 玭g 蕐 c騨g kh玭g b竛.")
		elseif (i < 50) then
			Talk(1,"","Hoa tr� p nh蕋 to祅 Чi L� l� do 玭g l穙 h� 祅 tr錸g, 玭g 蕐 s鑞g � m閠 ng玦 nh� nh� b猲 b� Nh� H秈. Hoa tr� c馻 l穙 b竛 h� 祅 m鏸 n╩ n m颽 b閕 hoa lu玭 頲 ch鋘 l� hoa p nh蕋.")
		elseif (i < 75) then
			Talk(1,"","Nh� nh� � Чi L� u tr錸g hoa tr�, m鏸 n╩ u t� ch鴆 tri觧 l穖 h閕 hoa.")
		else
			Talk(1,"","V﹏ Nam tr� hoa nh蕋 thi猲 h�, Чi L� tr� hoa nh蕋 V﹏ Nam, hoa tr� trong m総 ngi Чi L� ch髇g ta l� hoa p nh蕋 thi猲 h�, ngay c� M蓇 Кn c騨g kh玭g s竛h b籲g.")
		end
	end
end;
