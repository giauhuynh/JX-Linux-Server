-- 江南区 临安 ⒎人_临安公差.lua （消灭采花贼任务）
-- By: Dan_Deng(2004-05-27)

Include("\\script\\global\\repute_head.lua")

function main(sel)
	Uworld43 = GetTask(43)
--	if (Uworld43 < 10) and (GetLevel() >= 70) and (GetReputeLevel(GetRepute()) >= 6) then
		--		Say(10713 ,2,"奸淫妇女乃十恶不涉之罪，我既知晓，自然要管。/U43_get","没有/no")
	if (Uworld43 == 40) and (HaveItem(381) == 1) then
		Talk(6,"U43_40","Qu� nhi猲 kh玭g ngo礽 d� 畂竛 c馻 ta H竔 hoa t芻 ng tr鑞 � L玦 v﹏ tr筰.","Ch輓h l� n�!","Ch輓h l� h緉, nguy猲 xu蕋 th﹏ v鋘g t閏, sau khi ch� tr筰 qua i h緉 ti誴 qu秐. kh玭g bi誸 ph竧 dng L玦 v﹏ tr筰, l筰 gi秈 t竛 s琻 tr筰 甶 l祄 k� h竔 hoa t芻 kh玭g bi誸 h緉  h筰 bi誸 bao nhi猽 c� nng trong tr緉g, h緉 c� khinh c玭g r蕋 t鑤 v� v藋 c騨g ch璦 ai b総 頲 h緉","Th﹏ th� c馻 h緉 r蕋 kh� n誹 kh玭g ta c騨g kh玭g c莕 ngi tr� gi髉.","H緉 產ng tr鑞 � l玦 v﹏ tr筰 mau t譵 n .","Mau l猲 阯g b総 h緉 n誹 kh玭g c遪 nhi襲 c� g竔 b� h緉 b総")
	elseif (Uworld43 == 80) and (HaveItem(382) == 1) then
		Talk(1,"U43_80","Qu� nhi猲 kh玭g ngo礽 d� 畂竛 c馻 ta, h緉 產ng c� d蕌 tung t輈h.")
	elseif (Uworld43 == 10) then
		Talk(1,"","L﹗ nh� v藋 v蒼 ch璦 t譵 頲 H竔 hoa t芻")
	elseif (Uworld43 == 20) then
		Talk(1,"","Kh玭g t譵 th蕐 h緉 � ,c� c莕 ta ch� 阯g?")
	else
		Talk(1,"","Quan sai : � l﹎ an n祔 ai d竚 l祄 lo筺 th� ng m� tng tho竧 kh鈏 tay ta.")
	end
end;

function U43_get()
	Talk(1,"","Theo ta 甶襲 tra th� h竔 hoa t芻 tr猲 tay c莔 c﹜ qu箃,ch髇g thng xu蕋 hi謓 � th鬰 s琻 v� l玦 v﹏ ch s琻 tr筰,nh璶g trc h誸 ngi n猲 v祇 b竔 ki課 L玦 bang ch�, h緉 ch綾 bi誸 nhi襲 h琻, nh璶g h穣 c萵 th薾 ngi n祔 r蕋 ﹎ hi觤.")
	SetTask(43,10)
	AddNote("C玭g sai th祅h l﹎ an : ti猽 di謙 h竔 hoa t芻, th╩ d� t譶h h譶h c馻 b鋘 ch髇g.. ")
	Msg2Player("C玭g sai th祅h l﹎ an : ti猽 di謙 h竔 hoa t芻, th╩ d� t譶h h譶h c馻 b鋘 ch髇g..")
end;

function U43_40()
	SetTask(43,50)
	Msg2Player("Sau  甶 t譵 v﹏ c莔 v﹏ thi) ")
end

function U43_80()
	SetTask(43,90)
	Msg2Player("t譵 ki誱 v� 輈h ch髇g kh玭g tr鑞 � l﹎ an.")
end

function no()
end;
