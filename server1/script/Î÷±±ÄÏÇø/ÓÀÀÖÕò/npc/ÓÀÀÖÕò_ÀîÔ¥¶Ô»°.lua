--description: 孝手村_李豫
--author: wangzg	
--date: 2003/7/21
--update 2003/7/25 yuanlan
-- Update: Dan_Deng(2003-08-09)
-- Update: Dan_Deng(2003-09-09) 修改装备属性生成方式
-- Update: Dan_Deng(2003-09-20) 为何VSS上未更孝？重写修改任务流程

Include("\\script\\global\\itemhead.lua")

function main()
	UTask_world69=GetTask(69)
	if ((UTask_world69 == 0) and (GetLevel() >= 5)) then
		Talk(3, "select", "Y i thi謓 khoan dung b蕋 h鑙, vi y ti猽 c nh﹏ ti襲 t魕.","V� huynh i n祔, c� g� 產u l遪g v藋?","Ch� ti誧 l� trc gi� c� ta kh玭g c� bi觰 hi謓 g� v韎 ta. T筰 sao tr猲 th� gian n祔 c� ngi 產u kh� nh� ta ch�?")
	elseif (UTask_world69 == 4) then
		Talk(4,"W69_step2","Xu﹏ Hng ra cho huynh m閠  thi: 'Y i thi謓 khoan chung b蕋 h鎖'. T竎 gi� Li評 V躰h c馻 c﹗ th� tr猲 c遪 頲 g鋓 l� g�?","Th藅 ng ch誸! Ta th藅 ngh� kh玭g ra!","Kh玭g bi誸 �...c﹗ h醝 n gi秐 nh� th� m� kh玭g bi誸?","Th藅 ng筰 qu�! Huynh c� th� gi髉 ta kh玭g?")
	elseif (UTask_world69 == 8) then
		Talk(2, "prise", "Xu﹏ Hng c� nng  ch蕄 nh薾 t輓 v藅 c馻 huynh, c遪 m阨 huynh n nh� l祄 kh竎h! Ch骳 m鮪g ch骳 m鮪g!","Chi誧 nh蒼 n祔 l� th祅h � c馻 ta t苙g ngi! Xin nh薾 cho!")
	elseif (UTask_world69 == 2) then
		Talk(1,"","C� ta t猲 l� Xu﹏ Hng, � ph輆 ng tr蕁, phi襫 ngi mang qu箃 l� sen n祔 t苙g cho c� ta.")
	elseif (UTask_world41==10) then
		Talk(1,""," t譶h...th� gian n祔 ai m� ch糿g v藋!")
	else
		Talk(1,""," t譶h...th� gian n祔 ai m� ch糿g v藋!")
	end
end

function select()
	Say("Ngi c� th� gi髉 ta truy襫 t t﹎ � n c� ta kh玭g?", 2, "Ta c� th� gi髉 ngi n� v韎 n祅g. /yes", "Chuy謓 n祔 ta kh玭g gi髉 n鎖 u. /no")
end;

function yes()
	Talk(1,"","C� ta t猲 l� Xu﹏ Hng, � ph輆 ng tr蕁, phi襫 ngi mang qu箃 l� sen n祔 t苙g cho c� ta.")
	AddEventItem(190)
	Msg2Player("Nh薾 nhi謒 v�: Gi髉 L� D� truy襫 t t譶h � n Xu﹏ Hng. Лa qu箃 hoa sen nh� l� t輓 v藅 c馻 L� D� cho Xu﹏ Hng.")
	SetTask(69,2)
	AddNote("Nh薾 nhi謒 v�: Gi髉 L� D� truy襫 t t譶h � n Xu﹏ Hng. Лa qu箃 hoa sen nh� l� t輓 v藅 c馻 L� D� cho Xu﹏ Hng. ")
end

function no()
end

function W69_step2()
	Talk(1,"","Ta s� gi髉 huynh!")
	SetTask(69,6)
	AddNote("L� D� kh玭 tr� l阨 頲 c﹗ h醝, nh� ngi gi髉 L� D� tr� l阨 c﹗ h醝 n祔. ")
	Msg2Player("L� D� kh玭 tr� l阨 頲 c﹗ h醝, nh� ngi gi髉 L� D� tr� l阨 c﹗ h醝 n祔. ")
end

function prise()
	SetTask(69,10)
	AddRepute(7)		-- 声望加7点
	AddNote("Mang c﹗ tr� l阨 c馻 Xu﹏ Hng n鉯 v韎 L� D�, nhi謒 v� ho祅 th祅h. ")
	Msg2Player("Mang c﹗ tr� l阨 c馻 Xu﹏ Hng n鉯 v韎 L� D�, nhi謒 v� ho祅 th祅h.")
	p1,p2,p3,p4,p5,p6 = RndItemProp(6,10)
	if (random(0,3) == 0) then
		AddItem(0, 3, 0, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6)
		Msg2Player("Nh薾 頲 m閠 chi誧 nh蒼")
	else
		AddItem(0, 3, 0, 2, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6)
		Msg2Player("Nh薾 頲 m閠 chi誧 nh蒼")
	end
	Msg2Player("Danh v鋘g c馻 b筺 t╪g th猰 7 甶觤.")
end
