IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\item\\battles\\addmarshalpoint.lua")

function add471() 
level = random(2,10); 
AddSkillState(471, level, 0, 12 ) -- gia t¨ng nhµ ch¬i l­îng m¸u cïng néi lùc 
Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7> kÐo dµi nöa gi©y l­îng m¸u håi phôc "..(level*500).."<#> ®iÓm cïng kÐo dµi nöa gi©y ®Ých néi lùc håi phôc "..(level*500).."<#> ®iÓm.") 
end 

function add472() 
level = random(1,10); 
AddSkillState(472, level, 0, 540 ) -- gia t¨ng nhµ ch¬i l­îng m¸u cïng néi lùc kÐo dµi kh«i phôc 
Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7> kÐo dµi 30 gi©y l­îng m¸u håi phôc, mçi nöa gi©y håi phôc "..(level*100).."<#> ®iÓm cïng kÐo dµi 30 gi©y ®Ých néi lùc håi phôc, mçi nöa gi©y håi phôc "..(level*100).."<#> ®iÓm.") 
end 

function add490() 
level = random(10,20); 
AddSkillState(490, level, 0, 540 ) -- gia t¨ng nhµ ch¬i l­îng m¸u cïng néi lùc th­îng h¹n 
Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7> kÐo dµi 30 gi©y l­îng m¸u th­îng h¹n gia t¨ng :"..(level*100).."<#> ®iÓm cïng kÐo dµi 30 gi©y néi lùc th­îng h¹n gia t¨ng :"..(level*100).."<#> ®iÓm.") 
end

Tab={add471,add472,add490}

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
		return 0;	-- É¾³ýÎïÆ·
	end
end

