--description: 孝手村_⒊爷
--author: wangzg	
--date: 2003/7/21
---70	UTask_world42
--update 2003/7/24 yuanlan
-- Update: Dan_Deng(2003-08-07)
-- Update: Dan_Deng(2003-09-09) 修改装备属性生成方式

Include("\\script\\global\\itemhead.lua")

function main()
	UTask_world42=GetTask(70)
	if (UTask_world42==0) then
		Say("S鑞g tr猲 i, kh玭g c� s竎h hay  xem th� th藅 l� bu錸 ch竛! L穙 C竧 Gia � ph輆 nam tr蕁 c� m閠 quy觧 s竎h hay, nh璶g ta kh玭g th� m苩 d祔 m祔 d苖 n mn h緉 頲.", 2, "T玦 甶 mn gi髉 玭g/yes", "Mu鑞 xem s竎h c騨g ph秈 甶 mn /no")
	elseif (UTask_world42==2) then
		Talk(1,"","V藋 th� c秏 t� ngi trc, c竧 l穙 u 產ng � nam tr蕁 n祔.")
	elseif (UTask_world42==4) then
		Talk(2, "step2", "C竧 Gia mu鑞 d飊g 'Di Ki猲 Ch�' i 'K� Th莕 L鬰'.","L穙 h� ly , mu鑞 l祄 kh� ta y! Л頲 r錳! Phi襫 ngi mang a cho h緉")
	elseif ((UTask_world42 == 6) and (HaveItem(189) == 0)) then		-- 书丢了
		Talk(1,"","B筺 tr�! D竚 li襲 nh� th�! T筰 sao l筰 n衜 s竎h ch� ta r錳 b� ch箉.")
		AddEventItem(189)
		Msg2Player("Nh薾 頲 Di Ki課 Ch�")
	elseif ((UTask_world42==8) and  (HaveItem(188) == 1)) then
		Talk(3, "WTask70_prise", "L� Gia y l� s竎h c馻 ng礽 c莕.", "Th� th� t鑤 qu�.","Зy c� s� Ng璾 b� y猽 i, ta kh玭g d飊g t苙g cho ngi.")
	else
		Talk(1,"","B筺 tr� s鑞g tr猲 i c莕 ph秈 c nhi襲 s竎h kh玭g n猲 su鑤 ng祔 m骯 產o m骯 ki誱.")
	end
end;

function yes()
	Talk(1,"","V藋 th� c秏 t� ngi trc! C竧 L穙 u 產ng � nam tr蕁 n祔.")
	SetTask(70,2)
	AddNote("Nh薾 nhi謒 v�: Gi髉 L� Gia n nam tr蕁 g苝 C竧 Gia mn s竎h. ")
	Msg2Player("Nh薾 nhi謒 v�: Gi髉 L� Gia n nam tr蕁 g苝 C竧 Gia mn s竎h. ")
end

function no()
end

function step2()
	AddEventItem(189)
	Msg2Player("Nh薾 頲 Di Ki猲 Ch�")
	SetTask(70,6)
	AddNote("T� L� Gia l蕐 頲 Di Ki猲 Ch�")
end

function WTask70_prise()
	DelItem(188)
	p1,p2,p3,p4,p5,p6 = RndItemProp(6,10)
	AddItem(0,6,0,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6)
	SetTask(70,10)
	AddRepute(5)		-- 加声望5点
	AddNote("Mang K� Th莕 L鬰 a cho L� Gia, ho祅 th祅h nhi謒 v�. ")
	Msg2Player("Nh薾 頲 m閠 c竔 產i l璶g")
	Msg2Player("Danh v鋘g c馻 b筺 t╪g th猰 5 甶觤.")
end
