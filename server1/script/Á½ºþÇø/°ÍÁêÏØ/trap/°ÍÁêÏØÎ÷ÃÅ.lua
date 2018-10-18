--两湖区 巴陵县西门 战斗状态切换Trap

-- Trap 10 h

Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")

function main(sel)

	if bilCheckDuaTop:FuncMain() then 
		return NewWorld(53, 1629, 3176)
	end

if ( GetFightState() == 0 ) then	-- 玩家处于非战斗状态，即在城内
	SetPos(1539, 3112)		-- 设置走出Trap点，目的点在城外	
	SetFightState(1)		-- 转换为战斗状态
else			       		-- 玩家处于战斗状态，即在城外
	SetPos(1542, 3116)		-- 设置走出Trap点，目的点在城内	
	SetFightState(0)		-- 转换为非战斗状态
end;
	AddStation(10)			-- 记录角色曾经到过巴陵县
	SetProtectTime(18*3) --三秒保护时间
	AddSkillState(963, 1, 0, 18*3) 		
end;