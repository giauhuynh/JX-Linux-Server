--西南北区 成都府 ⒎人2肖婆婆对话
-- update by xiaoyang(2004\4\16) 娥芳90级任务

Include("\\script\\global\\repute_head.lua")

function main(sel)
	Uworld125 = GetTask(125)
	Uworld36 = GetByte(GetTask(36),1)
	if ((Uworld125 < 10) and (Uworld36 == 127) and (GetReputeLevel(GetRepute()) >= 5) and (GetLevel() >= 90) and (GetFaction() ~= "emei")) or 
		(GetLevel() >= 90 and GetCamp() == 4 and GetTask(5894) == 0) then
		Talk(8,"Uworld125_task","c竎 h� l璾 l筩 giang h� , c� c秏 th蕐 m謙 kh玭g?","th� gian c遪 c� r蕋 nhi襲 kh� kh╪ , m謙 m醝 c騨g n猲 ki猲 tr�","T鑤 , c� ch� kh� . ta c� m閠 nhi謒 v� , ngi d竚 l祄 kh玭g ?","nhi謒 v� g� ?","ph竔 Nga Mi s竛g l藀 c� m蕋 m閠 b� thi猲 th� kh玭g c� ch�, trc y kh玭g l﹗ , ta nh薾 頲 tin t鴆 , thi猲 th� xu蕋 hi謓 � n骾 Thanh Th祅h ph� c薾 , nh璶g kh玭g c� ai t譵 頲 . ngi c� th� 甶 m閠 chuy課 ?","ngi kh玭g s� ta t譵 頲 r錳 chi誱 l蕐 lu玭 sao ?","ha ha ha , thi猲 th� kh玭g c� ch� ch� c� ngi h鱱 duy猲 m韎 c� th� xem hi觰 . cho d� t譵 頲 , kh玭g c� c竎h n祇 m� ra c騨g l� v� d鬾g !","th� ra l� nh� v藋 .")
   elseif (Uworld125 == 15) and (HaveItem(388) == 1) then
   	Talk(10,"Uworld125_fire","nh� th� n祇"," t� l蕐 頲."," cho ta xem m閠 ch髏 , qu� nhi猲 l� thi猲 th� kh玭g c� ch�  ..","tho箃 nh譶 ta l� ngi h鱱 duy猲 ..","ngi c莔 b� t辌h , giang h� kh玭g hi觰 bao nhi猽 ngi mu鑞 !","c遪 ch璦 xong chuy謓 . c飊g ngi n鉯 , ta l� Nga Mi  t� , 萵 c� � th祅h  . chng m玭 c� b� l祄 ng tin nhi謒 v� cho ngi , nhanh 甶 l祄 甶 !","b� b� y ?","ta 甧m gi髉 ngi ng╪ c秐 o t芻 mu鑞 tr閙 b� t辌h  !","tu﹏ l謓h !")
   elseif (Uworld125 == 30) and (HaveItem(389) == 1) then
   	Talk(6,"Uworld125_change","ngi r鑤 c鬰 v蒼 ph秈 n","th� n祇?","m韎 v鮝 nh薾 頲 chim b� c﹗ a tin c馻 chng m玭 ,  cho ngi nhanh tr� v� Nga Mi ?","trong th� kh玭g c� n鉯 r� r祅g , nh璶g d鵤 theo l阨 chng m玭, chuy謓 n祔 r蕋 g蕄","ta l藀 t鴆 甶 ngay")
   elseif (Uworld125 == 10) then
   	Talk(2,"","nh� th� n祇 ? kh玭g t譵 頲 thi猲 th� � ?","kh玭g n猲 t鴆 gi薾 , ta nh蕋 nh s� t譵 頲 !")
   elseif (Uworld125 == 20) and (HaveItem(388) == 0) then
   	Talk(1,"","thi猲 th� mu鑞 giao cho chng m玭 thanh hi觰 s� th竔")
		AddEventItem(388)
		Msg2Player("畂箃 頲 thi猲 th� kh玭g c� ch�")
   elseif (Uworld125 == 30) then
   	Talk(1,"","ngi kh玭g c� Nga Mi l謓h ti詎 , ch鴑g minh nh� th� n祇 ngi  giao cho chng m玭?")
   elseif (Uworld125 >= 50) then
   	Talk (1,"","ti觰 huynh  , giang h� hi觤 竎 , c莕 b秓 tr鋘g .. ")
   else
		Talk(1,"","Ti誹 b� b� : Ti觰 H鏽 H鏽 l� m閠 t猲 h竜 s綾 , kh玭g ph秈 l� ╪ tr閙 g� tr閙 ch� , ch輓h l� khi d� n� nhi , huy猲 n竜 m鋓 ngi g� ch� kh玭g y猲. ")
	end
end

function Uworld125_task()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- 白符未学野球拳的，不允许接任务
		Talk(1,"","xem ngi g莥 y誹 nh� v藋 , ch辵 頲 sao ? ta ch糿g qua l� n鉯 gi靚 , ngi h穣 甶 luy謓 c玭g , sau  s� n鉯 . ")
	else
		Say("xong chuy謓 , ta s� tr鋘g 琻 ngi.",2," t� s� 甶 Thanh Th祅h m閠 chuy課 .. /Uworld125_yes","ta c遪 c� nh鱪g chuy謓 kh竎 , s� r籲g kh玭g th� gi髉 ngi. /Uworld125_no")
	end
end

function Uworld125_yes()
	SetTask(125,10)
	SetTask(5894,1)
	Msg2Player("按theo nh� Ti誹 b� b� n鉯 , 甶 ti謒 th祅h t譵 m� ph莕 ")
	AddNote("按theo nh� Ti誹 b� b� n鉯 , 甶 ti謒 th祅h t譵 m� ph莕 ")
end

function Uworld125_no()
end

function Uworld125_fire()
	SetTask(125,20)
	Earn(10000)
	Msg2Player("theo nh� Ti誹 b� b� n鉯 , 甶 Thanh Th祅h t譵 b� k輕 ")
	AddNote("皌heo nh� Ti誹 b� b� n鉯 , 甶 Thanh Th祅h t譵 b� k輕 ")
end

function Uworld125_change()
	SetTask(125,40)
	DelItem(389)
	Msg2Player("Ti誹 b� b� cho ngi 1 v筺 lng , ng th阨  cho ngi mang thi猲 th� a cho Nga Mi .")
	AddNote("Ti誹 b� b� cho ngi 1 v筺 lng , ng th阨  cho ngi mang thi猲 th� a cho Nga Mi .")
end
