--description: ¸½ºşÇø °İ¸êÏØ Ò©µêµÏ°å¶Ô»°£¨Ììİõ°ï40¼¶ÈÎÎñ¡¢Ğ¢ÊÖÈÎÎñĞ¡ÓæµùµùµÄ²¡£©
--author: yuanlan	
--date: 2003/4/26
-- Update: Dan_Deng(2003-08-10)
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
function main(sel)
	UTask_tw = GetTask(3)
	UTask_world18 = GetTask(46)
	if (UTask_tw == 40*256+20) then						-- Ììİõ40¼¶ÈÎÎñ
		Talk(5, "L40_tw_talk2", "ht1", "ht2", "ht3<color=Red>4<color> 5<color=Red>6<color>.7", "ht8")
	elseif(UTask_world18 == 1) then				-- Ğ¢ÊÖ´åĞ¡ÓæÈÎÎñ
		Talk(1,"","H¶?Bè cña TiÓu Ng­ bÖnh µ? Ng­¬i ®Õn chËm råi! Ta võa b¸n viªn Tú Bµ hoµn cuèi cïng cho ®Ö tö Thiªn V­¬ng. Hay lµ ng­¬i hái thö «ng ta xem. ")
		Msg2Player("Chñ d­îc ®iÕm cho biÕt: Tú Bµ Hoµn ®· b¸n hÕt. B¹n h·y ®i hái thö ®Ö tö Thiªn V­¬ng Bang. ")
		AddNote("Chñ d­îc ®iÕm cho biÕt: Tú Bµ Hoµn ®· b¸n hÕt. B¹n h·y ®i hái thö ®Ö tö Thiªn V­¬ng Bang. ")
	elseif (UTask_tw == 40*256+50) then
		Say("ht12<color=Red>13´<color> 14<olor=Red>115<color> 16<color=Red>17<color>, 18<color=Red>19<color>20", 2, "21/yes", "22/no")
	else							-- ·ÇÈÎÎñ×´Ì¬
		Say("Bæn tiÖm ®Òu lµ thÇn d­îc! Cã bÖnh sÏ khái bÖnh, kh«ng bÖnh sÏ kháe, gi¸ c¶ ph¶i ch¨ng. Mua mét İt chø? ", 3, "Giao dŞch/yes", "Ta ®Õn nhËn nhiÖm vô s¬ nhËp/yboss","Kh«ng giao dŞch/no");
	end
end;

function L40_tw_talk2()
	Talk(2,"","ht23<color=Red>24<color> 26<color=Red>27<color>28<color=Red>29<color>,30<color=Red>31<color>32", "33")
	SetTask(3, 40*256+50)								-- Ììİõ40¼¶ÈÎÎñ
	AddNote("ht34")
	Msg2Player("ht35.")
end;

function yes()
	Sale(39);  			--µ¯³ö½»Ò×¿ò
end;

function no()
end;
