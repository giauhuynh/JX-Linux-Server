
function bilReloadScriptS3Relay(bilStringScript)
	local bilValueReceived = LoadScript(bilStringScript)
	if FALSE(bilValueReceived) then
		print("FALSE to LoadScript")
		return 0, bilStringScript
	else
		print("LoadScript Successefull")
		return 1, bilStringScript
	end
end

function bilReloadTaskS3Relay(bilStringTask)
	local bilValueReceived = TaskLoad(bilStringTask)
	if FALSE(bilValueReceived) then
		print("FALSE to LoadTask")
		return 0, bilStringTask
	else
		print("TaskLoad Successefull")
		return 1, bilStringTask
	end
end

function bilReleaseTaskS3Relay(bilStringTask)
	local bilValueReceived = TaskRelease(bilStringTask)
	if FALSE(bilValueReceived) then
		print("FALSE to ReleaseTask")
		return 0, bilStringTask
	else
		print("ReleaseTask Successefull")
		return 1, bilStringTask
	end
end

function bilReloadScriptMultiGamesv(_1)
	print("\t Reload Script 4 MultiGameSv: ".._1)
	return GlobalExecute(format("dw LoadScript([[%s]])",_1))
end

function FALSE(nValue)
	if (nValue == nil or nValue == 0 or nValue == "") then
		return 1
	else
		return nil
	end
end