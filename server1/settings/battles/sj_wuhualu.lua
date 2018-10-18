IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\item\\battles\\addmarshalpoint.lua")

function add471() 
level = random(2,10); 
AddSkillState(471, level, 0, 12 ) -- gia t�ng nh� ch�i l��ng m�u c�ng n�i l�c 
Msg2Player("<#>Ng��i thu ���c <color=0xB5FDD7> k�o d�i n�a gi�y l��ng m�u h�i ph�c "..(level*500).."<#> �i�m c�ng k�o d�i n�a gi�y ��ch n�i l�c h�i ph�c "..(level*500).."<#> �i�m.") 
end 

function add472() 
level = random(1,10); 
AddSkillState(472, level, 0, 540 ) -- gia t�ng nh� ch�i l��ng m�u c�ng n�i l�c k�o d�i kh�i ph�c 
Msg2Player("<#>Ng��i thu ���c <color=0xB5FDD7> k�o d�i 30 gi�y l��ng m�u h�i ph�c, m�i n�a gi�y h�i ph�c "..(level*100).."<#> �i�m c�ng k�o d�i 30 gi�y ��ch n�i l�c h�i ph�c, m�i n�a gi�y h�i ph�c "..(level*100).."<#> �i�m.") 
end 

function add490() 
level = random(10,20); 
AddSkillState(490, level, 0, 540 ) -- gia t�ng nh� ch�i l��ng m�u c�ng n�i l�c th��ng h�n 
Msg2Player("<#>Ng��i thu ���c <color=0xB5FDD7> k�o d�i 30 gi�y l��ng m�u th��ng h�n gia t�ng :"..(level*100).."<#> �i�m c�ng k�o d�i 30 gi�y n�i l�c th��ng h�n gia t�ng :"..(level*100).."<#> �i�m.") 
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
		return 0;	-- ɾ����Ʒ
	end
end

