--Á½ºşÇø °ÍÁêÏØ ¢·ÈË5ÓÎ¿Í¶Ô»°
--°ÍÁêÏØĞ¢ÊÖÈÎÎñ£º¹ÅÀÏÌ«µÄ±¦±´
--suyu
-- Update: Dan_Deng(2003-08-10)

function main(sel)
	UTask_world19 = GetTask(47);
	if (UTask_world19 == 2) then
		if HaveItem(183) == 1 then
			Say("gia910",2,"gia911/yes","gia912/no")
		else
			Talk(1,"","gia913")
		end
	else
		i = random(0,3)
		if (i == 0) then
			Talk(1,"","¤i!.. Bao giê th× ta míi cã thÓ t×m ®­îc mét bøc th­ ph¸p quı nh­ thÕ nµy. ")
		elseif (i == 1) then
			Talk(1,"","§éng §×nh hå nµy cßn ®­îc gäi lµ 'V¨n Méng Tr¹ch'. phİa B¾c gi¸p Tr­êng Giang, phİa Nam gi¸p bèn con s«ng T­¬ng, T­, Nguyªn, Phong. Danh hiÖu lµ 'B¸t B¸ch Lı §éng §×nh Hå.")
		elseif (i == 2) then
			Talk(1,"","Ph¹m V¨n Chİnh C«ng trong bµi 'Nh¹c d­¬ng lÇu kı' cã viÕt: 'D÷ quan phu Ba L¨ng th¾ng tr¹ng, t¹i §éng §×nh nhÊt hå. Hµm viÔn s¬n, Th«n Tr­êng Giang, h¹o h¹o thang thang, hoµnh v« tÕ nhai, triÒu huy tŞnh ©m, khİ t­îng v¹n thiªn' . §éng ®×nh hå nµy xøng")
		else
			Talk(1,"","§éng §×nh hå réng mªnh m«ng, nói non chãt vãt, ®Æc ®iÓm lín nhÊt lµ ngoµi hå cã hå, trong hå cã nói, c¸ nhiÒu v« sè, lau sËy um tïm, n­íc trêi mét s¾c, h¶i ©u bay l­în. Xu©n Thu tø quı lu«n thay ®æi")
		end
	end
end;

function yes()
	i = 100 * (random(0,5)+10)
	Talk(2,"","gia918","gia919"..i.."gia920")
	DelItem(183)
	Earn(i)
	SetTask(47, 3)
	Msg2Player("gia921"..i.."gia922")
	AddNote("gia923")
end;

function no()
	Talk(1,"","gia924")
end;
