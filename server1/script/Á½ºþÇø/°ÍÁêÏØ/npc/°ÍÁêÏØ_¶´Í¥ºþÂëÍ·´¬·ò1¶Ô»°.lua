--两湖区 巴陵县 洞庭湖㈦头船夫1对话
-- Update: Dan_Deng(2003-08-21) 降低出村等级要求为5级

function main(sel)
	Say("C� i ta u s鑞g v韎 s玭g nc! чng nh h� kh玭g ch� n祇 ta kh玭g bi誸! Kh竎h quan mu鑞 甶 u?", 2, " Thi猲 Vng Уo/yes", "Ta kh玭g 甶 u/no")
end;

function yes()
	if (GetLevel() >= 5) then						--等级达到十级
		if (GetFaction() == "tianwang") then				--如果玩家是天王帮弟子，坐船不收钱
			Say("H玬 nay m竧 tr阨 n猲 ta s� a ngi l猲 Thi猲 Vng Фo mi詎 ph�", 1, "Th� th� c遪 g� b籲g/ok1")
		else	
			Say("Thi猲 Vng Фo v� c飊g kh� 甶 n猲 ngi cho ta xin 輙 l� ph� l� 100 lng", 1, "уng � mau a ta 甶/ok2")
		end
	else		
		Talk(1,"","Х n Thi猲 Vng Фo b秓 tr鋘g nh� anh b筺")
	end
end;

function no()
end;

function ok1()
NewWorld(59, 1425, 3472)
SetFightState(0)					--转换为非战斗状态
end;

function ok2()
if (GetCash() >= 100) then							--参考值
	Pay(100)
	NewWorld(59, 1425, 3472)
	SetFightState(0)							--转换为非战斗状态	
else
	Say("Kh玭g c� ti襫 l� ph� ta kh玭g a ngi 甶 頲", 0)		
end
end;
