--西南北区 成都府 逊放差役对话 实界任务（成都杀野猪）
-- Update: Dan_Deng(2004-03-19)

FESTIVAL06_NPCNAME = "<color=yellow>:<color>";

Include("\\script\\global\\repute_head.lua")

Include([[\script\global\⒎人_逊放蔚兵.lua]]);

function main(sel)
    -- gsoldier_entance();
Talk(1,"","Ngi d竚 x玭g v祇 nha m玭? th藅 ng l� ╪ gan h飉 m藅 g蕌 r錳")
end;

function main_former()
	Uworld11 = GetTask(11)
	if (Uworld11 == 100) then			-- 任务蓐成
		W11_prise()
	elseif (Uworld11 < 255) and (Uworld11 >= 1) then		-- 任务中
		Talk(1,"","Mu鑞 nh薾 thng �, 甶 gi誸 10 con heo r鮪g r錳 n鉯")
	elseif (Uworld11 > 255) then		-- 任务已经蓐成
		Talk(1,"","L﹏ c薾 th祅h  c� r蕋 nhi襲 n骾 , thng c� heo r鮪g xu蕋 hi謓 , ph秈 di謙 ch髇g m韎 c� th� m b秓 thu ho筩h n╩ nay.")
	else			-- 未接任务
		Talk(1,"","ngi d竚 x玭g v祇 nha m玭 ? th藅 l� ╪ r錳 gan h飉 m藅 g蕌")
	end
end;

function W11_prise()
	Talk(1,""," gi誸 ch誸 mi con heo r鮪g ? th藅 t鑤 qu� , ta thay m苩 d﹏ ch髇g th祅h  產 t� v� anh h飊g . Зy l� 500 lng tng thng")
	Earn(500)
	SetTask(11,date("%Y%m%d"))
	i = random(0,99)
	if (i < 50) then			-- 50%几⑹
		x = 3
	elseif (i < 85) then		-- 35%几⑹
		x = 4
	else							-- 15%几⑹
		x = 5
	end
	AddRepute(x)
	Msg2Player("nhi謒 v� ho祅 th祅h , nh薾 頲 50 danh v鋘g , danh v鋘g t╪g th猰"..x.."甶觤.")
end;
