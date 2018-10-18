-- 扬州 路人NPC 任天涯（入门任务）
-- by：Dan_Deng(2003-07-28)
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")
function main()
		Bil_DefaultTalk4Npc()
	end

function prise_1()
	Talk(2,"","这位兄弟，看你相貌，就知道你有福气，子孙满堂?!"," 小生家境贫寒，至今未娶，古人云：不孝有三，以后我怎么有脸面对祖宗？")
end;

function prise_2()
	Talk(2,""," 这位兄弟，看你相貌，就知道你有福气，子孙满堂?!","你不要开玩笑了，正因为我从小到大这么丑陋，所以，没有女孩愿意嫁给我。为什么世间女子都喜欢以相貌嫁人呢?")
end;

function prise_3()
end;

function prise_exit()
end;
