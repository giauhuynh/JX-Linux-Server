-- ====================== 文件信息 ======================

-- 剑侠情缘网络版一 150级大乘秘籍
-- 右键点击使用，可提升150级熟练度技能到20级。

-- Edited by 子非魚
-- 2010/06/29 15:21

-- ======================================================


Include("\\script\\task\\system\\task_string.lua")

function main(nItemIdx)
	local n_fac = GetLastFactionNumber();
	if (n_fac < 0) then
		Talk(1, "", "C竎 h� v蒼 ch璦 gia nh藀 m玭 ph竔, kh玭g th� s� d鬾g v藅 ph萴 n祔!");
		return 1;
	end
	
	local tb_90skill = {
		[0] = {1220},
		[1] = {1221},
		[2] = {1223},
		[3] = {1222},
		[4] = {1224},
		[5] = {1225},
		[6] = {1227},
		[7] = {1226},
		[8] = {1228},
		[9] = {1229},
	};
	
	local tb_Desc = {};
	for i = 1, getn(tb_90skill[n_fac]) do
		local skill = HaveMagic(tb_90skill[n_fac][i]);
		if (skill ~= -1 and skill ~= 20) then
			tinsert(tb_Desc, format("N﹏g c蕄 ".." %s/#upgrade_skilllevel(%d)", GetSkillName(tb_90skill[n_fac][i]), tb_90skill[n_fac][i]));
		end
	end
	
	if (getn(tb_Desc) == 0) then
		Talk(1, "", "K� n╪g t n c蕄 cao nh蕋 ho芻 v蒼 ch璦 h鋍.");
		return 1;
	end
	
	tinsert(tb_Desc, 1, "Ch鋘 k� n╪g c莕 n﹏g c蕄:");
	tinsert(tb_Desc, "K誸 th骳 i tho筰/OnCancel");
	CreateTaskSay(tb_Desc);
	return 1;
end

function upgrade_skilllevel(n_skillid)
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 20) then
		return	
	end
	
	if (ConsumeItem(3, 1, 6, 1, 4295, -1) == 1) then
		AddMagic(n_skillid, 20);
	end
end


function OnCancel()
end
















