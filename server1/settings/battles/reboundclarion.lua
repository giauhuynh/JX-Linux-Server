Include( "\\script\\item\\checkmapid.lua" )

function EatMedicine()
	CastSkill( 510, 1);		-- 3分钟内，减少附近敌方玩家伤害反弹20%
	Msg2Player("Ngi s� d鬾g 1 c竔 kh竛g n chi gi竎.");
end
