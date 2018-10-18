-- 扬州 路人NPC 醉半仙（丐帮10级任务）
-- by：Dan_Deng(2003-07-28)
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")
function main()
		Bil_DefaultTalk4Npc()
end;

function L10_question_1()
	Say("第一问：惠泉酒的惠泉是指什么?",4,"人名 /L10_wrong","地名/L10_wrong","泉水/L10_question_2","湖的名字 /L10_wrong")
end;

function L10_question_2()
	Say("举头望明月，对影成几人，是什么?",4,"很多人/L10_wrong","3 人 /L10_question_3","2 人 /L10_wrong","1 人 /L10_wrong")
end;

function L10_question_3()
	Say("第三问:下面哪个字是指酒的名字",4,"玉驿 /L10_wrong","琼让/L10_wrong","绿拟 /L10_wrong","翡翠 /L10_correct")
end;

function L10_wrong()
	Talk(1,"","错了，看来你和酒无缘!")
end;

function L10_correct()
end;
