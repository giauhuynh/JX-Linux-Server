-- 江南区 临安 战斗_莫空寓.lua （消灭采花贼任务）
-- By: Dan_Deng(2004-05-28)

Include("\\script\\global\\repute_head.lua")

function OnDeath(sel)
	Uworld43 = GetTask(43)
	if (Uworld43 == 100) then
		Msg2Player("qua bao n╩ th竛g luy謓 t藀 v� c玭g c馻 ngi c騨g  ti課 b�,sinh m筺g,th﹏ ph竝 m鏸 t莕g t﹏ m閠 輙..")
		Talk(4,"U43_prise", 10869, 10870, 10871, 10872)
	end
end;

function U43_prise()
	SetTask(43,255)
	AddProp(2)
	AddStrg(1)
	AddDex(1)
	Task88_1 = GetByte(GetTask(88),1) + 1
	Task88_2 = GetByte(GetTask(88),2) + 1
	if (Task88_1 > 255) then Task88_1 = 255 end
	if (Task88_2 > 255) then Task88_2 = 255 end
	Task88 = GetTask(88)
	Task88 = SetByte(Task88,1,Task88_1)
	Task88 = SetByte(Task88,2,Task88_2)
	SetTask(88,Task88)			-- 记⒓任务得外功点总数
	i = ReturnRepute(30,80,5)		-- 缺省声望，最大无损耗等级，每级递减
	AddRepute(i)		-- 加声望
	Msg2Player("Nhi謒 v� ti猽 di謙 h竔 hoa t芻 : ho祅 th祅h danh v鋘g t╪g cao"..i.."点.")
	AddNote("Nhi謒 v� ti猽 di謙 h竔 hoa t芻 : ho祅 th祅h..")
end
