IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\item\\battles\\addmarshalpoint.lua")

function add483() 
level = random(10,20); 
AddSkillState(483, level, 0, 1080 ) -- gia t¨ng nhµ ch¬i bªn trong l«i tæn th­¬ng 
Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót néi c«ng hÖ l«i c«ng s¸t th­¬ng : gia t¨ng "..(level*10).."<#> ®iÓm ") 
end 

function add499() 
level = random(10,30); 
AddSkillState(499, level, 0, 1080 ) -- gia t¨ng nhµ ch¬i bªn ngoµi l«i tæn th­¬ng 
Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót ngo¹i c«ng hÖ l«i c«ng s¸t th­¬ng : gia t¨ng "..(level*10).."<#> ®iÓm ") 
end

Tab={add483,add499}

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

