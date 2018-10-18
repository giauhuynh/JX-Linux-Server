--description: ĞÂÊÖ´å_ĞĞ½ÅÉÌÈË
--author: wangzg	
--date: 2003/7/21
--update 2003/7/28 yuanlan


function main()
	UTask_world38=GetTask(66)
	if (UTask_world38 == 2) then
		Say("Muèn mua x¹ h­¬ng kh«ng? Ta cã thuèc danh tiÕng chİnh t«ng ®©y, chØ cÇn 200 l­îng th«i! ", 2 ,"Mua/yes","Kh«ng mua/no")
	else	
		Talk(1,"","Lµm Hµnh c­íc Th­¬ng nh©n tõ nam ra b¾c thËt kh«ng dÔ, xem nh÷ng hµng hãa trong tay ta ®©y, khã cã thÓ kiÕm ®­îc hµng tèt h¬n!")
	end
end;

function yes()
	if (GetCash()<200) then
		Talk(1,"","Ng­¬i kh«ng ®em theo ®ñ tiÒn!")
	else
		Pay(200)
		AddEventItem(142)
		Msg2Player("Mua ®­îc x¹ h­¬ng tõ chç Hµnh TÈu th­¬ng nh©n. ")
		AddNote("Mua ®­îc x¹ h­¬ng tõ chç Hµnh TÈu th­¬ng nh©n. ")
	end
end

function no()
end
