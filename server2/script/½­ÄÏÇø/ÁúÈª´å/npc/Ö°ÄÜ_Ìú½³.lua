--ÁúÈª´å Ö°ÄÜ Ìú½³
--ÁúÈª´åĞ¢ÊÖÈÎÎñ£ºĞŞµ¶
-- By: Dan_Deng(2003-09-03)
Include("\\script\\global\\global_tiejiang.lua")
Include("\\Script\\Global\\TimerHead.lua")

TIEJIANG_DIALOG = "<dec><npc>Muèn mua lo¹i binh khİ nµo? T¹i ®©y rÊt nhiÒu binh khİ næi tiÕng, kh«ng tin ng­¬i ®i hái thanh danh cña Long TuyÒn Hoµng Gia xen!"

function main(sel)
	UTask_world19 = GetTask(19)
	if(UTask_world19 == 2) then
		if (HaveItem(229) == 1) then
			tiejiang_village("<dec><npc>C©y ®ao nµy h­ háng nÆng nÒ, ph¶i bá kh«ng İt tiÒn ®Ó tu söa nã. TiÒn söa lµ 120 l­îng ng­¬i cã söa kh«ng?", "§­a tiÒn söa ®ao/W19_repair")
		else
			Talk(2,"","M· lçi 'LTT001' vui lßng chôp h×nh vµ göi ®Õn BQT ®Ó ®­îc fix lçi","ËãÁË! ÎÒµÄµ¶ÍüÔÚÅí·Å´¦ÁË! ÎÒ»á»ØÀ´ÄÃµÄ")
		end
	elseif (UTask_world19 == 4) then
		tiejiang_village("<dec><npc>C©y ®ao cña ®¹i hiÖp ®ang ®­îc tu söa. Sau "..GetRestSec(7).."<#> gi©y h·y quay l¹i lÊy.")
	elseif (UTask_world19 == 6) then
		Talk(2,"","§ao cña ng­¬i ®· söa xong råi!","Tèt l¾m! C¶m ¬n ng­¬i.")
		SetTask(19,8)
		AddEventItem(230)
		AddNote("NhËn ®­îc c©y ®ao Thî rÌn ®· söa xong.")
		Msg2Player("NhËn ®­îc c©y ®ao Thî rÌn ®· söa xong.")
	elseif (UTask_world19 == 8) and (HaveItem(230) == 0) then
		Talk(1,"","§ao cña ng­¬i ®· söa xong råi.")
		AddEventItem(230)
		Msg2Player("NhËn ®­îc c©y ®ao Thî rÌn ®· söa xong..")
	else
		tiejiang_village();
	end
end;

function W19_repair()
	if (GetTimerId() > 0) then		-- ÁíÓĞ¼ÆÊ±Æ÷ÔÚÔËĞĞÖĞ
		Talk(1,"","ÄLTT58ãÕıÔÚ½øĞĞÕâÑù½ô¼±µÄÈÎÎñ£¬»¹¢ÒÅÜ?")
	else
		if (GetCash() < 120) then
			Talk(1,"","Ng­¬i quªn mang theo tiÒn ­?")
		else
			Talk(1,"","Ok råi hÑn ng­¬i 2 giê sau ®Õn lÊy ®ao nhĞ.")
			Pay(120)
			SetTask(19,4)
			DelItem(229)
			SetTimer(2 * CTime * FramePerSec, 7)
			AddNote("Giao ®ao cho thî rÌn söa, hai giê sau quay l¹i lÊy.")
			Msg2Player("Giao ®ao cho thî rÌn söa, hai giê sau quay l¹i lÊy.")
		end
	end
end;

function yes()
Sale(28);  				--µ¯³ö½»Ò×¿ò
end;
