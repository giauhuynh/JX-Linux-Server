--description: 新手村_小龙
--author: wangzg	
--date: 2003/7/22
--update 2003/7/28 yuanlan
--Update: Dan_Deng(2003-08-07)
-- Update: Dan_Deng(2003-09-09) 修改装备属性生成方式

Include("\\script\\global\\itemhead.lua")

function main()
	UTask_world45=GetTask(73)
	if (UTask_world45 == 1) then
		Talk(4, "Fpay", "Ch竨 l� Ti觰 Long? Ch� ch竨 產ng t譵 , mau v� 甶!", "Ch竨 ch璦 mu鑞 v�, t� t� cho ch竨 10 lng b筩 b秓 ch竨 甶 mua k裲, nh璶g ch竨  l祄 m蕋 ti襫 r錳, t� s� m緉g ch竨 th玦","Ch竨 t譵 xung quanh r蕋 l﹗ r錳 c騨g kh玭g t譵 頲 10 lng b筩, hu hu hu.....","Ch竨 ng lo ta cho ch竨 10 lng!")
	else
		Talk(1,"","T� r蕋 t鑤 v韎 ta, nh璶g ta r蕋 s� t� 蕐!")
	end
end

function Fpay()
	if (GetCash() < 10) then
		Talk(1,"","Hu hu ta nh r琲 10 lng b筩 r錳. Ngi c� nh譶 th蕐 ko?")
	else
		Pay(10)
		Talk(1,"","Ch竨 c秏 琻!S頸 y猽 i n祔 l� ch竨 kh玭g d飊g n. Ch竨 xin t苙g cho ﹏ nh﹏!")
		SetTask(73,10)
		AddNote("T譵 頲 Ti觰 Long, a cho n� ti襫, thuy誸 ph鬰 n� v� nh�. Nhi謒 v� ho祅 th祅h. ")
		Msg2Player("T譵 頲 Ti觰 Long, a cho n� ti襫, thuy誸 ph鬰 n� v� nh�. Nhi謒 v� ho祅 th祅h. ")
		p1,p2,p3,p4,p5,p6 = RndItemProp(6,10)
		AddItem(0,6,0,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6)
		Msg2Player("Nh薾 頲 m閠 s頸 d﹜ th総 l璶g b籲g da. ")
		AddRepute(5)
		Msg2Player("Danh v鋘g c馻 b筺 t╪g th猰 5 甶觤.")
	end				
end

function no()
end
