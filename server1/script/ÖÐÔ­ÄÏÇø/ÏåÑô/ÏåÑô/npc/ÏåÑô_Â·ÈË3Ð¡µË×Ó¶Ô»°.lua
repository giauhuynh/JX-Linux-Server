--ÖÐÔ­ÄÏÇø ÏåÑô¸® ¢·ÈË3Ð¡µË×Ó¶Ô»°


Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\answer.lua")

function main()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end

	local tbDailog = DailogClass:new(szNpcName)
	tbDailog.szTitleMsg = "<#><npc>TiÓu §Æng Tö:Ta ®· ¨n råi mét lÔ b¸i ®Ých hång thù hi c¬m , nÕu nh­ cã thÓ ¨n mét b÷a ®¹i mÔ c¬m , kh«ng biÕt ®­îc cã mÊy h¶o."
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)
	--µ¯³ö¶Ô»°¿ò
	tbDailog:Show()
end

