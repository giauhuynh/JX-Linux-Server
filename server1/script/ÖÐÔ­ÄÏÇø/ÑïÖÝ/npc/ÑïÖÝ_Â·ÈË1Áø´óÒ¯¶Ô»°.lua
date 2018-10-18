-- 扬州 路人NPC 柳大爷（丐帮入门任务）
-- by：Dan_Deng(2003-07-28)
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")
function main()
		Bil_DefaultTalk4Npc()
end;

function prise_1()
	Talk(2,"","老爷，看你就知道您是富贵之人，家财万卷!","不错不错。虽然我吃喝不愁，但是家境一般，最开心的是儿孙孝顺")
end;

function prise_2()
end;

function prise_3()
	Talk(2,"","这位老爷，看您就知道您学识渊博。","我志气不高，到现在还没有功名，你过奖了，我不好意思!")
end;

function prise_exit()
end;
