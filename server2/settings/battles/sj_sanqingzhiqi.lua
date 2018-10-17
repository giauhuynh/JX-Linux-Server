IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\item\\battles\\addmarshalpoint.lua")

function add505() 
castskill(505, 1 ) -- toµn thÓ h«n mª 
msg2player("<#>Ng­¬i sö dông mét <color=0xb5fdd7> ba thanh khİ, khiÕn cho ng­¬i ®Şch nh©n ë chung quanh toµn thÓ h«n mª.") 
end 

function add506() 
castskill(506, 1 ) -- toµn thÓ ®ãng b¨ng 
msg2player("<#>Ng­¬i sö dông mét <color=0xb5fdd7> ba thanh khİ, khiÕn cho ng­¬i ®Şch nh©n ë chung quanh toµn thÓ ®ãng b¨ng.") 
end 

function add507() 
castskill(507, 1 ) -- toµn thÓ tróng ®éc 
msg2player("<#>Ng­¬i sö dông mét <color=0xb5fdd7> ba thanh khİ, khiÕn cho ng­¬i ®Şch nh©n ë chung quanh toµn thÓ tróng ®éc.") 
end 

function add508() 
castskill(508, 1 ) -- toµn thÓ chËm l¹i 
msg2player("<#>Ng­¬i sö dông mét <color=0xb5fdd7> ba thanh khİ, khiÕn cho ng­¬i ®Şch nh©n ë chung quanh toµn thÓ chËm l¹i .") 
end

Tab={add505,add506,add507,add508}

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

