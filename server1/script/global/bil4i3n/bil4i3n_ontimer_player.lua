Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
IL("TITLE")
IL("TIMER")

-- Timer ID: 115

function bilCallOnTimerPlayer()
	local a
	
	if type(bilAllowOnTimerOnPlayer_Time) == "table" then
		a = random(bilAllowOnTimerOnPlayer_Time[1], bilAllowOnTimerOnPlayer_Time[2])
	else
		a = bilAllowOnTimerOnPlayer_Time
	end

	if bilAllowOnTimerOnPlayer == 1 then
		SetTimer(a * 18, 115)
	end
end

function bilLogoutTimer()
	if bilAllowOnTimerOnPlayer == 1 then
		StopTimer()
	end
end

function OnTimer()
	-- print(">> [[BIL-ONTIMER-PLAYER]] Call Function")
	if bilAllowOnTimerOnPlayer == 1 then
		if bilAllowOnTimerOnPlayer_SaveNow == 1 then
			SaveNow()
		end
		if bilAllowOnTimerOnPlayer_SaveQuickly == 1 then
			SaveQuickly()
		end
		if bilAllowOnTimerOnPlayer_CheckTitle == 1 then
			if GetTask(1122) ~= 0 then
				local bilTitleActive = GetTask(1122)
				if (Title_GetActiveTitle() == 0) then
					-- Title_RemoveTitle(bilTitleActive)
					Title_ActiveTitle(bilTitleActive)
				end
			end
		end
	else
		TM_StopTimer(115)
	end
end