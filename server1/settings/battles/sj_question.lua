IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\item\\battles\\addmarshalpoint.lua")

function add462()
		level = random(2,10);
		AddSkillState(462, level, 0, 12 )	--Ôö¼ÓÍæ¼ÒÑªÁ¿
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7> kĞo dµi phôc håi sinh lùc n÷a gi©y"..(level*500).."<#>®iÓm")	
end


function add463()
		level = random(2,10);
		AddSkillState(463, level, 0, 12 )	--Ôö¼ÓÍæ¼ÒÄÚÁ¦
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7> kĞo dµi phôc håi néi lùc n÷a gi©y "..(level*500).."<#> ®iÓm")	
end

function add464()
		level = random(1,10);
		AddSkillState(464, level, 0, 540 )	--Ôö¼ÓÍæ¼ÒÑªÁ¿³ÖĞø»Ö¸´
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7> kĞo dµi 30 gi©y l­îng m¸u håi phôc, mçi nöa gi©y håi phôc "..(level*100).."<#> ®iÓm ")
end

function add465()
		level = random(1,10);
		AddSkillState(465, level, 0, 540 )	--Ôö¼ÓÍæ¼ÒÄÚÁ¦³ÖĞø»Ø¸´
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7> kĞo dµi 30 gi©y néi lùc håi phôc, mçi nöa gi©y håi phôc "..(level*100).."<#> ®iÓm ")
end

function add466()
		level = random(1,4);
		AddSkillState(466, level, 0, 1080 )
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót bŞ th­¬ng ®éng t¸c gi¶m bít :"..(level*10).."<#>%")
end

function add467()
		level = random(1,4);
		AddSkillState(467, level, 0, 1080 )	--Íæ¼Ò»ñµÃÖĞ¶¾Ê±¼ä¼õÉÙ
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót tróng ®éc thêi gian gi¶m bít :"..(level*10).."<#>%")
end

function add468()
		level = random(1,4);
		AddSkillState(468, level, 0, 1080 )
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót chËm l¹i thêi gian gi¶m bít :"..(level*10).."<#>%")
end

function add469()
		level = random(1,4);
		AddSkillState(469, level, 0, 1080 )	--Íæ¼Ò»ñµÃÑ£ÔÎÊ±¼ä¼õÉÙ
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót h«n mª thêi gian gi¶m bít :"..(level*10).."<#>%")
end

function add471()
		level = random(2,10);
		AddSkillState(471, level, 0, 12 )	--Ôö¼ÓÍæ¼ÒÑªÁ¿ºÍÄÚÁ¦
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7> kĞo dµi nöa gi©y ®İch l­îng m¸u håi phôc "..(level*500).."<#> ®iÓm cïng kĞo dµi nöa gi©y ®İch néi lùc håi phôc "..(level*500).."<#> ®iÓm ")	
end

function add472()
		level = random(1,10);
		AddSkillState(472, level, 0, 540 )	--Ôö¼ÓÍæ¼ÒÑªÁ¿ºÍÄÚÁ¦³ÖĞø»Ö¸´
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7> kĞo dµi 30 gi©y ®İch l­îng m¸u håi phôc , mçi nöa gi©y håi phôc "..(level*100).."<#> ®iÓm cïng kĞo dµi 30 gi©y ®İch néi lùc håi phôc , mçi nöa gi©y håi phôc "..(level*100).."<#> ®iÓm ")
end

function add473()
		level = random(1,7);
		AddSkillState(473, level, 0, 1080 )	--Ôö¼ÓÍæ¼ÒÆÕ·À
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót phßng thñ vËt lı : gia t¨ng "..(level*10).."<#>%")
end

function add474()
		level = random(1,7);
		AddSkillState(474, level, 0, 1080 )	--Ôö¼ÓÍæ¼Ò¶¾·À
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót ®éc phßng : gia t¨ng "..(level*10).."<#>%")
end

function add475()
		level = random(1,7);
		AddSkillState(475, level, 0, 1080 )	--Ôö¼ÓÍæ¼Ò±ù·À
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót b¨ng phßng : gia t¨ng "..(level*10).."<#>%")
end

function add476()
		level = random(1,7);
		AddSkillState(476, level, 0, 1080 )	--Ôö¼ÓÍæ¼Ò»ğ·À
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót háa phßng : gia t¨ng "..(level*10).."<#>%")
end

function add477()
		level = random(1,7);
		AddSkillState(477, level, 0, 1080 )	--Ôö¼ÓÍæ¼ÒÀ×·À
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót l«i phßng : gia t¨ng "..(level*10).."<#>%")
end

function add478()
		level = random(1,4);
		AddSkillState(478, level, 0, 1080 )	--Ôö¼ÓÍæ¼ÒÈ«¿¹
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót tÊt c¶ kh¸ng tİnh : gia t¨ng "..(level*10).."<#>%")	
end

function add479()
		level = random(10,20);
		AddSkillState(479, level, 0, 1080 )	--Ôö¼ÓÍæ¼ÒÄÚÆÕÉËº¦
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót néi c«ng hÖ phæ c«ng tæn th­¬ng : gia t¨ng "..(level*10).."<#> ®iÓm ")
end

