--西南北区 成都府 信系刷慈海大师对话
--author: yuanlan	
--date: 2003/3/6
-- Update: Dan_Deng(2003-08-12)

function main(sel)
	UTask_em = GetTask(1);
	if (UTask_em <10) then				--坊有加入峨嵋派
Talk(4, "", "T� v﹏ ph竝 s�: Th� ch�, xem ra ngi mu鑞 luy謓 t藀 v� ngh�, h穣 甶 t韎 Th祅h Й,Nga My ph竔,ho芻 th鬰 nam Tr骳 H秈", "V� th� ch� y th藅 c� c� duy猲,n誹 kh玭g ng筰 th� nghe l穙 n筽 n鉯 m蕐 c﹗", "Nga mi ph竔 thanh hi觰 s� th竔 c飊g c竎 tr� tr� l� tu o b猲 trong ch颽 , n祅g l祄 ngi t� bi , s� kh玭g l祄 kh� ngi . Nh璶g m蕐 v� t鬰 gia  t� v� c玭g cao cng ,n誹 ngi mu鑞 l猲 Nga Mi , nh蕋 nh ph秈 th玭g qua c竎 kh秓 nghi謒 c馻 n祅g m韎 頲 .", "v� ph莕 th鬰 nam tr骳 h秈 ch輓h l� Л阯g m玭 , l穙 n筽 khuy猲 ngi h穣 ch� v閕 li襲 l躰h . е t� Л阯g m玭 trong l祄 vi謈 qu� b� , Л阯g m玭 b鑞 ph輆 c� quan n苙g n� , n誹 mu鑞 x玭g qua tr骳 h秈 , s� r籲g d� nhi襲 l祅h 輙")
	elseif (UTask_em == 40*256+50) then 		--峨嵋派40级任务
		UTask_emsub02 = GetByte(GetTask(29),2)
		if (UTask_emsub02 == 0) then 
			Say("A di  ph藅 ! ph竔 Nga Mi ch th� n� hi謕 , qu� ph竔 chng m玭 thanh hi觰 s� th竔 ph藅 l� th玭g su鑤 , m玭 h�  t� ph藅 h鋍 th祅h t鵸 cao si猽 , l穙 t╪g kh玭g bi誸 t� lng s鴆 m譶h , ch� mu鑞 m� r閚g ph藅 ph竝", 2, "xin m阨 i s� ch� 甶觤/L40_V2_Q1", "V穘 b鑙 c遪 c� chuy謓 kh竎 /no")
		elseif (UTask_emsub02 == 3) then
			L40_V2_Q1()
		elseif (UTask_emsub02 == 5) then
			L40_V2_Q2()
		elseif (UTask_emsub02 == 7) then
			L40_V2_Q3()
		else
			if (HaveItem(167) == 0) then
				AddEventItem(167)
				Talk(1,"","n� hi謕 qu� nhi猲 kh玭g h� l� Nga Mi  t� , n琲 n祔 c� c� h� th﹏ ph� , xin m阨 nh薾 l蕐!")
			else
				Talk(1,"","Nga Mi n� hi謕 ch  th� ph藅 h鋍  c飊g v� h鋍 th祅h t鵸 th藅 kh玭g t莔 thng , l穙 t╪g b閕 ph鬰!")
			end
		end
	elseif ((UTask_em == 50*256+50) and (HaveItem(23) == 1)) then		--峨嵋派50级任务
		Talk(5, "","t� v﹏ ph竝 s� : A di  ph藅 ! n� hi謕 c� chuy謓 g� kh玭g ?","t筰 h� ph鬾g s� t玭 chi m謓h , c� l� v藅 t苙g qu� t� , l祄 phi襫 i s� h醝 qu� t� t� h秈 phng trng th玭g b竜 m閠 ti課g .","產 t� t玭 s� � t鑤 ,b莕 t╪g c騨g kh玭g bi誸 phng trng b﹜ gi� n琲 n祇 , 產ng lo l緉g an nguy c馻 ngi.","kh玭g bi誸  x秠 ra chuy謓 g� ?","n鉯 n th藅 k� qu竔 , phng trng s竛g nay nh薾 m閠 phong th� sau  甶 ngay ra h藆 vi謓 , cho t韎 b﹜ gi� c騨g kh玭g c� 甶 ra , c騨g kh玭g bi誸 x秠 ra chuy謓 g�.")
		SetTask(1, 50*256+60)
		AddNote("C飊g t� v﹏ ph竝 s� n鉯 chuy謓 sau T� h秈 i s� 甶 h藆 vi謓 . ")
		Msg2Player("C飊g t� v﹏ ph竝 s� n鉯 chuy謓 sau T� h秈 i s� 甶 h藆 vi謓")
	elseif (UTask_em == 50*256+60) then
		Talk(1,"","n鉯 n th藅 k� qu竔 , phng trng s竛g nay nh薾 m閠 phong th� sau  甶 ngay ra h藆 vi謓 , cho t韎 b﹜ gi� c騨g kh玭g c� 甶 ra , c騨g kh玭g bi誸 x秠 ra chuy謓 g�.")
	elseif (UTask_em >= 50*256+80) and (GetFaction() == "emei") then
		Talk(1,"","產 t� n� hi謕 c鴘 phng trng , Nga Mi n� hi謕 qu� nhi猲 danh b蕋 h� truy襫.")
	elseif (UTask_em == 70*256) then
		Talk(1,"","n� hi謕 ng祔 sau h祅h t萿 giang h� , c� g� c莕 v鑞 t� gi髉 m閠 tay ch� c莕 m� l阨 , v鑞 t� nh蕋 nh khuynh l鵦 tng tr�.")
	else
		Say("t� v﹏ ph竝 s� : t玭 s� c� kh醗 kh玭g ?")	--加入峨嵋派后的非任务对话
	end
