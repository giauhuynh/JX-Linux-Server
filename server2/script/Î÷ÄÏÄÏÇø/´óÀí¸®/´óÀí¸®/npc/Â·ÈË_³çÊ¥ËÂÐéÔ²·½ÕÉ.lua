-- 大淀城　⒎人　崇圣刷虚圆方丈（翠烟放50级任务）
-- by：Dan_Deng(2003-07-27)

function main()
	UTask_cy = GetTask(6)
	if (UTask_cy == 50*256+10) then		--50级任务
		SetTask(6,50*256+32)
		Talk(4,"","Phng Trng Чi S�, ta l� Th髖 Y猲  t�, chng m玭 g鋓 ta t韎 gi髉 qu� t� t譵 b秓 v藅.","A di  ph藅, th藅 l� phi襫 cho th� ch�, o t芻  tr鑞 v祇 Thi猲 T祄 th竝.","Th竝 n祔 l� th竛h a c馻 Чi L�, cho n猲,  ph遪g ng鮝 ngi kh竎 ti課 v祇, � trong th竝 c� r蕋 nhi襲 ng nh﹏. Th� ch� mu鑞 v祇 xin h穣 c萵 th薾!","Чi s� y猲 t﹎! ")
	elseif (UTask_cy == 50*256+32) and (HaveItem(5) == 1) then		-- 蓐成
		SetTask(6,50*256+50)
		DelItem(5)
		Talk(3,"","Phng Trng i s�, c竔 n祔 l� qu� t� m蕋 t輈h ng� ng quan ﹎. C騨g mu鑞 gi髉 i s� m閠 tay.","A di  ph藅, tr蕁 t� b秓 v藅  t譵 頲. Th藅 l� B� T竧 ph� h�, 產 t� th� ch�. G鰅 l阨 c秏 琻 chng m玭 d飉 ta.","Чi s� kh玭g n猲 kh竎h kh�!")
		Msg2Player("Лa ng� ng quan ﹎ cho Phng Trng h� vi猲.")
		AddNote("Лa ng� ng quan ﹎ cho Phng Trng h� vi猲.")
	elseif (UTask_cy >= 50*256+32) and (UTask_cy < 50*256+50) then		-- 任务过程中
		Talk(1,"","Tr髏 b� h誸 phi襫 to竔, ta � ch� n祔 ni謒 kinh, kh玭g m祅g chuy謓 nh﹏ th�.")
	elseif (UTask_cy >= 50*256+50) then						-- 任务蓐成以后
		Talk(1,""," t� th� ch�, th� ch� t輈h nhi襲 c 総 s� g苝 nhi襲 may m緉.")
	else
		Talk(3,"","V� уng Quan  l� m閠 trong nh鱪g S飊g Th竛h Ng� B秓 c馻 b鎛 t�, y l� ni襪 t� h祇 c馻 S飊g Th竛h T�.","Ngi xu蕋 giao sao m� c� l遪g ki猽 ng筼 hi觰 th緉g ch�?","L阨 gi竜 hu蕁 c馻 th� ch� th藅 khi課 b莕 t╪g ph秈 suy x衪 l筰. A Di У Ph藅, A Di У Ph藅, A Di У Ph藅. ")
	end
end;
