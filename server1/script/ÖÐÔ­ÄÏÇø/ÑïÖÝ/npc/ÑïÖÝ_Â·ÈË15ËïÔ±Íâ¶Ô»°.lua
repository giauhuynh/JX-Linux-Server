-- 扬州 路人NPC 孙员外（入门任务）
-- by：Dan_Deng(2003-07-28)
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")
function main()
		Bil_DefaultTalk4Npc()
end;

function prise_1()
	Talk(2,"","这位老爷，看你就知道是个侠义之人。朋友哪里都有，真是第二个孟尝君"," 孟尝君算什么，他有多少钱？这些穷人每天都来乞讨，你也是一样。走，走，走! ! !")
end;

function prise_2()
end;

function prise_3()
	Talk(2,"","这位老爷真是有福相。想必一定富贵满堂","不要这么说，说来伤心。我今年50岁了，一个儿子也没有，多少产业以后不懂给谁?")
end;

function prise_exit()
end;
