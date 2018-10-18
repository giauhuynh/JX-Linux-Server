IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\item\\battles\\addmarshalpoint.lua")

function add480() 
level = random(1,5); 
AddSkillState(480, level, 0, 1080 ) -- gia t¨ng nhµ ch¬i bªn trong ®éc tæn th­¬ng 
Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót néi c«ng hÖ ®éc c«ng s¸t th­¬ng : gia t¨ng "..(level*10).."<#> ®iÓm ") 
end 

function add485() 
level = random(1,5); 
AddSkillState(485, level, 0, 1080 ) -- gia t¨ng nhµ ch¬i bªn ngoµi ®éc tæn th­¬ng 
Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót ngo¹i c«ng hÖ ®éc c«ng s¸t th­¬ng : gia t¨ng "..(level*10).."<#> ®iÓm ") 
end

Tab={add480,add485}

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

