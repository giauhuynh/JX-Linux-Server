Include("\\script\\global\\bil4i3n\\bil4i3n_server_award_activity.lua")

function OnDeath( nNpcIndex )
	local x, y, world = GetNpcPos(nNpcIndex);
	bilActivity_DeathNpcNormalFengLingFerry(world, x, y)
end
