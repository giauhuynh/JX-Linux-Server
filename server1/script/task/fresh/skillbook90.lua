Include("\\script\\task\\system\\task_string.lua")
function main(nItemIdx)
 dofile("script/task/fresh/skillbook90.lua")
	local kiemtra_monphai = GetLastFactionNumber();
	if (kiemtra_monphai < 0) then
		Talk(1, "", "H×nh nh­ quyÓn s¸ch nµy miªu t¶ vâ c«ng cao cÊp cña c¸c ®¹i m«n ph¸i, ng­¬i kh«ng thÓ hiÓu sù huyÒn c¬ cña nã.");
		return 1;
	end
	local nLevel = GetLevel()
	if nLevel < 80 then
		Talk(1, "", "H×nh nh­ quyÓn s¸ch nµy miªu t¶ vâ c«ng cao cÊp , ng­¬i kh«ng thÓ hiÓu sù huyÒn c¬ cña nã.");
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
			tinsert(tb_Desc, format("Häc kü n¨ng ".."%s/#learn_skilllevel(%d)", GetSkillName(LISTKILL90[kiemtra_monphai][i]), LISTKILL90[kiemtra_monphai][i]));
		end
	end
	
	if (getn(tb_Desc) == 0) then
		Talk(1, "", "B¹n ®· cã tÊt c¶ c¸c kü n¨ng 90 råi.");
		return 1;
	end
	
	tinsert(tb_Desc, 1, "Chän kü n¨ng cÇn häc:");
	tinsert(tb_Desc, "KÕt thóc ®èi tho¹i/OnCancel");
	CreateTaskSay(tb_Desc);
	return 1;
end

function learn_skilllevel(skillid90)
	if (HaveMagic(skillid90) == -1) then
		if (ConsumeItem(3, 1, 6, 1, 2426, -1) == 1) then
		AddMagic(skillid90, 1);
		Msg2Player(format("Häc kü n¨ng <color=yellow>%s<color> thµnh c«ng.", GetSkillName(skillid90)));
		WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d", 
				"§¹i Thµnh BÝ KÝp 90", 
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