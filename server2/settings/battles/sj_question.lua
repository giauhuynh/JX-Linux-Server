IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\item\\battles\\addmarshalpoint.lua")

function add462()
		level = random(2,10);
		AddSkillState(462, level, 0, 12 )	--增加玩家血量
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7> k衞 d礽 ph鬰 h錳 sinh l鵦 n鱝 gi﹜"..(level*500).."<#>甶觤")	
end


function add463()
		level = random(2,10);
		AddSkillState(463, level, 0, 12 )	--增加玩家内力
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7> k衞 d礽 ph鬰 h錳 n閕 l鵦 n鱝 gi﹜ "..(level*500).."<#> 甶觤")	
end

function add464()
		level = random(1,10);
		AddSkillState(464, level, 0, 540 )	--增加玩家血量持续恢复
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7> k衞 d礽 30 gi﹜ lng m竨 h錳 ph鬰, m鏸 n鯽 gi﹜ h錳 ph鬰 "..(level*100).."<#> 甶觤 ")
end

function add465()
		level = random(1,10);
		AddSkillState(465, level, 0, 540 )	--增加玩家内力持续回复
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7> k衞 d礽 30 gi﹜ n閕 l鵦 h錳 ph鬰, m鏸 n鯽 gi﹜ h錳 ph鬰 "..(level*100).."<#> 甶觤 ")
end

function add466()
		level = random(1,4);
		AddSkillState(466, level, 0, 1080 )
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 b� thng ng t竎 gi秏 b韙 :"..(level*10).."<#>%")
end

function add467()
		level = random(1,4);
		AddSkillState(467, level, 0, 1080 )	--玩家获得中毒时间减少
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 tr髇g c th阨 gian gi秏 b韙 :"..(level*10).."<#>%")
end

function add468()
		level = random(1,4);
		AddSkillState(468, level, 0, 1080 )
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 ch薽 l筰 th阨 gian gi秏 b韙 :"..(level*10).."<#>%")
end

function add469()
		level = random(1,4);
		AddSkillState(469, level, 0, 1080 )	--玩家获得眩晕时间减少
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 h玭 m� th阨 gian gi秏 b韙 :"..(level*10).."<#>%")
end

function add471()
		level = random(2,10);
		AddSkillState(471, level, 0, 12 )	--增加玩家血量和内力
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7> k衞 d礽 n鯽 gi﹜ ch lng m竨 h錳 ph鬰 "..(level*500).."<#> 甶觤 c飊g k衞 d礽 n鯽 gi﹜ ch n閕 l鵦 h錳 ph鬰 "..(level*500).."<#> 甶觤 ")	
end

function add472()
		level = random(1,10);
		AddSkillState(472, level, 0, 540 )	--增加玩家血量和内力持续恢复
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7> k衞 d礽 30 gi﹜ ch lng m竨 h錳 ph鬰 , m鏸 n鯽 gi﹜ h錳 ph鬰 "..(level*100).."<#> 甶觤 c飊g k衞 d礽 30 gi﹜ ch n閕 l鵦 h錳 ph鬰 , m鏸 n鯽 gi﹜ h錳 ph鬰 "..(level*100).."<#> 甶觤 ")
end

function add473()
		level = random(1,7);
		AddSkillState(473, level, 0, 1080 )	--增加玩家普防
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 ph遪g th� v藅 l� : gia t╪g "..(level*10).."<#>%")
end

function add474()
		level = random(1,7);
		AddSkillState(474, level, 0, 1080 )	--增加玩家毒防
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 c ph遪g : gia t╪g "..(level*10).."<#>%")
end

function add475()
		level = random(1,7);
		AddSkillState(475, level, 0, 1080 )	--增加玩家冰防
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 b╪g ph遪g : gia t╪g "..(level*10).."<#>%")
end

function add476()
		level = random(1,7);
		AddSkillState(476, level, 0, 1080 )	--增加玩家火防
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 h醓 ph遪g : gia t╪g "..(level*10).."<#>%")
end

function add477()
		level = random(1,7);
		AddSkillState(477, level, 0, 1080 )	--增加玩家雷防
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 l玦 ph遪g : gia t╪g "..(level*10).."<#>%")
end

