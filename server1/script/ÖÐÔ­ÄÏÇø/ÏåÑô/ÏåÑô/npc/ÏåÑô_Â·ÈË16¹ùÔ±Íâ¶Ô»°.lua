--中原南区 襄阳府 ⒎人16郭员外对话
-- edit by 小浪兜兜

Include("\\script\\event\\zhongqiu2007\\picture_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel)
	if allbrother_0801_CheckIsDialog(183) == 1 then
		allbrother_0801_FindNpcTaskDialog(183)
		return 0;
	end
	local ndate = tonumber(GetLocalDate("%y%m%d%H%M"))
	if ndate > 0709220000 and ndate < 0710312400 then
		SetTaskTemp(TSK_TEMP,2)
		Describe("Qu竎h vi猲 ngo筰:  trung thu n, c莕 thu t藀  6 <color=red>m秐h h鋋 <color> h頿 th祅h m閠 b鴆 v� ho祅 ch豱h mang n cho ta, ta s� a ngi m閠 <color=red>Ph鬾g Nguy謙 Qu�<color>.",2,"фi Ph鬾g nguy謙 qu�/makeItemUI","Thu薾 ti謓 gh� qua/NoChoice")
	else
		Describe("Ta  甧m to祅 b� gia s秐 hi課 t苙g cho tri襲 nh, qu鑓 gia g苝 n筺, th蕋 phu h鱱 tr竎h. Ta ch糿g qua l� c鑞g hi課 m閠 ch髏 s鴆 l鵦, c╪ b秐 c騨g kh玭g s� g�.",1,"Ta bi誸 r錳./NoChoice")
	end
end;
