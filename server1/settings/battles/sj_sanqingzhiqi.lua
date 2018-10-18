IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\item\\battles\\addmarshalpoint.lua")

function add505() 
castskill(505, 1 ) -- to�n th� h�n m� 
msg2player("<#>Ng��i s� d�ng m�t <color=0xb5fdd7> ba thanh kh�, khi�n cho ng��i ��ch nh�n � chung quanh to�n th� h�n m�.") 
end 

function add506() 
castskill(506, 1 ) -- to�n th� ��ng b�ng 
msg2player("<#>Ng��i s� d�ng m�t <color=0xb5fdd7> ba thanh kh�, khi�n cho ng��i ��ch nh�n � chung quanh to�n th� ��ng b�ng.") 
end 

function add507() 
castskill(507, 1 ) -- to�n th� tr�ng ��c 
msg2player("<#>Ng��i s� d�ng m�t <color=0xb5fdd7> ba thanh kh�, khi�n cho ng��i ��ch nh�n � chung quanh to�n th� tr�ng ��c.") 
end 

function add508() 
castskill(508, 1 ) -- to�n th� ch�m l�i 
msg2player("<#>Ng��i s� d�ng m�t <color=0xb5fdd7> ba thanh kh�, khi�n cho ng��i ��ch nh�n � chung quanh to�n th� ch�m l�i .") 
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
		return 0;	-- ɾ����Ʒ
	end
end

