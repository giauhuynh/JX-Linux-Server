
-- Include("\\script\\global\\bil4i3n\\bil4i3n_worldrank.lua")

function SendRankData(handle)
	-- local bilRankValue = bilWorldRank:GetWorldRank()
	local nResultHandle = OB_Create() 
	OB_PushInt(nResultHandle, 10268) 
	OB_PushInt(nResultHandle, 0) 
	-- OB_PushString(nResultHandle,"\t\tThø h¹ng giang hå: \n\n\t\t\t\t\tTªn : "..GetName().." \n\n\t\t\t\t\tH¹ng: "..bilRankValue.."\n"
		-- .."\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
	OB_PushString(nResultHandle, "N/A")
	SendScriptData(2, nResultHandle) 
	OB_Release(nResultHandle) 
end