function add478()
		level = random(1,4);
		AddSkillState(478, level, 0, 1080 )	--增加玩家全抗
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 t蕋 c� kh竛g t輓h : gia t╪g "..(level*10).."<#>%")	
end

function add479()
		level = random(10,20);
		AddSkillState(479, level, 0, 1080 )	--增加玩家内普伤害
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 n閕 c玭g h� ph� c玭g t鎛 thng : gia t╪g "..(level*10).."<#> 甶觤 ")
end

function add480()
		level = random(1,5);
		AddSkillState(480, level, 0, 1080 )	--增加玩家内毒伤害
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 n閕 c玭g h� c c玭g t鎛 thng : gia t╪g "..(level*10).."<#> 甶觤 ")
end

function add481()
		level = random(10,20);
		AddSkillState(481, level, 0, 1080 )	--增加玩家内冰伤害
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 n閕 c玭g h� b╪g c玭g t鎛 thng : gia t╪g "..(level*10).."<#> 甶觤 ")
end

function add482()
		level = random(10,20);
		AddSkillState(482, level, 0, 1080 )	--增加玩家内火伤害
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 n閕 c玭g h� l鯽 c玭g t鎛 thng : gia t╪g "..(level*10).."<#> 甶觤 ")	
end

function add483()
		level = random(10,20);
		AddSkillState(483, level, 0, 1080 )	--增加玩家内雷伤害
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 n閕 c玭g h� l玦 c玭g t鎛 thng : gia t╪g "..(level*10).."<#> 甶觤 ")
end

function add485()
		level = random(1,5);
		AddSkillState(485, level, 0, 1080 )	--增加玩家外毒伤害
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 ngo筰 c玭g h� c c玭g t鎛 thng : gia t╪g "..(level*10).."<#> 甶觤 ")
end

function add486()
		level = random(1,4);
		AddSkillState(486, level, 0, 1080 )	--增加玩家外冰伤害
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 ngo筰 c玭g h� b╪g c玭g t鎛 thng : gia t╪g "..(level*10).."<#> 甶觤 ")
end

function add487()
		level = random(5,10);
		AddSkillState(487, level, 0, 1080 )	--增加玩家外普伤害百分比
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 ngo筰 c玭g h� ph� c玭g t鎛 thng : gia t╪g "..(level*10).."<#>%")
end

function add488()
		level = random(10,20);
		AddSkillState(488, level, 0, 1080 )	--增加玩家血量上限
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7> k衞 d礽 1 ph髏 lng m竨 thng h筺 gia t╪g :"..(level*100).."<#> 甶觤 ")
end

function add489()
		level = random(10,20);
		AddSkillState(489, level, 0, 1080 )	--增加玩家内力上限
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7> k衞 d礽 1 ph髏 n閕 l鵦 thng h筺 gia t╪g :"..(level*100).."<#> 甶觤 ")
end

function add490()
		level = random(10,20);
		AddSkillState(490, level, 0, 540 )	--增加玩家血量和内力上限
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7> k衞 d礽 30 gi﹜ ch n閕 l鵦 thng h筺 gia t╪g :"..(level*100).."<#> 甶觤 c飊g k衞 d礽 30 gi﹜ ch n閕 l鵦 thng h筺 gia t╪g :"..(level*100).."<#> 甶觤 ")
end

function add493()
		level = random(1,3);
		AddSkillState(493, level, 0, 1080 )	--玩家获得增加跑速
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 t鑓  di ng : gia t╪g "..(level*10).."<#>%")
end

function add495()
		level = random(10,20);
		AddSkillState(495, level, 0, 1080 )	--玩家获得增加跑速
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 c玭g k輈h m謓h trung t� s� : gia t╪g "..(level*10).."<#>%")
end

function add496()
		level = random(1,2);
		AddSkillState(496, level, 0, 1080 )	--玩家获得增加跑速
		Msg2Player("<#>Ngi thu 頲 <color=0xB5FDD7>1 ph髏 v� c玭g ra chi猽 ng t竎 : gia t╪g "..(level*10).."<#>%")
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
		return 0;	-- 删除物品
	end
end

