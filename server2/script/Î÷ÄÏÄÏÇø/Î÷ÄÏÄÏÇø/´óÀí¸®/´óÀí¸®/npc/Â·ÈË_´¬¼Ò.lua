-- 洱海 ⒎人NPC 船家（翠烟放30级任务）
-- by：Dan_Deng(2003-07-26)

function main()
	UTask_cy = GetTask(6)
	if ((UTask_cy == 30*256+40) and (HaveItem(2) == 0)) then		--30级任务进行中
		Talk(5,"L30_pay","Kim nhi c� kh� ch﹏ th� i phong thu a, b� li評 nh蕋 m穘 thng ch ng� h�.","Ng礽 c� Ng﹏ tuy誸 ng� sao?","Ng﹏ tuy誸 ng�, ta h玬 nay c﹗ 頲 n m蕐 con.","Ng礽 c� th� b竛 cho ta m閠 輙 頲 kh玭g?","C騨g 頲, ch� c莕 a ta 1000 lng.")
	else
		Talk(1,"","Thuy襫 gia: p nc Чi L� u鑞 quanh, anh em ng╪ s玭g c竎h n骾, n骾 s玭g mu玭 tr飊g xa c竎h, mu鑞 g苝 c騨g kh玭g th� g苝 頲.")
--		Talk(1,"","船家：出海捕鱼那个把船航啊，丰收归荡那个把家返啊！")
	end
end;

function L30_pay()
	if (GetCash() >= 1000) then
		Pay(1000)
		AddEventItem(2)
		AddNote("Mua 頲 ng﹏ tuy誸 ng�.")
		Msg2Player("Mua 頲 ng﹏ tuy誸 ng� t筰 ch� Thuy襫 Gia.")
	else
		Talk(1,"","Kh玭g c� ti襫, mua b竛 c竔 g� 頲 y.")
	end
end;
