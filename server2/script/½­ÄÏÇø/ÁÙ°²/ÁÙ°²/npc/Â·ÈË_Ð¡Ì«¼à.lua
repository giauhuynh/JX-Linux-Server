-- 临安 ⒎人NPC 小太嫉（丐帮50级任务）
-- by：Dan_Deng(2003-07-28)

function main()
	UTask_gb = GetTask(8)
	if (UTask_gb == 50*256+40) then				--带着50级任务
		Talk(2,"L50_pay","Ngi n祇?","Ta l� t祇 c玭g c玭g,t� qu� l猲 c� mang 輙 qu� bi誸 cho l穙 gia, xin phi襫 ng礽 v祇 b竜 m閠 ti課g!")
	else
		Talk(1,"","Ti觰 th竔 gi竚 : Mau 甶 甶 ng c� l穘g v穘g � y.")
	end
end;

function L50_pay()
	Say("quen bi誸 g� m� quen bi誸, n誹  l� quen bi誸 sao kh玭g bi誸 lu藅 � y.",2,"H鑙 l� 3000 ng﹏ lng! /L50_pay_yes","kh玭g cho/L50_pay_no")
end;

function L50_pay_yes()
	if (GetCash() >= 3000) then
		Pay(3000)
		Talk(1,"after_pay","V﹏g v﹏g, y l� 3000 lng bi誹 ng礽 u鑞g ru!")
	else
		Talk(1,"","Th藅 keo ki謙 甶 mau")
	end
end;

function after_pay()
	NewWorld(177, 1569, 3169)
	Msg2Player("H鑙 l� 3000 lng cho ti觰 th竔 gi竚 h緉 cho ngi v祇 vn hoa")
	Talk(1,"","Kh玭g c遪 nhi襲 th阨 gian, t祏 c玭g c玭g ng ng� � vn hoa mau v祇 t譵 h緉!")
end

function L50_pay_no()
end;
