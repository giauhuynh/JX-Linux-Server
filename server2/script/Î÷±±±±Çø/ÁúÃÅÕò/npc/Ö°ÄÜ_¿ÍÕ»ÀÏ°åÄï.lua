--ÁúÃÅÕò ¢·ÈË ¿ÍÕ»ÀÏ°åÄï Ð¢ÊÖÈÎÎñ£º½éÉÜ¹¤×÷
-- By: Dan_Deng(2003-09-04)

Include("\\script\\global\\itemhead.lua")

function main(sel)
	UTask_world25 = GetTask(25)
	UTask_world27 = GetTask(27)
	if (UTask_world25 == 3) then		-- ÈÎÎñ¡°½éÉÜ¹¤×÷¡±½øÐÐÖÐ
		Talk(5,"W25_step","Bµ chñ cã cÇn thªm ng­êi gióp viÖc kh«ng?","Gióp viÖc? HiÖn cßn ®ang thiÕu mét ch©n tiÓu nhÞ ®Ó dän bµn.","Cã ng­êi muèn dù tuyÓn, vËy bµ nhËn kh«ng?","§Ó ta cßn xem kh¶ n¨ng cña h¾n thÕ nµo!","Tõ Trung Nguyªn ®Õn ®©y, t×m mét b÷a c¬m thËt kh«ng dÔ chót nµo")
	elseif (UTask_world27 == 0) and (GetLevel() >= 5) then
		Say("§i t×m cho ta 3 miÕng thÞt heo rõng, vÒ ®©y cho ta ®·i kh¸ch!",2,"BiÕt råi/W27_get_yes","PhiÒn chÕt ®­îc! §i t×m ng­êi kh¸c ®i/W27_get_no")
	elseif (UTask_world27 == 5) then
		i = GetItemCount(228)
		if (i >= 3) then
			for j = 1,i do DelItem(228) end
			Talk(1,"","¤i! §éng t¸c cùc kú nhanh! Nµy! C¸i mò nµy ta kh«ng dïng ®Õn n÷a! TÆng cho ng­¬i ®ã!")
			SetTask(27,10)
			AddRepute(9)
			AddNote("Mang thÞt heo vÒ giao cho bµ chñ, hoµn thµnh nhiÖm vô.")
			Msg2Player("Mang thÞt heo vÒ giao cho bµ chñ, hoµn thµnh nhiÖm vô.")
			p1,p2,p3,p4,p5,p6 = RndItemProp(6,15)
			if(GetSex() == 0) then
				AddItem(0, 7, 6, 2, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6)
				Msg2Player("B¹n nhËn ®­îc mét c¸i mò")
			else
				AddItem(0, 7, 10, 2, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6)
				Msg2Player("B¹n nhËn ®­îc mét c¸i mò")
			end
			Msg2Player("Danh väng cña b¹n t¨ng thªm 9 ®iÓm")
		else
			Talk(1,"","M· lçi 'LMT001' vui lßng chôp ¶nh vµ göi l¹i cho admin ®Ó fix lçi!")
		end
	elseif (UTask_world25 == 6) then
		Talk(1,"","Oa oa! Kh¸ch quan kh«ng trä ë L÷ qu¸n nµy ­? 100 dÆm xung quanh Long M«n TrÊn nµy kh«ng ai h¬n ®­îc L÷ qu¸n cña ta! Kh«ng tin ng­¬i sÏ hèi hËn ®ã!")
	else				-- ·ÇÈÎÎñ¶Ô»°
		Talk(1,"","Oa oa! Kh¸ch quan kh«ng trä ë L÷ qu¸n nµy ­? 100 dÆm xung quanh Long M«n TrÊn nµy kh«ng ai h¬n ®­îc L÷ qu¸n cña ta! Kh«ng tin ng­¬i sÏ hèi hËn ®ã!")
	end
end;

function W25_step()
	Talk(1,"","§­îc råi! VËy h·y mau gäi y ®Õn ®©y gióp ta!")
	SetTask(25,6)
	AddNote("Bµ chñ ®· ®ång ý cho Th­îng Quan Thu ®Õn ®©y gióp viÖc! H·y mang tin vui nµy ®Õn cho h¾n.")
	Msg2Player("Bµ chñ ®· ®ång ý cho Th­îng Quan Thu ®Õn ®©y gióp viÖc! H·y mang tin vui nµy ®Õn cho h¾n. ")
end

function W27_get_yes()
	SetTask(27,5)
	AddNote("NhËn nhiÖm vô: Vµo rõng lÊy 3 miÕng thÞt heo rõng vÒ cho bµ chñ qu¸n.")
	Msg2Player("NhËn nhiÖm vô: Vµo rõng lÊy 3 miÕng thÞt heo rõng vÒ cho bµ chñ qu¸n.")
end

function W27_get_no()
end
