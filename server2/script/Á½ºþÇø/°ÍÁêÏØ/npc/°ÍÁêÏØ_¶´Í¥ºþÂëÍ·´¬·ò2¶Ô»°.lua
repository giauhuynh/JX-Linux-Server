--两湖区 巴陵县 洞庭湖㈦头船夫2对话
-- Update: Dan_Deng(2003-08-21) 降低出村等级要求为5级

function main(sel)
Say("C� i ta u s鑞g v韎 s玭g nc! чng ёnh h� kh玭g ch� n祇 ta kh玭g bi誸! Kh竎h quan mu鑞 甶 u? ", 2, " Thi猲 Vng o/yes", "Ta s� l緈 kh玭g 甶 u/no");
end;

function yes()
if (GetLevel() >= 5) then						--等级达到十级
	if (GetFaction() == "tianwang") then				--如果玩家是天王帮弟子，坐船不收钱
		Say("N琲  nguy hi觤 l緈! Ngi c� th藅 s� mu鑞 甶 kh玭g? ", 1, "ok/ok1")
	else	
		Say("N琲  nguy hi觤 l緈! N誹 kh竎h quan mu鑞 甶 th� cho t玦 xin th猰 輙 ti襫. ", 1, "Nh蕋 tr�/ok2")
	end
else		
	Say("gia33", 0)
end
end;

function no()
end;


function ok1()
NewWorld(59, 1425, 3472)
SetFightState(0)								--转换为非战斗状态
end;


function ok2()
if (GetCash() >= 100) then							--参考值
	Pay(100)
	NewWorld(59, 1425, 3472)
	SetFightState(0)							--转换为非战斗状态	
else
	Say("Kh玭g c� ti襫 th� ta kh玭g a ngi n  頲", 0)		
end
end;
