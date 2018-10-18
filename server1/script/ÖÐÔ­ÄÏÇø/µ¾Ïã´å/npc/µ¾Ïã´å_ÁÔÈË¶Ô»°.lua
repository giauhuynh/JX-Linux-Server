--description: ĞÂÊÖ´å_ÁÔÈË
--author: wangzg	
--date: 2003/7/21
--update 2003/7/28 yuanlan

function main()
	UTask_world38=GetTask(66)
	if (UTask_world38==2) then
		Say("Sè cñ ta gÇn ®©y kh«ng tÖ, c¸ch ®©y kh«ng l©u lªn nói s¨n ®­îc mét con m·nh hæ, x­¬ng con hæ nµy cã thÓ lµm d­îc liÖu quı, ta muèn 150 l­îng b¹c", 2 ,"Mua/yes","Kh«ng mua/no")
	else	
		Say("Trong sè nh÷ng ng­êi ®i s¨n ë vïng nµy, ta x­ng thø hai kh«ng ai d¸m x­ng thø nhÊt! ",0)	
	end
end;

function yes()
	if (GetCash() < 150) then
		Talk(1,"","Ng­¬i kh«ng mang theo ®ñ tiÒn!")
	else
		Pay(150)
		AddEventItem(185)
		Msg2Player("Mua ®­îc x­¬ng hæ tõ Thî S¨n")
		AddNote("Mua ®­îc x­¬ng hæ tõ Thî S¨n")
	end
end;

function no()
end
	
