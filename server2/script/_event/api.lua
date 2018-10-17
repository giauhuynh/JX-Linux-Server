Include("\\script\\_event\\npc.lua")

function EVENT_API_NPC(nEventID, nNpcID)
	return _EVENT:Npc_OnSay(nEventID, nNpcID)
end



































