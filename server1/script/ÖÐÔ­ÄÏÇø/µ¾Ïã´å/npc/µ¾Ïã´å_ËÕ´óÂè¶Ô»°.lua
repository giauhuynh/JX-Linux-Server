--description: 新手村_苏大妈
--author: wangzg	
--date: 2003/7/22
--71	UTask_world43
--update 2003/7/28 yuanlan
--Update: Dan_Deng(2003-08-07)

function main()
	UTask_world43=GetTask(71)
	if ((UTask_world43==0) and (GetLevel() >= 3)) then		-- 加入等级限制
		Talk(2, "select", "H�! a con ng� nh辌h c馻 ta, ngi mu鑞 ta ph秈 th� n祇?")
	elseif (UTask_world43==2) then
		Talk(2, "", "Ta  khuy猲 T� Trung c� g緉g h鋍 h祅h, ngi kh玭g n猲 lo l緉g n鱝.", "T鑤 qu�! L穙 th﹏ kh玭g bi誸 l蕐 g�  c秏 琻, y l� Kim S竛g Dc ngi nh薾 甶!")
		AddItem(1,0,0,1,0,0,0)
		AddItem(1,0,0,1,0,0,0)
		AddItem(1,0,0,1,0,0,0)
		SetTask(71,4)
		AddNote("N鉯 v韎 T� Чi Ma  thuy誸 ph鬰 th祅h c玭g T� Trung � nh�, nhi謒 v� ho祅 th祅h. ")
		Msg2Player("N鉯 v韎 T� Чi Ma  thuy誸 ph鬰 th祅h c玭g T� Trung � nh�, nhi謒 v� ho祅 th祅h.")
		Msg2Player("Nh薾 頲 3 Kim S竛g Dc")
		AddRepute(6)
		Msg2Player("Thanh th� giang h� c馻 b筺 t╪g th猰 6 甶觤. ")
	elseif (UTask_world43==3) then
		Talk(2, "", "Чi Ma! Ta bi誸 T� Trung c� ch� kh�, huynh 蕐 mu鑞 gi誸 ch tr猲 chi課 trng, nam nhi ch� t筰 b鑞 phng. H穣  huynh 蕐 l� theo l� tng c馻 m譶h.", ", con  l韓 ta kh玭g th� gi� 頲! N� c� ch� l韓, ta l祄 m� c騨g kh玭g th� ng╪ c秐, c秏 琻 ngi  gi髉 ta hi觰 n�. Kim s竛g dc n祔 ngi l蕐 甶!")
		--Msg2Player("有3包金疮药. ")
		AddItem(1,0,0,1,0,0,0)
		AddItem(1,0,0,1,0,0,0)
		AddItem(1,0,0,1,0,0,0)
		SetTask(71,5)
		AddNote("Gi髉 T� Чi Ma l� gi秈 s� l鵤 ch鋘 c馻 T� Trung, ho祅 th祅h nhi謒 v�.")
		Msg2Player("Gi髉 T� Чi Ma l� gi秈 s� l鵤 ch鋘 c馻 T� Trung, ho祅 th祅h nhi謒 v�.")
		Msg2Player("Nh薾 頲 3 b譶h Kim S竛g Dc")
		AddRepute(4)
		Msg2Player("Thanh th� giang h� c馻 b筺 t╪g th猰 4 甶觤 ")
	else	
		Say("M蕐 n╩ nay hai m� con ta v蕋 v� s鑞g qua ng祔. C� ngh� n Tng c玭g  t� tr薾 l� ta ch� mu鑞 kh鉩! Hy v鋘g con ta 頲 b譶h an v� s�!", 0)	
	end
end;

function select()
Say("N� v鑞 l� a nghi猰 t骳 mi謙 m礽 n s竎h, g莕 y l筰 mu鑞 t遪g qu﹏ gi誸 gi芻, r鑤 cu閏 kh玭g bi誸 n� ngh� g� n鱝?", 2, "Ta gi髉 ba 甶 h醝 n�/yes", "Vi謈 n祔 ta c騨g kh玭g bi誸/no")
end

function yes()
SetTask(71,1)
AddNote("Nh薾 nhi謒 v�: Gi髉 T� Чi Ma t譵 hi觰 suy ngh� c馻 con trai. ")
Msg2Player("Nh薾 nhi謒 v�: Gi髉 T� Чi Ma t譵 hi觰 suy ngh� c馻 con trai. ")
end 

function no()
end
