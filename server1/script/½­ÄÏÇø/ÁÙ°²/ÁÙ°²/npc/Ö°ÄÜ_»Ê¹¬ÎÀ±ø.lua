-- 临安　职能　皇宫卫兵（两名）（丐帮50级任务）
-- by：Dan_Deng(2003-09-16)

function main()
		UTask_gb = GetTask(8)
	if ((UTask_gb >= 50*256+30) and (UTask_gb <60)) then		-- （第三次）
		Talk(3,"","T祇 c玭g c玭g c� l謓h kh玭g ph薾 s� kh玭g 頲 v祇 cung ! 甶 ra.",": Ta c� th玭g h祅h l謓h b礽 !","C� th玭g h祅h l謓h b礽 xin m阨 v祇! ")
--		SetTask(8,50*256+40)
	elseif (UTask_gb == 50*256+20) and (HaveItem(139) == 1) then	-- （第二次）
		Msg2Player("Ch鴑g th鵦 th玭g h祅h l謓h th藅 m阨 v祇 trong. ")
		NewWorld(177, 1569, 3169)
	elseif (UTask_gb == 50*256+10) then		--带着50级任务（第一步）
		Talk(3,"","ng l筰 ngi d竚 ch箉 lo筺 n琲 n祔 �! ","T筰 h� l� c竔 bang  t� c� m閠 v藅 v� c飊g quan tr鋘g mu鑞 d﹏g cho ho祅g thng","Ho祅g thng kh玭g ph秈 ai c騨g c� th� di謓 ki課,ph秈 c� th玭g h祅h l謓h c馻 trng i nh﹏ m韎 c� th� v祇")
		SetTask(8,50*256+20)
	else
		i = random(0,2)
		if (i == 0) then
			Talk(1,"","V� binh ho祅g cung : ngi th藅 to ran bi誸 y l� n琲 n祇 kh玭g m� d竚 v祇 y 甶 d筼.")
		elseif (i == 1) then
			Talk(1,"","V� binh ho祅g cung : ho祅g cung l� c蕀 a t� ti謓 甶 v祇 ch� c� ch誸")
		else
			Talk(1,"","V� binh ho祅g cung : ng l筰 ! ngi ch竛 s鑞g r錳, ho祅g cung c蕀 a m� d竚 甶 v祇")
		end
	end
end;
