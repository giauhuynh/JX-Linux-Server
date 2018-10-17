-- ====================== ÎÄ¼şĞÅÏ¢ ======================

-- ½£ÏÀÇéÔµÍøÂç°æÒ» 150¼¶´ó³ËÃØ¼®
-- ÓÒ¼üµã»÷Ê¹ÓÃ£¬¿ÉÌáÉı150¼¶ÊìÁ·¶È¼¼ÄÜµ½20¼¶¡£

-- Edited by ×Ó·Çô~
-- 2010/06/29 15:21

-- ======================================================


Include("\\script\\task\\system\\task_string.lua")

function main(nItemIdx)
	local n_fac = GetLastFactionNumber();
	if (n_fac < 0) then
		Talk(1, "", "C¸c h¹ vÉn ch­a gia nhËp m«n ph¸i, kh«ng thÓ sö dông vËt phÈm nµy!");
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
			tinsert(tb_Desc, format("N©ng cÊp ".." %s/#upgrade_skilllevel(%d)", GetSkillName(tb_90skill[n_fac][i]), tb_90skill[n_fac][i]));
		end
	end
	
	if (getn(tb_Desc) == 0) then
		Talk(1, "", "Kü n¨ng ®¹t ®Õn cÊp cao nhÊt hoÆc vÉn ch­a häc.");
		return 1;
	end
	
	tinsert(tb_Desc, 1, "Chän kü n¨ng cÇn n©ng cÊp:");
	tinsert(tb_Desc, "KÕt thóc ®èi tho¹i/OnCancel");
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
















