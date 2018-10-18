--ÖÐÔ­ÄÏÇø ÏåÑô¸® æÎ¿Í2¶Ô»°
Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")

function main(sel)
		local nNpcIndex = GetLastDiagNpc();
		local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
		local szNpcName = GetNpcName(nNpcIndex)
		if NpcName2Replace then
			szNpcName = NpcName2Replace(szNpcName)
		end
		local tbDailog = DailogClass:new(szNpcName)
		tbDailog.szTitleMsg = "<npc>Tíi n¬i nµy t×m vui vÎ ®Òu lµ quan hoÆc d©n lµm ¨n, d©n chóng b×nh th­êng ngay c¶ c¬m còng ¨n kh«ng ®ñ no, ®©u cßn cã tiÒn d­ tíi n¬i nµy ch¬i ?"
		G_TASK:OnMessage("Thóy Yªn", tbDailog, "DialogWithNpc")
		tbDailog:Show() 
end;


