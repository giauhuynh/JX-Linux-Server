-- ½­ÄÏÇø ÁÙ°² ¢·ÈË_ÁÙ°²¹«²î.lua £¨ÏûÃğ²É»¨ÔôÈÎÎñ£©
-- By: Dan_Deng(2004-05-27)

Include("\\script\\global\\repute_head.lua")

function main(sel)
	Uworld43 = GetTask(43)
--	if (Uworld43 < 10) and (GetLevel() >= 70) and (GetReputeLevel(GetRepute()) >= 6) then
		--		Say(10713 ,2,"¼éÒù¸¾Å®ÄËÊ®¶ñ²»ÉæÖ®×ï£¬ÎÒ¼ÈÖªÏş£¬×ÔÈ»Òª¹Ü¡£/U43_get","Ã»ÓĞ/no")
	if (Uworld43 == 40) and (HaveItem(381) == 1) then
		Talk(6,"U43_40","Qu¶ nhiªn kh«ng ngoµi dù ®o¸n cña ta H¸i hoa tÆc ®¨ng trèn ë L«i v©n tr¹i.","Chİnh lµ nã!","Chİnh lµ h¾n, nguyªn xuÊt th©n väng téc, sau khi chñ tr¹i qua ®êi h¾n tiÕp qu¶n. kh«ng biÕt ph¸t d­¬ng L«i v©n tr¹i, l¹i gi¶i t¸n s¬n tr¹i ®i lµm kÏ h¸i hoa tÆc kh«ng biÕt h¾n ®· h¹i biÕt bao nhiªu c« n­¬ng trong tr¾ng, h¾n cã khinh c«ng rÊt tèt v× vËy còng ch­a ai b¾t ®­îc h¾n","Th©n thñ cña h¾n rÊt kh¸ nÕu kh«ng ta còng kh«ng cÇn ng­êi trî gióp.","H¾n ®ang trèn ë l«i v©n tr¹i mau t×m ®Õn ®ã.","Mau lªn ®­êng b¾t h¾n nÕu kh«ng cßn nhiÒu c« g¸i bŞ h¾n b¾t")
	elseif (Uworld43 == 80) and (HaveItem(382) == 1) then
		Talk(1,"U43_80","Qu¶ nhiªn kh«ng ngoµi dù ®o¸n cña ta, h¾n ®ang cè dÊu tung tİch.")
	elseif (Uworld43 == 10) then
		Talk(1,"","L©u nh­ vËy vÉn ch­a t×m ®­îc H¸i hoa tÆc")
	elseif (Uworld43 == 20) then
		Talk(1,"","Kh«ng t×m thÊy h¾n ­ ,cã cÇn ta chØ ®­êng?")
	else
		Talk(1,"","Quan sai : ë l©m an nµy ai d¸m lµm lo¹n th× ®õng m¬ t­ëng tho¸t khâi tay ta.")
	end
end;

function U43_get()
	Talk(1,"","Theo ta ®iÒu tra th× h¸i hoa tÆc trªn tay cÇm c©y qu¹t,chóng th­êng xuÊt hiÖn ë thôc s¬n vµ l«i v©n ®İch s¬n tr¹i,nh­ng tr­íc hÕt ng­¬i nªn vµo b¸i kiÕn L«i bang chñ, h¾n ch¾c biÕt nhiÒu h¬n, nh­ng h·y cÈn thËn ng­êi nµy rÊt ©m hiÓm.")
	SetTask(43,10)
	AddNote("C«ng sai thµnh l©m an : tiªu diÖt h¸i hoa tÆc, th¨m dß t×nh h×nh cña bän chóng.. ")
	Msg2Player("C«ng sai thµnh l©m an : tiªu diÖt h¸i hoa tÆc, th¨m dß t×nh h×nh cña bän chóng..")
end;

function U43_40()
	SetTask(43,50)
	Msg2Player("Sau ®ã ®i t×m v©n cÇm v©n thi) ")
end

function U43_80()
	SetTask(43,90)
	Msg2Player("t×m kiÕm v« İch chóng kh«ng trèn ë l©m an.")
end

function no()
end;
