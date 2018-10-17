Include("\\script\\task\\system\\task_string.lua")
function main(nItemIdx)
 dofile("script/task/fresh/skillbook90.lua")
	local kiemtra_monphai = GetLastFactionNumber();
	if (kiemtra_monphai < 0) then
		Talk(1, "", "H�nh nh� quy�n s�ch n�y mi�u t� v� c�ng cao c�p c�a c�c ��i m�n ph�i, ng��i kh�ng th� hi�u s� huy�n c� c�a n�.");
		return 1;
	end
	local nLevel = GetLevel()
	if nLevel < 80 then
		Talk(1, "", "H�nh nh� quy�n s�ch n�y mi�u t� v� c�ng cao c�p , ng��i kh�ng th� hi�u s� huy�n c� c�a n�.");
		return 1;
	end
	local LISTKILL90 = {
		[0] = {318, 319, 321},
		[1] = {322, 325, 323},
		[2] = {339, 302, 342},
		[3] = {353, 355},
		[4] = {380, 328},
		[5] = {336, 337},
		[6] = {357, 359},
		[7] = {361, 362},
		[8] = {365, 368},
		[9] = {372, 375},
		--[10]={1364,1382},
	};
	
	local tb_Desc = {};
	for i = 1, getn(LISTKILL90[kiemtra_monphai]) do
		local skill = HaveMagic(LISTKILL90[kiemtra_monphai][i]);
		if (skill == -1 ) then
			tinsert(tb_Desc, format("H�c k� n�ng ".."%s/#learn_skilllevel(%d)", GetSkillName(LISTKILL90[kiemtra_monphai][i]), LISTKILL90[kiemtra_monphai][i]));
		end
	end
	
	if (getn(tb_Desc) == 0) then
		Talk(1, "", "B�n �� c� t�t c� c�c k� n�ng 90 r�i.");
		return 1;
	end
	
	tinsert(tb_Desc, 1, "Ch�n k� n�ng c�n h�c:");
	tinsert(tb_Desc, "K�t th�c ��i tho�i/OnCancel");
	CreateTaskSay(tb_Desc);
	return 1;
end

function learn_skilllevel(skillid90)
	if (HaveMagic(skillid90) == -1) then
		if (ConsumeItem(3, 1, 6, 1, 2426, -1) == 1) then
		AddMagic(skillid90, 1);
		Msg2Player(format("H�c k� n�ng <color=yellow>%s<color> th�nh c�ng.", GetSkillName(skillid90)));
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d", 
				"��i Th�nh B� K�p 90", 
				GetLocalDate("%Y-%m-%d %X"),
				GetAccount(),
				GetName(),
				skillid90	));
		end
	else
		return
	end
end

function OnCancel()
end