IncludeLib("TIMER")

TIMER_XINNIANLIHUA = 83	--计时器;在settings\timertask.txt申请
XINNIANLIHUA_TIMES = 5*60	--礼花燃放5分钟
XINNIAN_MAXEXP = 100000000
TB_XINNIANLIHUA_SKILL = {757, 760};

TSK_XINNIANLIHUA_MAXEXP = 1587;
TSK_XINNIANNIANGAO_MAXEXP = 1588;

function isTakeXinNianItem(nItemIdx)
	if (GetLevel() < 80) then
		Say("B筺 ph秈 sau c蕄 80 m韎 c� th� s� d鬾g!", 0);
		return 0;
	end;
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	
	if (nDate > 20070306) then
		Say(GetItemName(nItemIdx).."Х qu� h筺 s� d鬾g, n誹 ti誴 t鬰 s� d鬾g s� g﹜ h筰, c莕 ph秈 v鴗 b�!", 0);
		RemoveItemByIndex(nItemIdx);
		return 0;
	end;
	return 1;
end;

