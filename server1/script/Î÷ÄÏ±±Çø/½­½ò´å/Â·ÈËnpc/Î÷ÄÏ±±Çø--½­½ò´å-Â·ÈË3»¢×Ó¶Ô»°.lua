--Î÷ÄÏ±±Çø ½­½ò´å Â·ÈË3»¢×Ó¶Ô»°
--½­½ò´åĞÂÊÖÈÎÎñ£º»¢×ÓµÄµ¯¹­
--suyu
-- Update: Dan_Deng(2003-08-11)
-- Update: Dan_Deng(2003-09-09) ĞŞ¸Ä×°±¸ÊôĞÔÉú³É·½Ê½

Include("\\script\\global\\itemhead.lua")

function main(sel)
--	UTask_world18 = GetTask(46);
	UTask_world45 = GetTask(45)
	if ((UTask_world45 == 0) and (GetLevel() >= 5)) then		-- ÈÎÎñÆô¶¯£¬ĞèÒª5¼¶ÒÔÉÏ
		if(GetSex() == 0)then
	Say("§¹i ca! Thî rÌn høa tÆng ta mét c©y n¸, kh«ng biÕt ®· lµm xong ch­a, h·y hái «ng Êy giïm ta!", 2 , "§Ó ta hái gióp/yes", "Ta ®ang bËn l¾m/no")
		else
	Say("Tû tû! Thî rÌn høa tÆng ta mét c©y n¸, kh«ng biÕt ®· lµm xong ch­a, h·y hái «ng Êy giïm ta!", 2 , "§Ó ta hái gióp/yes", "Ta ®ang bËn l¾m/no")
		end
	elseif(UTask_world45 == 10) then
		Talk(1,"","Mau ®i hái ®¹i thóc lµm xong ch­a?")
	elseif(UTask_world45 == 20) then
		if(HaveItem(176) == 1) then
			Talk(1,"","Tèt qu¸, tèt qu¸! Chót n÷a ta sÏ ®i t×m Thiªn Thiªn ch¬i. Thanh vò khİ nµy ta t×m ®­îc ngoµi th«n, ta gi÷ ë ®©y ch¼ng lµm g×, th«i th× göi tÆng ng­¬i!")
			DelItem(176)
			p1,p2,p3,p4,p5,p6 = RndItemProp(6,15)
			AddItem(0,0,random(0,5),2,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6)		-- Ò»°ÑËæ»ú¶ş¼¶ÎäÆ÷
			SetTask(45, 100)
			AddRepute(8)
			AddNote("Hoµn thµnh nhiÖm vô mang n¸ vÒ cho Hæ Tö.")
			Msg2Player("Hoµn thµnh nhiÖm vô mang n¸ vÒ cho Hæ Tö.")
			Msg2Player("NhËn ®­îc mét binh khİ")
			Msg2Player("Danh väng cña b¹n t¨ng thªm 8 ®iÓm.")
		else
			Talk(1,"","T¹i sao tuyÕt vÉn ch­a r¬i nhØ? Ta thİch nhÊt lµ ch¹y ®ïa trªn tuyÕt!")
		end
	else
		if (random(0,1) == 0) then
			Talk(1,"","Ai da! Kh«ng biÕt thóc thóc Trî rÌn ®· lµm xong n¸ cho ta ch­a? Tay nghÒ cña ®¹i thóc rÊt giái. TiÖm thiÕt kiÕm næi tiÕng cña «ng gÇn xa ®Òu biÕt tiÕng, t¹o ra nh÷ng läa vò khİ tuyÖt vêi!")
		else
			Talk(1,"","T¹i sao tuyÕt vÉn ch­a r¬i nhØ? Ta thİch nhÊt lµ ch¹y ®ïa trªn tuyÕt!")
		end
	end
end;

function yes()
	Talk(1,"","TiÖm cña thóc thóc Thî rÌn n»m ngay cña th«n, rÊt dÔ t×m!")
	SetTask(45, 10)
	AddNote("TiÕp nhËn nhiÖm vô: Thay Hæ Tö ®Õn hái ng­êi thî rÌn ®· lµm xong c©y n¸ ch­a?")
	Msg2Player("TiÕp nhËn nhiÖm vô: Thay Hæ Tö ®Õn hái ng­êi thî rÌn ®· lµm xong c©y n¸ ch­a?")
end;

function no()
	Talk(1,"","Hic vËy ®Ó ta nhê ng­êi kh¸c!")
end;
