IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\item\\battles\\addmarshalpoint.lua")

function add479()
		level = random(10,20);
		AddSkillState(479, level, 0, 1080 )	--Ôö¼ÓÍæ¼ÒÄÚÆÕÉËº¦
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót néi c«ng hÖ phæ c«ng s¸t th­¬ng : gia t¨ng "..(level*10).."<#> ®iÓm")	
end

function add487()
		level = random(5,10);
		AddSkillState(487, level, 0, 1080 )	--Ôö¼ÓÍæ¼ÒÍâÆÕÉËº¦°Ù·Ö±È
		Msg2Player("<#>Ng­¬i thu ®­îc <color=0xB5FDD7>1 phót ngo¹i c«ng hÖ phæ c«ng s¸t th­¬ng : gia t¨ng"..(level*10).."<#> phÇn tr¨m.")	
end

Tab={add479,add487}

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

