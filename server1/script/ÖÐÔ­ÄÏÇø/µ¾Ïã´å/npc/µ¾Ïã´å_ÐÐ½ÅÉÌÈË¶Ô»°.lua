--description: 新手村_行脚商人
--author: wangzg	
--date: 2003/7/21
--update 2003/7/28 yuanlan


function main()
	UTask_world38=GetTask(66)
	if (UTask_world38 == 2) then
		Say("Mu鑞 mua x� hng kh玭g? Ta c� thu鑓 danh ti課g ch輓h t玭g y, ch� c莕 200 lng th玦! ", 2 ,"Mua/yes","Kh玭g mua/no")
	else	
		Talk(1,"","L祄 H祅h cc Thng nh﹏ t� nam ra b綾 th藅 kh玭g d�, xem nh鱪g h祅g h鉧 trong tay ta y, kh� c� th� ki誱 頲 h祅g t鑤 h琻!")
	end
end;

function yes()
	if (GetCash()<200) then
		Talk(1,"","Ngi kh玭g 甧m theo  ti襫!")
	else
		Pay(200)
		AddEventItem(142)
		Msg2Player("Mua 頲 x� hng t� ch� H祅h T萿 thng nh﹏. ")
		AddNote("Mua 頲 x� hng t� ch� H祅h T萿 thng nh﹏. ")
	end
end

function no()
end