function add480()
		level = random(1,5);
		AddSkillState(480, level, 0, 1080 )	--Ôö¼ÓÍæ¼ÒÄÚ¶¾ÉËº¦
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót néi c«ng hÖ ®éc c«ng tæn th­¬ng : gia t¨ng "..(level*10).."<#> ®iÓm ")
end

function add481()
		level = random(10,20);
		AddSkillState(481, level, 0, 1080 )	--Ôö¼ÓÍæ¼ÒÄÚ±ùÉËº¦
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót néi c«ng hÖ b¨ng c«ng tæn th­¬ng : gia t¨ng "..(level*10).."<#> ®iÓm ")
end

function add482()
		level = random(10,20);
		AddSkillState(482, level, 0, 1080 )	--Ôö¼ÓÍæ¼ÒÄÚ»ğÉËº¦
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót néi c«ng hÖ löa c«ng tæn th­¬ng : gia t¨ng "..(level*10).."<#> ®iÓm ")	
end

function add483()
		level = random(10,20);
		AddSkillState(483, level, 0, 1080 )	--Ôö¼ÓÍæ¼ÒÄÚÀ×ÉËº¦
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót néi c«ng hÖ l«i c«ng tæn th­¬ng : gia t¨ng "..(level*10).."<#> ®iÓm ")
end

function add485()
		level = random(1,5);
		AddSkillState(485, level, 0, 1080 )	--Ôö¼ÓÍæ¼ÒÍâ¶¾ÉËº¦
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót ngo¹i c«ng hÖ ®éc c«ng tæn th­¬ng : gia t¨ng "..(level*10).."<#> ®iÓm ")
end

function add486()
		level = random(1,4);
		AddSkillState(486, level, 0, 1080 )	--Ôö¼ÓÍæ¼ÒÍâ±ùÉËº¦
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót ngo¹i c«ng hÖ b¨ng c«ng tæn th­¬ng : gia t¨ng "..(level*10).."<#> ®iÓm ")
end

function add487()
		level = random(5,10);
		AddSkillState(487, level, 0, 1080 )	--Ôö¼ÓÍæ¼ÒÍâÆÕÉËº¦°Ù·Ö±È
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót ngo¹i c«ng hÖ phæ c«ng tæn th­¬ng : gia t¨ng "..(level*10).."<#>%")
end

function add488()
		level = random(10,20);
		AddSkillState(488, level, 0, 1080 )	--Ôö¼ÓÍæ¼ÒÑªÁ¿ÉÏÏŞ
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7> kĞo dµi 1 phót l­îng m¸u th­îng h¹n gia t¨ng :"..(level*100).."<#> ®iÓm ")
end

function add489()
		level = random(10,20);
		AddSkillState(489, level, 0, 1080 )	--Ôö¼ÓÍæ¼ÒÄÚÁ¦ÉÏÏŞ
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7> kĞo dµi 1 phót néi lùc th­îng h¹n gia t¨ng :"..(level*100).."<#> ®iÓm ")
end

function add490()
		level = random(10,20);
		AddSkillState(490, level, 0, 540 )	--Ôö¼ÓÍæ¼ÒÑªÁ¿ºÍÄÚÁ¦ÉÏÏŞ
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7> kĞo dµi 30 gi©y ®İch néi lùc th­îng h¹n gia t¨ng :"..(level*100).."<#> ®iÓm cïng kĞo dµi 30 gi©y ®İch néi lùc th­îng h¹n gia t¨ng :"..(level*100).."<#> ®iÓm ")
end

function add493()
		level = random(1,3);
		AddSkillState(493, level, 0, 1080 )	--Íæ¼Ò»ñµÃÔö¼ÓÅÜËÙ
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót tèc ®é di ®éng : gia t¨ng "..(level*10).."<#>%")
end

function add495()
		level = random(10,20);
		AddSkillState(495, level, 0, 1080 )	--Íæ¼Ò»ñµÃÔö¼ÓÅÜËÙ
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót c«ng kİch mÖnh trung tû sè : gia t¨ng "..(level*10).."<#>%")
end

function add496()
		level = random(1,2);
		AddSkillState(496, level, 0, 1080 )	--Íæ¼Ò»ñµÃÔö¼ÓÅÜËÙ
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót vâ c«ng ra chiªu ®éng t¸c : gia t¨ng "..(level*10).."<#>%")
end

Tab={add462,add463,add464,add465,add466,add467,add468,add469,add471,add472,add473,add474,add475,add476,add477,add478,add479,add480,add481,add482,add483,add485,add486,add487,add488,add489,add490,add493,add495,add496}

function IsPickable( nItemIndex, nPlayerIndex )
	return 1;
end

function PickUp( nItemIndex, nPlayerIndex )
	if( IsMyItem( nItemIndex ) ) then
		i = random(getn(Tab))
		Tab[i]();
		BT_SetData(PL_GETITEM, BT_GetData(PL_GETITEM) + 1);
		bt_addtotalpoint(BT_GetTypeBonus(PL_GETITEM, GetCurCamp()))
		checkbattlerule(BT_GetTypeBonus(PL_GETITEM, GetCurCamp()))
		BT_SortLadder();
		BT_BroadSelf();
		return 0;	-- É¾³ıÎïÆ·
	end
end

