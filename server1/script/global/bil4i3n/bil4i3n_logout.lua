Include("\\script\\global\\bil4i3n\\bil4i3n_worldrank_hook.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_ontimer_player.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_client_ip.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

function bilLogOutMain()
	if GetName() ~= bilNameOfGameMaster then
		bilLogoutTimer()
	end
	
	if GetTaskTemp(254) ~= 0 then
		SetGlbValue(4999, GetGlbValue(4999) - 1)
	end
	
	if bilDenyAfterOpenTopRacing == 1 then
		if GetCamp() == 6 then
			SetCamp(GetTask(5970))
			SetCurCamp(GetTask(5970))
		end
	end
	
	-------------------------------- Save Session for GameMaster on MultiGamesv --------------------------------
	if GetTaskTemp(246) ~= 0 then
		SetTask(5884, tonumber(date("%d%H%M%S")))
	end
	-------------------------------- Save Session for GameMaster on MultiGamesv --------------------------------
	
	bilClientIP:DelPlayer()
end
























