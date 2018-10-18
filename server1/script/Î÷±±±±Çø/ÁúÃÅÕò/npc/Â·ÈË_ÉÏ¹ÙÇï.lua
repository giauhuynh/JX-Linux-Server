--龙门镇 ⒎人 上官秋 孝手任务：介绍工作
-- By: Dan_Deng(2003-09-04)

Include("\\script\\global\\itemhead.lua")

function main(sel)
	UTask_world25 = GetTask(25)
	if (UTask_world25 == 0) then		-- 任务启动
		Talk(2,"W25_get","в tr竛h cu閏 lo筺 chi課 n祔, t筰 h� t� Trung Nguy猲 n y! Nh璶g kh玭g bi誸 b﹜ gi� n猲 甶 v� hng n祇!","Ngi c� th� t譵 m閠 c玭g vi謈, sau  t� t� ngh� n chuy謓 n祔!")
	elseif (UTask_world25 == 6) then
		Talk(1,"W25_prise","B� ch� � L� qu竛  ng � cho ngi n gi髉 vi謈 � !")
	else				-- 非任务对话
		Talk(1,"","莥! Chi課 tranh � Trung Nguy猲 n祔 th藅 l� kh鑓 li謙! Ta b� b総 tham gia cu閏 chi課 n祔  2 n╩! Th藅 s� kh玭g ch辵 n鎖 n鱝 n猲  o t萿! Hy v鋘g l� c� th� s鑞g y猲 鎛 � tr� tr蕁 nh� b� n祔 n su鑤 i.")
	end
end;

function W25_get()
	Say("T筰 h� ch璦 bi誸 頲 g� v� v飊g t n祔, c騨g ch璦 bi誸 n琲 u s� ch鴄 m譶h!",2,"Gi髉 h緉 ngh� ra bi謓 ph竝! /W25_get_yes","Kh輈h l� tinh th莕 h緉! /W25_get_no")
end

function W25_get_yes()
	Talk(1,"","в ta h醝 gi髉 ngi, xem c� vi謈 g� th輈h h頿 kh玭g!")
	SetTask(25,3)
	AddNote("Nh薾 nhi謒 v�: Gi韎 thi謚 c玭g vi謈 cho Thng Quan Thu.")
	Msg2Player("Nh薾 nhi謒 v�: Gi韎 thi謚 c玭g vi謈 cho Thng Quan Thu.")
end

function W25_get_no()
	Talk(1,"","V藋 th� ta kh玭g gi髉 頲 g� cho ngi r錳! Nh璶g m� ngi c� tin tng r籲g tr阨 kh玭g tuy謙 阯g c馻 ngi u! H穣 tr蕁 t躰h l猲! R錳 s� c� c竎h th玦!")
end

function W25_prise()
	Talk(1,"","T筰 h� th藅 kh玭g bi誸 l祄 sao  th� hi謓 l遪g c秏 k輈h c馻 m譶h! Зy l� v藅 ph遪g th﹏ tr猲 阯g o t萿, hy v鋘g s� h鱱 d鬾g v韎 ngi.")
	SetTask(25,10)
	AddRepute(3)
	AddNote("Quay tr� l筰 b竜 tin vui cho Thng Quan Thu, ho祅 th祅h nhi謒 v�.")
	Msg2Player("Quay tr� l筰 b竜 tin vui cho Thng Quan Thu, ho祅 th祅h nhi謒 v�.")
	i = random(0,8)
	p1,p2,p3,p4,p5,p6 = RndItemProp(6,10)
	if(i <= 5) then
		AddItem(0, 0, i, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6)
	else
		i = i - 6
		AddItem(0, 1, i, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6)
	end
	Msg2Player("Nh薾 頲 m閠 m鉵 binh kh�")
	Msg2Player("Danh v鋘g c馻 b筺 t╪g th猰 3 甶觤.")
end
