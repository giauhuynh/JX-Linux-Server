-- ÁÙ°²¡¡¢·ÈË¡¡¶¡ÀÚ
-- by£ºDan_Deng(2003-09-16)

-- ¸÷¸ö¼¶±ğµÄÍ¬°é¾çÇéÈÎÎñÊµÌå´¦ÀíÎÄ¼ş
Include ("\\script\\task\\partner\\master\\partner_master_main_03.lua");

function main()

	-- ¾çÇéÆª
	if taskProcess_003_02:doTaskEntity()~=0 then return end;
	if taskProcess_003_04:doTaskEntity()~=0 then return end;

	-- ĞŞÁ¶Æª
	if rewindProcess_003_02:doTaskEntity()~=0 then return end;
	if rewindProcess_003_04:doTaskEntity()~=0 then return end;


	Talk(1,"","§inh viªn ngo¹i : bän giÆc kim ®Òu lµ h÷u dòng v« m­u, lµm sao cã thÓ ®¸nh l¹i nhµ tèng cña ta ®­îc.")

end;
