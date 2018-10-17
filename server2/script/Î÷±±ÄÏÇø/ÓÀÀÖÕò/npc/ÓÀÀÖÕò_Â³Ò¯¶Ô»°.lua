--description: Ğ¢ÊÖ´å_¢³Ò¯
--author: wangzg	
--date: 2003/7/21
---70	UTask_world42
--update 2003/7/24 yuanlan
-- Update: Dan_Deng(2003-08-07)
-- Update: Dan_Deng(2003-09-09) ĞŞ¸Ä×°±¸ÊôĞÔÉú³É·½Ê½

Include("\\script\\global\\itemhead.lua")

function main()
	UTask_world42=GetTask(70)
	if (UTask_world42==0) then
		Say("Sèng trªn ®êi, kh«ng cã s¸ch hay ®Ó xem th× thËt lµ buån ch¸n! L·o C¸t Gia ë phİa nam trÊn cã mét quyÓn s¸ch hay, nh­ng ta kh«ng thÓ mÆt dµy mµy dÆm ®Õn m­în h¾n ®­îc.", 2, "T«i ®i m­în gióp «ng/yes", "Muèn xem s¸ch còng ph¶i ®i m­în /no")
	elseif (UTask_world42==2) then
		Talk(1,"","VËy th× c¶m t¹ ng­¬i tr­íc, c¸t l·o §Çu ®ang ë nam trÊn nµy.")
	elseif (UTask_world42==4) then
		Talk(2, "step2", "C¸t Gia muèn dïng 'Di Kiªn Chİ' ®æi 'Kª ThÇn Lôc'.","L·o hå ly ®ã, muèn lµm khã ta ®©y! §­îc råi! PhiÒn ng­¬i mang ®­a cho h¾n")
	elseif ((UTask_world42 == 6) and (HaveItem(189) == 0)) then		-- Êé¶ªÁË
		Talk(1,"","B¹n trÎ! D¸m liÒu nh­ thÕ! T¹i sao l¹i nĞm s¸ch chç ta råi bá ch¹y.")
		AddEventItem(189)
		Msg2Player("NhËn ®­îc Di KiÕn ChØ")
	elseif ((UTask_world42==8) and  (HaveItem(188) == 1)) then
		Talk(3, "WTask70_prise", "Lç Gia ®©y lµ s¸ch cña ngµi cÇn.", "ThÕ th× tèt qu¸.","§©y cã sî Ng­u b× yªu ®¸i, ta kh«ng dïng tÆng cho ng­¬i.")
	else
		Talk(1,"","B¹n trÎ sèng trªn ®êi cÇn ph¶i ®äc nhiÒu s¸ch kh«ng nªn suèt ngµy móa ®ao móa kiÕm.")
	end
end;

function yes()
	Talk(1,"","VËy th× c¶m t¹ ng­¬i tr­íc! C¸t L·o §Çu ®ang ë nam trÊn nµy.")
	SetTask(70,2)
	AddNote("NhËn nhiÖm vô: Gióp Lç Gia ®Õn nam trÊn gÆp C¸t Gia m­în s¸ch. ")
	Msg2Player("NhËn nhiÖm vô: Gióp Lç Gia ®Õn nam trÊn gÆp C¸t Gia m­în s¸ch. ")
end

function no()
end

function step2()
	AddEventItem(189)
	Msg2Player("NhËn ®­îc Di Kiªn Chİ")
	SetTask(70,6)
	AddNote("Tõ Lç Gia lÊy ®­îc Di Kiªn Chİ")
end

function WTask70_prise()
	DelItem(188)
	p1,p2,p3,p4,p5,p6 = RndItemProp(6,10)
	AddItem(0,6,0,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6)
	SetTask(70,10)
	AddRepute(5)		-- ¼ÓÉùÍû5µã
	AddNote("Mang Kª ThÇn Lôc ®­a cho Lç Gia, hoµn thµnh nhiÖm vô. ")
	Msg2Player("NhËn ®­îc mét c¸i ®ai l­ng")
	Msg2Player("Danh väng cña b¹n t¨ng thªm 5 ®iÓm.")
end
