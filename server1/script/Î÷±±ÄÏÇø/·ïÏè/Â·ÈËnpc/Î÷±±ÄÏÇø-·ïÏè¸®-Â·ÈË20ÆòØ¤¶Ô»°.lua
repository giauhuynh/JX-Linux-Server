--西北南区 凤翔府 ⒎人20乞丐对话 实界任务

function main(sel)

--UTask_world36 = GetTask(64);

if (UTask_world36 == 0) then 
Talk(3, "select", "Kh蕋 c竔: aiii...", "Ti觰 ca, th� n琲 n祔 c� g�? ", "Xem ra ngi l� ngi m韎 t韎 a phng n祔, kh玭g c� th蕐 c竜 th� c馻 quan ph� sao? M蕐 ng祔 nay quan ph� ph竔 ngi 甶 th� s竧, m蕐 t猲 kh蕋 kh玭g d竚 ra 阯g ╪ xin. N鉯 th猰 ng筰 cho, m蕐 ng祔 nay kh玭g l祄 ╪ 頲 g�, ta y c騨g c� nh� l韓 nh� nh�, nh璶g l祄 sao s鑞g n鎖.")
return
end;

--if (UTask_world36 == 1) then 
Say("Xem ra ngi l� ngi m韎 t韎 a phng n祔, kh玭g c� th蕐 c竜 th� c馻 quan ph� sao? M蕐 ng祔 nay quan ph� ph竔 ngi 甶 th� s竧, m蕐 t猲 kh蕋 kh玭g d竚 ra 阯g ╪ xin. N鉯 th猰 ng筰 cho, m蕐 ng祔 nay kh玭g l祄 ╪ 頲 g�, ta y c騨g c� nh� l韓 nh� nh�, nh璶g l祄 sao s鑞g n鎖.", 0)
--end;

end;


function select()
Say("Nh譶 th藅 ng thng", 2, "Лa ti襫/accept", "Kh玭g a/refuse");
end;


function accept()

if (GetCash() > 1000) then							--参考值
	Talk(2, "select1", "Ti觰 ca, ta � y c� ch髏 b筩. C莔 l蕐.", "Hai ch髇g ta m韎 g苝 l莕 u, nh� ngi l筰 cho ta nhi襲 ti襫 nh� v藋, th藅 l� m閠 ng ngh躠 hi謕. Ta l蕐 ti襫 c馻 ngi s� cho ngi c竔 kh竎. Xin h穣 nh薾 l蕐 ch髏 t蕀 l遪g c馻 ta.")	
else
	Say("Xem ra ngi c騨g kh玭g kh� gi� g�. Th玦 th� c� duy猲 総 s� g苝 l筰.", 0)
end;

end;


function refuse()
end;


function select1()
Pay(GetCash()/3)
AddOwnExp(1000)	
SetTask(64, 1)
end;
