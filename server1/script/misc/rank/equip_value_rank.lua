
-- Include("\\script\\global\\bil4i3n\\bil4i3n_worldrank.lua")

function SendRankData(handle)
	-- local bilRankValue = bilWorldRank:GetWorldRank()
	local nResultHandle = OB_Create() 
	OB_PushInt(nResultHandle, 10268) 
	OB_PushInt(nResultHandle, 0) 
	-- OB_PushString(nResultHandle,"\t\tTh� h�ng giang h�: \n\n\t\t\t\t\tT�n : "..GetName().." \n\n\t\t\t\t\tH�ng: "..bilRankValue.."\n"
		-- .."\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
	OB_PushString(nResultHandle, "N/A")
	SendScriptData(2, nResultHandle) 
	OB_Release(nResultHandle) 
end