end;

function no()
	Talk(1,"","l穙 t╪g c騨g kh玭g qu蕐 r莥 n� hi謕 ngh� ng琲")
end;

function L40_V2_Q1()
	Say("Ph藅 gi竜 l� � th阨 gian n祇 truy襫 v祇 trung th�  ?", 4, "Chi課 qu鑓/ /f1", "Nh� H竛 /L40_V2_Q2", "Nh� Л阯g /f1", "Nh� Minh /f1")
end;

function f1()
	Say("A di  ph藅 ! xem ra n� hi謕 i v韎 ph藅 h鋍 hi觰 r� c遪 ch璦  s﹗ ")
	SetTask(29, SetByte(GetTask(29),2,3))
end;

function L40_V2_Q2()
	Say("r蕋 t鑤 . n� hi謕 bi誸 v� cao t╪g Л阯g tri襲 n Thi猲 Tr骳 th豱h kinh l� ai ?", 4, "Bi謓 k�/f2", "Gi竚 th蕋/f2", "Nh蕋 Чi/f2", "Л阯g T╪g/L40_V2_Q3")
end;

function f2()
	Say("C� ph秈 n� hi謕  nh� nh莔 hay kh玭g", 0)
	SetTask(29, SetByte(GetTask(29),2,5))
end;

function L40_V2_Q3()
	Say("kh玭g t� , qu� ph竔 v� tr� Nga Mi s琻 l� m閠 trong thi猲 h� t� i ph藅 s琻, n� hi謕 c� bi誸 c竔 n祇 kh玭g thu閏 v� t� i ph藅 s琻 ?", 4, "Ph�  s琻/f3", "C鰑 Hoa S琻/f3", "tung s琻/L40_V2_prise", "Ng� i s琻/f3")
end;

function f3()
	Say("ch糿g l� t玭 s� ch璦 n鉯 v韎 c竎 ngi sao ?", 0)
	SetTask(29, SetByte(GetTask(29),2,7))
end;

function L40_V2_prise()
	Talk(1,"","Nga Mi  t� ch ph藅 h鋍 c飊g v� h鋍 th祅h t鵸 kh玭g t莔 thng , l穙 t╪g b閕 ph鬰 , xin t苙g 璶g t譶h h� th﹏ ph� a cho n� hi謕 ,  b祔 t� t﹎ �")
	AddEventItem(167)
	SetTask(29, SetByte(GetTask(29),2,10))
	AddNote("Nh薾 頲 璶g t譶h h� th﹏ ph� . ")
	Msg2Player("b総 頲 璶g t譶h h� th﹏ ph� . ")
end;
