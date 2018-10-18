--description: Ğ¢ÊÖ´å_¸ğÒ¯
--author: wangzg	
--date: 2003/7/21
--update 2003/7/24 yuanlan
-- Update: Dan_Deng(2003-08-07)

function main()
	UTask_world42=GetTask(70)
	if (UTask_world42==2) then
		Talk(2, "step1", "Ta cã thÓ m­în quyÓn s¸ch cña «ng chø?","Ch¾c lµ C¸t L·o ®Çu ë th«n b¾c nhê ng­¬i ®Õn ph¶i kh«ng? Tªn Êy muèn m­în s¸ch th× mang 'Di Kiªn Chİ' ®Õn trao ®æi víi 'Kª ThÇn Lôc' cña ta.")
	elseif ((UTask_world42==6) and (HaveItem(189) == 1)) then		-- »»Êé
		Talk(2, "step3", "§©y lµ quyÓn s¸ch «ng cÇn.", "Hay qu¸! §©y lµ quyÓn s¸ch l·o Êy cÇn.")
	elseif ((UTask_world == 8) and (HaveItem(188) == 0)) then		-- Êé¶ªÁË
		Talk(1,"","B¹n trÎ! Chó ı ®õng lµm mÊt s¸ch quı cña ta n÷a nhĞ.")
		AddEventItem(188)
		Msg2Player("B¹n nhËn ®­îc 1 quyÓn Kª ThÇn Lôc")
	else
		Talk(1,"","B¹n trÎ! Lµm ng­êi kh«ng nhÊt thiÕt xem träng sÜ diÖn, cã nhiÒu viÖc nãi ra th× cÇn sÜ diÖn!")
	end
end;

function step1()
	SetTask(70,4)
	AddNote("T×m ®­îc C¸i Gia ë nam trÊn, «ng Êy muèn Lç Gia dïng Di Kiªn chİ ®æi Kª ThÇn Lôc. ")
end;

function step3()
DelItem(189)
AddEventItem(188)
SetTask(70,8)
AddNote("Tõ chç C¸t Gia, dïng Di Kiªn ChØ ®æi Kª ThÇn Lôc")
Msg2Player("Dïng Di Kiªn ChØ ®æi Kª ThÇn Lôc")
end;
