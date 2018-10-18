-- 翠烟门 路人NPC 春香婆婆（翠烟门出师任务）
-- by：Dan_Deng(2003-07-27)

function main()
	UTask_cy = GetTask(6)
	if (GetFaction() == "cuiyan") then
		if (UTask_cy == 60*256+20) then				--出师任务进行中
			Talk(2,"","B� b�! L穙 b�   n鉯 cho ta nghe ch﹏ tng s� th藅, ta s� a b鴆 th� n╩  cho Chng m玭, m鋓 ngi xem xong s� hi觰 n鏸 kh� t﹎ c馻 S� t�! ","T﹎ nguy謓 n╩  c馻 S� t�, ta  thay S� t� ho祅 th祅h, v藋 c騨g  may r錳! ")
			SetTask(6,60*256+30)
		elseif (UTask_cy == 60*256) and (GetLevel() >= 50) then		--出师任务
			Talk(3,"L60_get","Ngi ngo礽 lu玭 c� th祅h ki課 v韎 Th髖 Y猲 ch髇g ta, ngay c�  t� c騨g truy襫 r籲g t� s� s竛g l藀 ph竔, do b� ngi y猽 ru錸g b� n猲 t輓h t譶h thay i r蕋 nhi襲, c╩ h薾 h誸 t蕋 c� n 玭g trong thi猲 h�, cho n猲  nh ra m玭 quy kh綾 nghi謙, khi課 cho c竎  t� trong m玭 i i c╩ gh衪 n 玭g.","Nh鱪g m玭 quy n祔 nh� m閠 s頸 d﹜ lu玭 bu閏 ch苩 t蕋 c� m鋓 ngi, k� th鵦 v鑞 kh玭g ph秈 nh� v藋, nguy猲 do trong  ngi ngo礽 kh玭g hi觰 th� m芻, t� b秐 th﹏ ch飊g ta c騨g kh玭g mu鑞 khi課 ngi kh竎 thng t﹎ nh� v藋.","L祄 th� n祇 m韎 c� th� khi課 m鋓 ngi hi觰 頲 ch﹏ tng s� vi謈 n祔 ch�?")
		else
			Talk(1,"","T� nh�  l璾 l筩 trong ch鑞 giang h�, ch韕 m総  nhi襲 n╩ tr玦 qua r錳 ")
		end
	else
		Talk(1,"","Nh� ng祔 n祇 ta c遪 絤 Do穘 chng m玭 tr猲 tay, b﹜ gi�  l韓 th� n祔 r錳! Th阨 gian tr玦 qua nhanh nh� t猲 b緉! ")
	end
end;

function L60_get()
	Say("Ch﹏ tng s� th藅 c� li猲 quan n m閠 ngi trong c蕀 a, ch� c� t譵 頲 ngi n祔 th� tr緉g 甧n s� r� r祅g",2,"Ti誴 t鬰 t譵 hi觰 /L60_get_yes","Hay m芻 k� kh玭g lo /L60_get_no")
end;

function L60_get_yes()
	Talk(4,"","Th﹏ l�  t� b鎛 m玭, t� th蕐 c� tr竎h nhi謒 ph秈 t譵 ra s� th藅.","Ra kh醝 c鎛g 甶 theo hng Йng B綾 s� n Ng鋍 N� h�, c蕀 a � g莕 Ng鋍 N� h�.","Л頲 r錳! Ta 甶 y! ","ng v閕! Ngi b筺 tr�! в b秓 v� t輓h m筺g cho ngi, trc khi g苝 ngi  c莕 ph秈 c� m閠 c竔 kh╪ t�, kh╪ t� n祔 s� xu蕋 hi謓 trong S琻 чng c馻 C蕀 Cung."	)
	SetTask(6,60*256+10)
	AddNote("Ti誴 nh薾 nhi謒 v� xu蕋 s� c馻 Th髖 Y猲 M玭, 甶襲 tra ch﹏ tng c馻 c蕀 a Th髖 Y猲 m玭 ")
	Msg2Player("Ti誴 nh薾 nhi謒 v� xu蕋 s� c馻 Th髖 Y猲 M玭, 甶襲 tra ch﹏ tng c馻 c蕀 a Th髖 Y猲 m玭 ")
end;

function L60_get_no()
end;
