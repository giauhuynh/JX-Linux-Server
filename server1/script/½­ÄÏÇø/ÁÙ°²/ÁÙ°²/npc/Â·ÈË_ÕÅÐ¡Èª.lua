--江南区\临安\临安\npc\⒎人_张小泉.lua 
--by xiaoyang (2004\4\20)

Include("\\script\\global\\repute_head.lua")

function main()
	Uworld121 = GetTask(121)
	Uworld38 = GetByte(GetTask(38),1)
	if ((Uworld121 < 10) and (GetLevel() >= 90) and (GetReputeLevel(GetRepute()) >= 5) and (Uworld38 == 127) and (GetFaction() ~= "tianwang")) or 
		(GetCamp() == 4 and GetLevel() >= 90 and GetTask(5897) == 0) then
		Talk(3,"Uworld121_get","C竎 v� h穙 b籲g h鱱","T筰 h�  s韒 ngng m� t礽 l祄 產o c馻 Trng gia. th藅 danh b蕋 h� truy襫","Kh玭g bi誸 c竎 h� c� th� gi髉 ta m閠 chuy謓 kh玭g?","N鉯 甶!")
	elseif (Uworld121 == 10) and (HaveItem(373) == 0) then
		Talk(1,"","Ta c騨g b閕 ph鬰 c竎 h�, c﹜ 產o c遪 ch璦 c莔  v閕 v� 甶.")
		AddEventItem(373)
		Msg2Player("Nh薾 l蕐 產o ")
	else
		if (random(0,1) == 0) then
			Talk(1,"","Nh� ta 3 i u theo ngh� l祄 產o c騨g c� ch骳 danh ti課g, ph� th﹏ ta hy v鋘g ta theo h鋍 ngh� n祔, sau s� m� m閠 c鯽 hi謚 nh� nh璶g ta l筰 kh玭g th輈h. ")
		else
			Talk(1,"","Ti觰 Tuy襫 : nh� ta ba i u l祄 產o c騨g c� ch骳 danh ti課g, cha v蒼 mu鑞 ta n鑙 nghi謕 nh璶g ta l筰 kh玭g th輈h.")
		end
	end
end

function Uworld121_get()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- 白名未学野球拳的，不允许接任务
		Talk(1,"","Kh玭g 頲, ta kh玭g th� l祄 vi謈 n祔.")
	else
		Say("Ta c� m閠 thanh 產o tinh luy謓,hy v鋘g c竎 h� c� th� chuy謓 n cho s� gi� th髖 y猲.",2,"Х s韒 nghe ti課g H� ti猲 t�,y c騨g l� c� h閕 g苝 m苩/Uworld121_getjd","Xa qu� ta kh玭g 甶 頲! /Uworld121_no") --任务启动
	end
end

function Uworld121_getjd()
	AddEventItem(373)
	Msg2Player("L蕐 頲 ti觰 tuy襫 產o")
	AddNote("L蕐 頲 產o l藀 t鴆 t韎 Th髖 y猲 g苝 H� ti猲 t�.")
	SetTask(121,10) --设置任务变量为10
	SetTask(5897,1) 
end

function Uworld121_no()
end
