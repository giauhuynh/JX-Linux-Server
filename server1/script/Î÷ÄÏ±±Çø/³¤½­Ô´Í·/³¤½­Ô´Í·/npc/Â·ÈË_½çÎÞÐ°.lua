-- 长江源头 路人_界无邪.lua　丐帮90级技能任务
-- By：XiaoYang(2004-04-29)
-- Update：dan_deng(2004-05-20)

Include("\\script\\global\\repute_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main()
	if allbrother_0801_CheckIsDialog(2) == 1 then
		allbrother_0801_FindNpcTaskDialog(2)
		return 0;
	end
	
	Uworld128 = GetTask(128)
	Uworld30 = GetByte(GetTask(30),2)
	if ((Uworld128 < 10) and (GetReputeLevel(GetRepute()) >= 5) and (GetLevel() >= 90) and (GetFaction() ~="gaibang") and (Uworld30 ==127)) or
		(GetLevel() >= 90 and GetCamp() == 4 and GetTask(5892) == 0) then
		Talk(8,"Uworld128_get","L筰 c� ngi n �!!!","Ngi n n琲 hoang vu n祔  l祄 g�?",
		"C� ph秈 l� v� c竔 bang ph竔?",
		"::ng v藋, t筰 h� n y l� v� c竔 bang ph竔",
		"nh鱪g ngi n nh� ta gi髉  u ph秈 mang theo h秓 t鰑  l祄 qu� th� ta y c遪 suy ngh� l筰, c遪 ngi....!",
		"::Th� ra v� i huynh y th輈h h秓 t鰑","::Л頲 th玦, i tin c馻 ta ","Л頲, ta s� i h秓 t鰑 t� ngi")
   elseif (Uworld128 == 10) and (HaveItem(76) == 1) then
   	Talk(11,"Uworld128_envelop",
	"::Ru c馻 ng礽 � y",
	"::Hu� tuy襫 t鰑, kh玭g bi誸  v鮝 � v� huynh i y ch璦?",
	"Hu� tuy襫 t鰑, ngi n鉯 th藅 ch�?",
	"ng l� ri ngon r錳!",
	"th� l骳 n穣 ngi nh� ta vi謈 g� nh�?",
	"::Nh� v� huynh i v� tin t鴆 c馻 c竔 bang ph竔",
	"� �!",
	"� y ta c� 1 b鴆 m藅 th�!",
	"nh� ngi n t鎛g  c竔 bang v� giao n� cho La khu玭g sinh, 玭g ta s� c� manh m鑙 gi髉 i hi謕!",
	"::c秏 琻 v� huynh i!")
   elseif (Uworld128 == 40) then
   	Talk(7,"Uworld128_kill","Х h� g鬰 頲 s竧 th� r錳 sao?",
	"Чi hi謕 th藅 t鑤 b鬾g!","::kh玭g c� g�!",
	"kh玭g bi誸 t� u n, b鋘 ch髇g l筰 mu鑞 h筰 ta","c騨g c� th� l� v� manh m鑙 v� b� k輕 c馻 c竔 bang!",
	"v� cu鑞 b� k輕 n祔 t筰 h�  giao cho La khu玭g sinh v� an to祅, i hi謕 h穣 甶 g苝 La khu玭g sinh bi誸 u 玭g 蕐 l筰 c� qu� cho i hi謕!",
	":: t�, t筰 h� s� n c竔 bang m閠 chuy課")
   elseif (Uworld128 == 10) then
   	Talk(1,"","Ru c馻 ta u!")
   elseif (Uworld128 == 30) then
   	Talk(2,"","C竎 h� y r錳","xin h穣 h� g鬰 b鋘 s竧 th� c鴘 t筰 h�!")
   elseif (Uworld128 == 20) and (HaveItem(390) == 0) then
   	AddEventItem(390)
   	Msg2Player("6")
   	Talk(1,"","6")
   else
   	Talk(1,"","Ru ngon, ru ngon!")
   end
end

function Uworld128_get()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- 白名未学野球拳的，不允许接任务
		Talk(1,"","T筰 kh玭g th� 甶 mua ri cho ng礽 l骳 n祔 頲!")
	else
		Say("Th� ngi quy誸 nh 甶 mua ru cho ta ch�?",2,"t筰 h� s� ti課 h祅h. /Uworld128_wait","th玦,  h玬 kh竎 nh� i huynh, gi� ta b薾 l緈/Uworld128_no")
	end
end

function Uworld128_wait()
	SetTask(128,10)
	SetTask(5892,1)
--	Uworld135 = GetGameTime()
   Msg2Player("дn t鰑 l莡 � dng ch﹗ mua ru cho Gi韎 v� t�")
   AddNote("дn t鰑 l莡 � dng ch﹗ mua ru cho Gi韎 v� t�")
end

function Uworld128_no()
end

function Uworld128_envelop()
	DelItem(76)
	AddEventItem(390)
	Msg2Player("Mang th� c馻 Gi� v� t� giao cho La khu玭g sinh � t鎛g  c竔 bang")
	AddNote("Mang th� c馻 Gi� v� t� giao cho La khu玭g sinh � t鎛g  c竔 bang")
	SetTask(128,20)
end

function Uworld128_kill()
	SetTask(128,50)
	Msg2Player("B筺 n C竔 bang g苝 La khu玭g sinh  i tho筰")
	AddNote("B筺 n C竔 bang g苝 La khu玭g sinh  i tho筰")
end
