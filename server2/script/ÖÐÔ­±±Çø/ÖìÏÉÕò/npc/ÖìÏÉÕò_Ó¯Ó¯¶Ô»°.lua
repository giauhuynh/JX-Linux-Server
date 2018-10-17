--description: 新手村_盈盈
--author: wangzg	
--date: 2003/7/22
--72	UTask_world44
--update 2003/7/28 yuanlan
-- Update: Dan_Deng(2003-08-07)
-- Update: Dan_Deng(2003-09-09) 修改装备属性生成方式

Include("\\script\\global\\itemhead.lua")

function main()
	UTask_world44=GetTask(72)
	if ((UTask_world44==0) and (GetLevel() >= 2)) then		-- 任务启动，需要2级以上
		Talk(3, "select", "Sao u 鉩 l筰 tr鑞g r鏽g, nh鴆 b璶g b璶g th� n祔? 'Phng l﹗ ch� x輈h, giai k� y觰 v� nh. Tri觧 chuy觧 v� mi猲, x竚 ch萴 b╪g l穘h'. L� ai khi猲 ta b� nh� v藋?", "...c� nng x葃 ra chuy謓 g� v藋, v� sao l筰 t鎛 thng nh� th�?", "C� ai hi觰 頲 n鏸 產u trong l遪g ta. V� i hi謕 c� th� gi髉 ta 頲 kh玭g?")
	elseif (UTask_world44==2)  then
		Talk(1,"","KAKA0119我把这条丝帕送与我情郎张大元，并告诉他今晚三更，老地方，不见不散")
	elseif (UTask_world44==4) then		-- 任务完成
		Talk(7,"prise","Trng Чi Nguy猲 kia n鉯 kh玭g quen c� nng.","C竔 g�?......筺 huy襫 v� t鬰, nc  kh� thu, v蒼 li猲 h� v韎 ngi trc y. N鏸 h鏸 ti誧 lu玭 day d鴗. B﹜ gi� bi誸 l祄 sao y?","......C� nng th藅 l� ngi l穘g m筺!",", th玦 甶, h錳 鴆 n祔 ta ch� gi� trong l遪g th玦.", "ng n秐 l遪g, n 玭g tr猲 th� gian n祔 c遪 r蕋 nhi襲.", " t� c竎 h�  quan t﹎, i gi祔 n祔 xin t苙g l筰 c竎 h�. ....ph遪g kh玭g chi誧 b鉵g, th藅 s莡 n蓇 ru閠.", "......")
	else
		Talk(1,"","V� ch錸g ngi ta c� i c� c苝, ta sao kh� th� n祔, ch� m閠 m譶h thui th駃?")
	end
end;

function select()
	Say("H穣 gi髉 ti觰 n� 甧m chi誧 kh╪ tay n祔 n t譶h lang Trng Чi Nguy猲, v� n鉯 v韎 huynh 蕐 canh ba n nay, ch� c�, kh玭g g苝 kh玭g v�.", 2, "Л頲 ta s� gi髉/yes", "Ta c遪 vi謈 kh竎 ph秈 l祄/no")
end

function yes()
	AddEventItem(192)
	SetTask(72,2)
	AddNote("Nh薾 nhi謒 v�: Gi髉 Doanh Doanh a chi誧 kh╪ tay cho t譶h lang Trng Чi Nguy猲, chuy觧 l筰 l阨 nh緉. ")
	Msg2Player("Nh薾 nhi謒 v�: Gi髉 Doanh Doanh a chi誧 kh╪ tay cho t譶h lang Trng Чi Nguy猲, chuy觧 l筰 l阨 nh緉. ")
	Msg2Player("Nh薾 頲 m閠 chi誧 kh╪ tay")
end

function no()
end

function prise()
	DelItem(192)
	SetTask(72,10)
	AddRepute(5)
	AddNote("N鉯 l筰 th竔  c馻 Trng Чi Nguy猲 cho Doanh Doanh bi誸, khuy猲 n祅g ta ng qu� 產u bu錸, ho祅 th祅h nhi謒 v�.")
	Msg2Player("N鉯 l筰 th竔  c馻 Trng Чi Nguy猲 cho Doanh Doanh bi誸, khuy猲 n祅g ta ng qu� 產u bu錸, ho祅 th祅h nhi謒 v�.")
	p1,p2,p3,p4,p5,p6 = RndItemProp(6,10)
	if (GetSex()== 0) then
		AddItem(0,5,0,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6)
		Msg2Player("Nh薾 頲 m閠 i gi祔")
	else
		AddItem(0,5,2,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6)
		Msg2Player("Nh薾 頲 m閠 i gi祔")
	end
	Msg2Player("Danh v鋘g c馻 b筺 t╪g 5 甶觤")
end;
