IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\item\\battles\\addmarshalpoint.lua")

function add479()
		level = random(10,20);
		AddSkillState(479, level, 0, 1080 )	--������������˺�
		Msg2Player("<#>Ng��i thu ���c <color=0xB5FDD7>1 ph�t n�i c�ng h� ph� c�ng s�t th��ng : gia t�ng "..(level*10).."<#> �i�m")	
end

function add487()
		level = random(5,10);
		AddSkillState(487, level, 0, 1080 )	--������������˺��ٷֱ�
		Msg2Player("<#>Ng��i thu ���c <color=0xB5FDD7>1 ph�t ngo�i c�ng h� ph� c�ng s�t th��ng : gia t�ng"..(level*10).."<#> ph�n tr�m.")	
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
		return 0;	-- ɾ����Ʒ
	end
end

