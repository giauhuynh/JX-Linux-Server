--龙门镇 ⒎人 乞丐 孝手任务：捎口信
-- By: Dan_Deng(2003-09-04)

Include("\\script\\global\\itemhead.lua")

function main(sel)
	UTask_world26 = GetTask(26)
	if (UTask_world26 == 0) and (GetLevel() >= 2) then		-- 任务启动
		if (GetSex() == 0) then
			Talk(4,"W26_get","V� i hi謕 n祔, xin gi髉 ta m閠 vi謈. ","Sao? C� chuy謓 g� v藋?","Ngi c� th� gi髉 ta chuy觧 l阨 t韎 Mi Nhi c� nng trong tr蕁 kh玭g? ","Ngi mu鑞 ta chuy觧 l阨 g�?")
		else
			Talk(4,"W26_get","V� i hi謕 n祔, xin gi髉 ta m閠 vi謈. ","Sao? C� chuy謓 g� v藋?","Ngi c� th� gi髉 ta chuy觧 l阨 t韎 Mi Nhi c� nng trong tr蕁 kh玭g? ","Ngi mu鑞 ta chuy觧 l阨 g�?")
		end
	elseif (UTask_world26 == 6) then
		Talk(1,"W26_prise","R鑤 cu閏 ngi  b秓 ta n鉯 ra � ngh躠 g� m� khi課 cho Tri謚 Mi Nhi 產u kh� tuy謙 v鋘g! Th藅 l� ng thng!")
	elseif (UTask_world26 >= 10) then
		Talk(1,"","Tr╪g s韒 ch糿g th� s竛g, n鏸 bu錸 產u tim gan! Ai n鉯 m颽 xu﹏ p, ch� th蕐 hoa r鬾g t祅. ! L璾 l筩 nh� th� n祔 th� c遪 m苩 m騣 n祇 g苝 m苩 m鋓 ngi!")
	else				-- 非任务对话
		Talk(1,"","Tr╪g s韒 ch糿g th� s竛g, n鏸 bu錸 產u tim gan! Ai n鉯 m颽 xu﹏ p, ch� th蕐 hoa r鬾g t祅. ! L璾 l筩 nh� th� n祔 th� c遪 m苩 m騣 n祇 g苝 m苩 m鋓 ngi.")
	end
end;

function W26_get()
	Say("H穣 n鉯 v韎 c� 蕐 l� Ti猽 D辌h 秐h  ch誸 r錳. C遪 n鱝 kh玭g 頲 n鉯 l� ta n鉯!",2,"Gi髉 /W26_get_yes","Kh玭g gi髉 /W26_get_no")
end

function W26_get_yes()
	Talk(1,"","Kh玭g bi誸 ngi n鉯 g� n鱝! Nh璶g ta c騨g s� 甶 m閠 chuy課!")
	SetTask(26,3)
	AddNote("Nh薾 nhi謒 v�: Gi髉 l穙 ╪ m祔 a tin cho Tri謚 Mi Nhi")
	Msg2Player("Nh薾 nhi謒 v�: Gi髉 l穙 ╪ m祔 a tin cho Tri謚 Mi Nhi")
end

function W26_get_no()
	Talk(2,"","Th藅 l� th豱h c莡 k� l筰. Ngi kh玭g n鉯 r� r祅g th� ta kh玭g gi髉 u.","V藋...ta t譵 ngi kh竎 gi髉 v藋!")
end

function W26_prise()
	Talk(1,"","...m閠 l阨 n鉯 kh� h誸! Зy c� ch髏 th祅h �! Xin h穣 nh薾 l蕐!")
	SetTask(26,10)
	AddNote("N鉯 ph秐 鴑g c馻 Tri謚 Mi Nhi cho l穙 ╪ m祔 bi誸, ho祅 th祅h nhi謒 v�.")
	Msg2Player("N鉯 ph秐 鴑g c馻 Tri謚 Mi Nhi cho l穙 ╪ m祔 bi誸, ho祅 th祅h nhi謒 v�.")
	p1,p2,p3,p4,p5,p6 = RndItemProp(6,15)
	if(GetSex() == 0) then
		AddItem(0, 8, 1, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6)
		Msg2Player("Nh薾 頲 m閠 Ng� B� H� Uy觧")
	else
		AddItem(0, 8, 0, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6)
		Msg2Player("Nh薾 頲 m閠 Ng� B� H� Uy觧. ")
	end
	AddRepute(5)
	Msg2Player("Danh v鋘g c馻 b筺 t╪g th猰 5 甶觤")
end
