--西南北区 江津村 武师对话 新手村练轻功任务(不可重复的任务)
-- Update: Dan_Deng(2003-08-09)
-- 任务要求: 等级(>=2), 金钱(>=100两)
-- Update: Dan_Deng(2003-11-04)改为模板方式，全服统一调用一个函数以利于维护、扩展

Include("\\script\\global\\各派接引弟子\\轻功_武师模板.lua")

function main(sel)
-- Talk(1,"","Xin ch祇!")
	UTask_world20 = GetTask(44)		-- 虎子拜师任务
	if (UTask_world20 == 10) then			-- 虎子拜师任务进行中
		Talk(1,"","馻? H� T� mu鑞 h鋍 v� �? a tr� n祔 ng祔 thng r蕋 hi誹 ng, xem ra t� ch蕋 kh玭g t錳. Л頲, v� n鉯 v韎 cha n�, tha thu H� T� l祄  . бu l� ngi trong th玭 c�, ng t輓h t韎 chuy謓 ti襫 nong! M鏸 d辮 l� t誸 mang l猲 x﹗ th辴 s蕐 l� 頲 r錳!")
		SetTask(44, 20)
		AddNote("V� s� ng � d藋 v� mi詎 ph� cho H� T�, mau v� b竜 tin n祔 cho cha c馻 H� T� bi誸.")
		Msg2Player("V� s� ng � d藋 v� mi詎 ph� cho H� T�, mau v� b竜 tin n祔 cho cha c馻 H� T� bi誸.")
	else
		learn()
	end
end;
