-- 宋金道具令牌,3分钟内,附近己方玩家跑速增加30%,攻速增加50%
-- Liu Kuo
-- 2004.12.18
Include( "\\script\\item\\checkmapid.lua" )

function EatMedicine()
	CastSkill( 492, 1);		--跑速增加30%,攻速增加50%
	Msg2Player("Ngi s� d鬾g m閠 l謓h b礽");
end
