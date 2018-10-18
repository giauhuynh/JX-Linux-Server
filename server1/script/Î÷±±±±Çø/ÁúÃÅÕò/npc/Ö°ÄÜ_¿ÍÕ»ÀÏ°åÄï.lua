--龙门镇 ⒎人 客栈老板娘 孝手任务：介绍工作
-- By: Dan_Deng(2003-09-04)

Include("\\script\\global\\itemhead.lua")

function main(sel)
	UTask_world25 = GetTask(25)
	UTask_world27 = GetTask(27)
	if (UTask_world25 == 3) then		-- 任务“介绍工作”进行中
		Talk(5,"W25_step","B� ch� c� c莕 th猰 ngi gi髉 vi謈 kh玭g?","Gi髉 vi謈? Hi謓 c遪 產ng thi誹 m閠 ch﹏ ti觰 nh�  d鋘 b祅.","C� ngi mu鑞 d� tuy觧, v藋 b� nh薾 kh玭g?","в ta c遪 xem kh� n╪g c馻 h緉 th� n祇!","T� Trung Nguy猲 n y, t譵 m閠 b鱝 c琺 th藅 kh玭g d� ch髏 n祇")
	elseif (UTask_world27 == 0) and (GetLevel() >= 5) then
		Say(" t譵 cho ta 3 mi課g th辴 heo r鮪g, v� y cho ta i kh竎h!",2,"Bi誸 r錳/W27_get_yes","Phi襫 ch誸 頲!  t譵 ngi kh竎 甶/W27_get_no")
	elseif (UTask_world27 == 5) then
		i = GetItemCount(228)
		if (i >= 3) then
			for j = 1,i do DelItem(228) end
			Talk(1,"","! чng t竎 c鵦 k� nhanh! N祔! C竔 m� n祔 ta kh玭g d飊g n n鱝! T苙g cho ngi !")
			SetTask(27,10)
			AddRepute(9)
			AddNote("Mang th辴 heo v� giao cho b� ch�, ho祅 th祅h nhi謒 v�.")
			Msg2Player("Mang th辴 heo v� giao cho b� ch�, ho祅 th祅h nhi謒 v�.")
			p1,p2,p3,p4,p5,p6 = RndItemProp(6,15)
			if(GetSex() == 0) then
				AddItem(0, 7, 6, 2, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6)
				Msg2Player("B筺 nh薾 頲 m閠 c竔 m�")
			else
				AddItem(0, 7, 10, 2, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6)
				Msg2Player("B筺 nh薾 頲 m閠 c竔 m�")
			end
			Msg2Player("Danh v鋘g c馻 b筺 t╪g th猰 9 甶觤")
		else
			Talk(1,"","M� l鏸 'LMT001' vui l遪g ch魀 秐h v� g鰅 l筰 cho admin  fix l鏸!")
		end
	elseif (UTask_world25 == 6) then
		Talk(1,"","Oa oa! Kh竎h quan kh玭g tr� � L� qu竛 n祔 �? 100 d苖 xung quanh Long M玭 Tr蕁 n祔 kh玭g ai h琻 頲 L� qu竛 c馻 ta! Kh玭g tin ngi s� h鑙 h薾 !")
	else				-- 非任务对话
		Talk(1,"","Oa oa! Kh竎h quan kh玭g tr� � L� qu竛 n祔 �? 100 d苖 xung quanh Long M玭 Tr蕁 n祔 kh玭g ai h琻 頲 L� qu竛 c馻 ta! Kh玭g tin ngi s� h鑙 h薾 !")
	end
end;

function W25_step()
	Talk(1,"","Л頲 r錳! V藋 h穣 mau g鋓 y n y gi髉 ta!")
	SetTask(25,6)
	AddNote("B� ch�  ng � cho Thng Quan Thu n y gi髉 vi謈! H穣 mang tin vui n祔 n cho h緉.")
	Msg2Player("B� ch�  ng � cho Thng Quan Thu n y gi髉 vi謈! H穣 mang tin vui n祔 n cho h緉. ")
end

function W27_get_yes()
	SetTask(27,5)
	AddNote("Nh薾 nhi謒 v�: V祇 r鮪g l蕐 3 mi課g th辴 heo r鮪g v� cho b� ch� qu竛.")
	Msg2Player("Nh薾 nhi謒 v�: V祇 r鮪g l蕐 3 mi課g th辴 heo r鮪g v� cho b� ch� qu竛.")
end

function W27_get_no()
end
